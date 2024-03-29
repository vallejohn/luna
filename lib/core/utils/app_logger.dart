import 'package:logger/logger.dart';

class AppLogger extends Logger{
  final String className;
  AppLogger(this.className) : super(
      printer: CustomPrinter(className)
  );
}

class CustomPrinter extends PrettyPrinter{
  final String className;
  CustomPrinter(this.className) : super(
    noBoxingByDefault: true,
    stackTraceBeginIndex: 2,
    methodCount: 1
  );

  @override
  List<String> log(LogEvent event) {
    return super.log(
        LogEvent(event.level, '[$className] ${event.message}', event.error, event.stackTrace)
    );
  }
}