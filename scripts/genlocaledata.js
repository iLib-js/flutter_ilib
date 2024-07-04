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
var util = require('util');
var path = require('path');
var Locale = require("ilib-locale");

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
    console.log("Usage: genlocaledata [-h] [toDir]\n" +
        "Generate the character type data.\n\n" +
        "-h or --help\n" +
        "  this help\n" +
        "toDir\n" +
        "  directory to output the normalization json files. Default: current dir.");
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
var ilibPath = "../../js/data/locale";
var incPath = "./ilib-standard-flutter.js";
var outputDir = "./tmp";
var locales
var options = [];
var argv = process.argv;
for(var i=0; i < argv.length;i++){
    var val = argv[i];
    if (val === "-h" || val === "--help") {
        settings.help = true;
    } else if (val === "-l" || val === "--locales") {
        if (i < argv.length && argv[i+1]) {
            locales = argv[++i].split(",");
        }
    } else if (val === "-ilibPath") {
        ilibPath = argv[++i];
    } else if (val === "-incPath") {
        incPath = argv[++i];
    } else if (val === "-o" || val === "--output") {
        outputDir = argv[++i];
    } 
}

/*if (process.argv.length > 2) {
    locales = process.argv[2];
}*/
//localeDir = process.arg[2]
//locales = process.arg[3];
var localeArr = locales ? locales.split(",") : defaultlocales;

console.log("!!");

console.log("genlocaledata - generate locale data file.\n" +
    "Copyright (c) 2024 JEDLSoft");

// localelist. locale data directory. result
// file scan. data. set.
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
    "TimeZone.js": ["localeinfo", "zoneinfo"],
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

var filelist = [];
var datalist = [];
var jsonList = [];
try {
 const info = fs.readFileSync('./ilib-standard-flutter-inc.js', 'utf8')
 const lines = info.split('\n')
 lines.forEach(line => {
    if (line.indexOf('.js') != -1 && line.indexOf('ilib-standard-flutter.js') == -1){
        filelist.push(line);
    }
 })
} catch (err) {
 console.error(err)
}

filelist.forEach(function(val, index, arr){
    if (dataMap[val] !== undefined) {
        datalist = datalist.concat(dataMap[val])
    }
});
jsonList = [... new Set(datalist)];


var outFile = {};
var fileName;
var readData;

function readJsonFile(datapath, name) {
    name += ".json";
    var fullPath = path.join(datapath, name);
    if (fs.existsSync(fullPath)) {
        readData = fs.readFileSync(fullPath, 'utf-8');
        return readData;
    }
    return;
}

/* 
ilib.data.dateformats_en = {};
ilib.data.dateformats_en_US = {};
ilib.data.dateformats_und_US = {};
*/

localeArr.forEach(function(loc){
    var lo = new Locale(loc);
    var lan = lo.language;
    var script = lo.script;
    var region = lo.region;
    var jsonPath, scriptPath, regionPath;
    var data, key;
    jsonList.forEach(function(jsonfile){
        if (outFile[lan] == undefined) {
            outFile[lan] = {};
        }
        
        if (lan) {
            jsonPath = path.join(ilibPath, lan);
            data = readJsonFile(jsonPath, jsonfile);
            if (data) outFile[lan]["ilib.data." + jsonfile + "_" + lan] = data;
           
            if (script) {
                jsonPath = path.join(ilibPath, lan, script);
                data = readJsonFile(jsonPath, jsonfile);
                if (data) outFile[lan]["ilib.data." + jsonfile + "_" + lan + "_" + script] = data;

                if (region) {
                    jsonPath = path.join(ilibPath, lan, script, region);
                    data = readJsonFile(jsonPath, jsonfile);
                    if (data) outFile[lan]["ilib.data." + jsonfile + "_" + lan + "_" + script + "_" + region] = data;
                }
            } else if (region){
                jsonPath = path.join(ilibPath, lan, region);
                data = readJsonFile(jsonPath, jsonfile);
                if (data) outFile[lan]["ilib.data." + jsonfile + "_" + lan + "_" + region] = data;

                jsonPath = path.join(ilibPath, "und", region);
                data = readJsonFile(jsonPath, jsonfile);
                if (data) outFile[lan]["ilib.data." + jsonfile + "_und_" + region] = data;
            }
        }
    });
})

for (var loc in outFile) {
    var contents="";
    for(var keys in outFile[loc]){
        contents += keys + " = "+outFile[loc][keys]+"\n";
    }
    fs.writeFileSync(path.join("tmp", loc + ".js"), contents, "utf-8");
}

console.log("!!!!");
console.log("done");