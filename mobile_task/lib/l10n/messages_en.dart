import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

// ignore: unnecessary_new
final messages = new MessageLookup();

// ignore: unused_element
final _keepAnalysisHappy = Intl.defaultLocale;

// ignore: non_constant_identifier_names
typedef MessageIfAbsent(String message_str, List args);

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "locale" : MessageLookupByLibrary.simpleMessage("en"),
    "title" : MessageLookupByLibrary.simpleMessage("Test Task"),
    "testTask" : MessageLookupByLibrary.simpleMessage("Test Task"),
    "testTask1" : MessageLookupByLibrary.simpleMessage("Test Task 1"),
    "testTask2" : MessageLookupByLibrary.simpleMessage("Test Task 2"),
    "testTask3" : MessageLookupByLibrary.simpleMessage("Test Task 3"),
  };
}