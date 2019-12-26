import 'dart:collection';
import 'dart:convert';

import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'Youtube.dart';

class YoutubeData extends ChangeNotifier{
  List<Youtube> _data = [];

  UnmodifiableListView<Youtube> get data {
    return UnmodifiableListView(_data);
  }

  int get dataCount {
    return _data.length;
  }


  Future<Null> getYoutubeData() async {
     try {
       final http.Response response = await http.get('https://jsoneditoronline.org/?id=e04b8a20dace4b96a68801f4c72bfda9');
        var data = json.decode(response.body);  
         print('hi');
     } catch(e) {
       print (e);
     }
  }
}