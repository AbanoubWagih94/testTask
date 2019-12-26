import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:provider/provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../models/youtube_data.dart';
import '../localizations.dart';
import '../LocaleHelper.dart';
import '../widgets/youtube_list_tile.dart';

class YouTubescreen extends StatefulWidget {
  @override
  _YouTubescreenState createState() => _YouTubescreenState();
}

class _YouTubescreenState extends State<YouTubescreen> {
  

  final List<String> _ids = [
    'saYVbgdn3VU',
    'oZxJNBfHAr8',
    'NbxoNMmifR4&',
    '_38iAr7mDso',
  ];  

  @override
  Widget build(BuildContext context) {    
  final List<String> _titles = [
    AppLocalizations.of(context).testTask,
    AppLocalizations.of(context).testTask1,
    AppLocalizations.of(context).testTask2,
    AppLocalizations.of(context).testTask3,
  ];
    return Scaffold(
      appBar: new AppBar(
        title: new Text(AppLocalizations.of(context).title),
        actions: <Widget>[
          new FlatButton(
            child: new Text("English"),
            color: AppLocalizations.of(context).locale == "en"
                ? Colors.grey
                : Colors.blue,
            onPressed: () {
              this.setState(() {
                helper.onLocaleChanged(new Locale("en"));
              });
            },
          ),
          new FlatButton(
            child: Text("عربى"),
            color: AppLocalizations.of(context).locale == "ar"
                ? Colors.grey
                : Colors.blue,
            onPressed: () {
              this.setState(() {
                helper.onLocaleChanged(new Locale("ar"));
              });
            },
          )
        ],
      ),
      body: Container(
          child: RefreshIndicator(
        child: ListView.builder(
          itemCount: _ids.length,
          physics: const AlwaysScrollableScrollPhysics(),
          itemBuilder: (context, i) {
            return YoutubeListtile(
              title: _titles[i],
              id: _ids[i],
            );
          }
        ),
        onRefresh: () {
          Provider.of<YoutubeData>(context).getYoutubeData();
        },
      )),
    );
  }
}
