import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart' as main_logger;
import 'log_adapter.dart';

/// Default tag used for log messages when no specific tag is provided.
const String defaultTag = 'flutter_ilib';

/// A singleton implementation of [LogAdapter] using the `logging` package.
///
/// This logger forwards messages to the root logger and listens to log records.
/// It supports multiple log levels and optional tagging and location tracking.
///
/// Use [Logger()] to access the shared instance.
class Logger implements LogAdapter {
  /// Returns the singleton instance of [Logger].
  ///
  /// Ensures that only one instance is created and reused throughout the app.
  factory Logger() => _instance;

  /// Internal constructor used for singleton initialization.
  ///
  /// Sets up the root logger and attaches a listener to print log records.
  Logger._internal() {
    /// Sets up the root logger and attaches a listener to print log records.
    /// Log level is set to `WARNING` in test mode (`--dart-define=TEST_MODE=true`),
    /// `ALL` in debug mode (`kDebugMode`), and `INFO` otherwise.
    main_logger.Logger.root.level = const bool.fromEnvironment('TEST_MODE')
        ? main_logger.Level.WARNING
        : (kDebugMode ? main_logger.Level.ALL : main_logger.Level.INFO);

    main_logger.Logger.root.onRecord.listen((main_logger.LogRecord record) {
      // ignore: avoid_print
      print('${record.level.name}: ${record.time}: ${record.message}');
    });
  }

  /// Singleton instance of [Logger].
  static final Logger _instance = Logger._internal();

  /// Internal logger instance with the name 'MainLogger'.
  final main_logger.Logger _logger = main_logger.Logger('MainLogger');

  /// Formats the log message with tag and optional location.
  ///
  /// Returns a formatted string including the tag and, if enabled, the caller's location.
  String _formatMessage(String message, String tag, bool loc) {
    final String location = loc ? _getLocation() : '';
    return '[$tag] $message${location.isNotEmpty ? '\nLocation: $location' : ''}';
  }

  /// Extracts the caller location from the current stack trace.
  ///
  /// Returns a single line from the stack trace that indicates the caller's location.
  String _getLocation() {
    final List<String> trace = StackTrace.current.toString().split('\n');
    return trace.length > 2 ? trace[2].trim() : '';
  }

  /// Log a message at the debug level.
  /// Internally mapped to `Level.FINE` in the `logging` package.
  ///
  /// [message] The content to log.
  /// [tag] Optional log source ID (default: `'flutter_ilib'`). Reserved for future use.
  /// [loc] Whether to include caller location infor (default: `false`). Reserved for future use.
  @override
  void debug(String message, {String tag = defaultTag, bool loc = false}) {
    _logger.fine(_formatMessage(message, tag, loc));
  }

  /// Log a message at the info level.
  /// Internally mapped to `Level.INFO` in the `logging` package.
  ///
  /// [message] The content to log.
  /// [tag] Optional log source ID (default: `'flutter_ilib'`). Reserved for future use.
  /// [loc] Whether to include caller location infor (default: `false`). Reserved for future use.
  @override
  void info(String message, {String tag = defaultTag, bool loc = false}) {
    _logger.info(_formatMessage(message, tag, loc));
  }

  /// Log a message at the warn level.
  /// Internally mapped to `Level.WARNING` in the `logging` package.
  ///
  /// [message] The content to log.
  /// [tag] Optional log source ID (default: `'flutter_ilib'`). Reserved for future use.
  /// [loc] Whether to include caller location infor (default: `false`). Reserved for future use.
  @override
  void warn(String message, {String tag = defaultTag, bool loc = false}) {
    _logger.warning(_formatMessage(message, tag, loc));
  }

  /// Log a message at the error level.
  /// Internally mapped to `Level.SEVERE` in the `logging` package.
  ///
  /// [message] The content to log.
  /// [tag] Optional log source ID (default: `'flutter_ilib'`). Reserved for future use.
  /// [loc] Whether to include caller location infor (default: `false`). Reserved for future use.
  @override
  void error(String message, {String tag = defaultTag, bool loc = false}) {
    _logger.severe(_formatMessage(message, tag, loc));
  }
}
