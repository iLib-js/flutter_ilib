/// Default tag used for logging when no specific tag is provided.
const String defaultTag = 'default';

/// Abstract interface for logging functionality.
///
/// This adapter allows logging at various levels (debug, info, warning, error),
/// and supports tagging and optional location tracking.
/// Implementations can customize how logs are handled (e.g., console, file, remote).
abstract class LogAdapter {
  /// Logs a debug-level message.
  ///
  /// [message] is the content to log.
  /// [tag] is an optional identifier for the log source (default: 'default').
  /// [loc] indicates whether to include location information (default: false).
  void debug(String message, {String tag = defaultTag, bool loc = false});

  /// Logs an informational message.
  ///
  /// [message] is the content to log.
  /// [tag] is an optional identifier for the log source (default: 'default').
  /// [loc] indicates whether to include location information (default: false).
  void info(String message, {String tag = defaultTag, bool loc = false});

  /// Logs a warning message.
  ///
  /// [message] is the content to log.
  /// [tag] is an optional identifier for the log source (default: 'default').
  /// [loc] indicates whether to include location information (default: false).
  void warn(String message, {String tag = defaultTag, bool loc = false});

  /// Logs an error message.
  ///
  /// [message] is the content to log.
  /// [tag] is an optional identifier for the log source (default: 'default').
  /// [loc] indicates whether to include location information (default: false).
  void error(String message, {String tag = defaultTag, bool loc = false});

}
