import 'package:flutter/cupertino.dart';
import 'package:texas_relief/apiCaller.dart';

class NewsView extends StatefulWidget {
  @override
  _NewsViewState createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  NewsAPI api;
  List<News> _newsinfo;
  @override
  void initState() {
    // TODO: implement initState
    api = new NewsAPI();
    super.initState();
    api.fetchnews().then((value) {
      _newsinfo = value;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return _newsinfo == null ? Text("loading") : Text("Hello");
  }
}
