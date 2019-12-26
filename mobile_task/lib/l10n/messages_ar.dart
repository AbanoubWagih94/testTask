import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

// ignore: unnecessary_new
final messages = new MessageLookup();

// ignore: unused_element
final _keepAnalysisHappy = Intl.defaultLocale;

// ignore: non_constant_identifier_names
typedef MessageIfAbsent(String message_str, List args);

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'ar';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "locale" : MessageLookupByLibrary.simpleMessage("ar"),
    "title" : MessageLookupByLibrary.simpleMessage("مهمة اختبار"),
    "testTask" : MessageLookupByLibrary.simpleMessage("مهمة اختبار"),
    "testTask1" : MessageLookupByLibrary.simpleMessage("مهمة اختبار 1"),
    "testTask2" : MessageLookupByLibrary.simpleMessage("مهمة اختبار 2"),
    "testTask3" : MessageLookupByLibrary.simpleMessage("مهمة اختبار 3"),
  };
}