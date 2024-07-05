/*
 * genlocaledata.js - automatically find modules and update code that
 * uses those modules to have the right require() statements at the
 * top of them
 *
 * Copyright © 2024 JEDLSoft
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

var fs = require('fs');
var path = require('path');
var Locale = require("ilib-locale");
var uglifyjs = require('uglify-js');

var defaultlocales = ["af-ZA","am-ET","ar-AE","ar-EG","ar-IQ","ar-MA","ar-SA",
                    "as-IN","az-Latn-AZ","bg-BG","bn-IN","bs-Latn-BA","bs-Latn-ME","cs-CZ","da-DK",
                    "de-AT","de-CH","de-DE","de-LU","el-CY","el-GR","en-AM","en-AU","en-AZ","en-CA",
                    "en-CN","en-GB","en-GE","en-GH","en-HK","en-IE","en-IN","en-IS","en-JP","en-KE",
                    "en-LK","en-MM","en-MW","en-MX","en-MY","en-NG","en-NZ","en-PH","en-PK","en-PR",
                    "en-SG","en-TW","en-UG","en-US","en-ZA","en-ZM","es-AR","es-BO","es-CA","es-CL",
                    "es-CO","es-DO","es-EC","es-ES","es-GT","es-HN","es-MX","es-NI","es-PA","es-PE",
                    "es-PR","es-PY","es-SV","es-US","es-UY","es-VE","et-EE","fa-IR","fi-FI","fr-BE",
                    "fr-CA","fr-CH","fr-FR","fr-LU","ga-IE","gu-IN","ha-Latn-NG","he-IL","hi-IN","hr-HR",
                    "hr-ME","hu-HU","id-ID","is-IS","it-CH","it-IT","ja-JP","ka-GE","kk-Cyrl-KZ","km-KH",
                    "kn-IN","ko-KR","ko-US","ku-Arab-IQ","lt-LT","lv-LV","mk-MK","ml-IN","mn-Cyrl-MN","mr-IN",
                    "ms-MY","ms-SG","nb-NO","nl-BE","nl-NL","or-IN","pa-IN","pl-PL","pt-AO","pt-BR","pt-GQ",
                    "pt-CV","pt-PT","ro-RO","ru-BY","ru-GE","ru-KG","ru-KZ","ru-RU","ru-UA","si-LK","sk-SK",
                    "sl-SI","sq-AL","sq-ME","sr-Latn-ME","sr-Latn-RS","sv-FI","sv-SE","sw-KE","ta-IN","te-IN",
                    "th-TH","tr-AM","tr-AZ","tr-CY","tr-TR","uk-UA","ur-IN","uz-Latn-UZ","vi-VN","zh-Hans-CN",
                    "zh-Hant-HK","zh-Hant-TW"];

function usage() {
    console.log(
        "Usage: genlocaledata.js [-i ilibPath] [-l locales] [-o outDir] \n" +
        "Generate the ilib locale data js files.\n\n" +
        "-h or --help\n" +
        "  this help\n" +
        "-i or --ilibPath\n" +
        "  Location where ilib is installed. (Default: '.') \n" +
        "-l or --locales\n" +
        "  Restrict operation to only the given locales. Locales should be given as \n" +
        "  a comma-separated list of BCP-47 locale specs. By default it will operate\n"+
        "  with all locales that the webOS Platform needs to support.\n" +
        "-o or --outDir\n" +
        "  Directory to place the [language].js. (Default: './tmp')\n" +
        "--minify\n" +
        "  Minify the generated js files. (Default: 'false')");
    process.exit(1);
}

process.argv.forEach(function (val, index, array) {
    if (val === "-h" || val === "--help") {
        usage();
    }
});

if (process.argv.length < 2) {
    console.error('Error: not enough arguments');
    usage();
}
var ilibPath = ".";
var outDir = "./tmp";
var locales
var isMinify = false;
var argv = process.argv;
for(var i=0; i < argv.length;i++){
    var val = argv[i];
    if (val === "-h" || val === "--help") {
        settings.help = true;
    } else if (val === "-l" || val === "--locales") {
        if (i < argv.length && argv[i+1]) {
            locales = argv[++i].split(",");
        }
    } else if (val === "-i" || val === "--ilibPath") {
        ilibPath = argv[++i];
    } else if (val === "-o" || val === "--outDir") {
        outDir = argv[++i];
    } else if (val === "--minify") {
        isMinify = true;
    } else {
        console.log("wrong options");
    }
}

var iliblocalePath = path.join(ilibPath, "js/data/locale");
var ilibincPath = path.join(ilibPath, "js/lib/ilib-standard-flutter-inc.js");
var localeList = locales ? locales : defaultlocales;

console.log("genlocaledata - generate locale data file.\n" +
    "Copyright (c) 2024 JEDLSoft");

var dataMap = {
    "PhoneFmt.js": ["phonefmt"],
    "DateRngFmt.js": ["dateformats", "sysres"],
    "ListFmt.js": ["list"],
    "LocaleMatcher.js": ["localematch"],
    "PhoneLocale.js": ["phoneloc"],
    "AddressFmt.js": ["address", "addressres", "regionnames"],
    "PhoneGeoLocator.js": ["iddarea", "area", "extarea", "extstates", "phoneres"],
    "NumberingPlan.js": ["numplan"],
    "Name.js": ["name"],
    "Currency.js": ["currency"],
    "DateFmt.js": ["dateformats", "sysres"],
    "TimeZone.js": ["localeinfo"], // except zoneinfo
    "LocaleInfo.js": ["localeinfo"],
    "Address.js":["address", "countries", "nativecountries", "ctrynames"],
    "NameFmt.js": ["name"],
    "NumFmt.js.js": ["localeinfo", "currency"],
    "ResBundle.js": ["pseudomap"],
    "Country.js": ["ctryreverse"],
    "PhoneNumber.js": ["states", "idd", "mnc"],
    "IString.js": ["plurals"],
    "DurationFmt.js": ["dateformats, sysres"],
    "UnitFmt.js":["unitfmt"],
    "AlphabeticIndex.js": ["nfc", "nfkd"]
}

var jsFileList = [];

try {
 const info = fs.readFileSync(ilibincPath, 'utf8')
 const lines = info.split('\n')
 lines.forEach(line => {
    if (line.indexOf('.js') != -1 && line.indexOf('ilib-standard-flutter.js') == -1){
        jsFileList.push(line);
    }
 })
} catch (err) {
 console.error(err)
}
var datalist = [];
jsFileList.forEach(function(val){
    if (dataMap[val] !== undefined) {
        datalist = datalist.concat(dataMap[val])
    }
});
var jsonList = [... new Set(datalist)];

function readJsonFile(datapath, name) {
    var fullFilePath = path.join(datapath, name + ".json");
    var readData;
    if (fs.existsSync(fullFilePath)) {
        readData = fs.readFileSync(fullFilePath, 'utf-8');
        return readData;
    }
    return;
}

var outFile = {};
localeList.forEach(function(loc){
    var lo = new Locale(loc);
    var lang = lo.language;
    var script = lo.script;
    var region = lo.region;
    var jsonPath;
    var data;
    jsonList.forEach(function(jsonfile){
        if (outFile[lang] == undefined) {
            outFile[lang] = {};
        }
        
        if (lang) {
            jsonPath = path.join(iliblocalePath, lang);
            data = readJsonFile(jsonPath, jsonfile);
            if (data) outFile[lang]["ilib.data." + jsonfile + "_" + lang] = data;
           
            if (script) {
                jsonPath = path.join(iliblocalePath, lang, script);
                data = readJsonFile(jsonPath, jsonfile);
                if (data) outFile[lang]["ilib.data." + jsonfile + "_" + lang + "_" + script] = data;

                if (region) {
                    jsonPath = path.join(iliblocalePath, lang, script, region);
                    data = readJsonFile(jsonPath, jsonfile);
                    if (data) outFile[lang]["ilib.data." + jsonfile + "_" + lang + "_" + script + "_" + region] = data;
                }
            } else if (region){
                jsonPath = path.join(iliblocalePath, lang, region);
                data = readJsonFile(jsonPath, jsonfile);
                if (data) outFile[lang]["ilib.data." + jsonfile + "_" + lang + "_" + region] = data;

                jsonPath = path.join(iliblocalePath, "und", region);
                data = readJsonFile(jsonPath, jsonfile);
                if (data) outFile[lang]["ilib.data." + jsonfile + "_und_" + region] = data;
            }
        } else {
            console.log("The locale is missing languae code.")
        }
    });
})

for (var loc in outFile) {
    var contents = "";
    for(var keys in outFile[loc]){
        contents += keys + " = " + outFile[loc][keys] + "\n";
    }
    if (!fs.existsSync(outDir)){
        fs.mkdirSync(outDir);
    }
    console.log("writing " + outDir + "/"+ loc + ".js file.");
    var resultFilePath = path.join(outDir, loc + ".js");
    if (isMinify) {
        fs.writeFileSync(resultFilePath, uglifyjs.minify(contents).code, "utf-8");
    } else {
        fs.writeFileSync(resultFilePath, contents, "utf-8");
    }
}
console.log("done");