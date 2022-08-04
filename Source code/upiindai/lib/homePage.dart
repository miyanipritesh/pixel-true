import 'package:flutter/material.dart';
import 'package:html/dom.dart' as dom;
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future getData() async {
    final responce = await http.get(Uri.parse(
        'https://www.cricketexchange.in/scoreboard/F95/13W/Final/EY/3Z/sgt-vs-bd-final-shpageeza-cricket-league-2022/live'));

    dom.Document html = dom.Document.html(responce.body);

    final title = html
        .getElementsByClassName('live-score-card')
        .map((e) =>
            e.children[0].children[0].children[1].children[1].children[0].text)
        .toList();

    // final logo = html
    //     .getElementsByClassName(
    //         'bg-gray grpctl73_g_e8579_0 grpctl73_g_e8579_0 grpctl73_g_e8579_0')
    //     .map((e) => e.getElementsByTagName('img')[0].attributes['src'])
    //     .toList();
    //
    // final text = html
    //     .getElementsByClassName(
    //         'bg-gray grpctl73_g_e8579_0 grpctl73_g_e8579_0 grpctl73_g_e8579_0')
    //     .map((e) {
    //   print(
    //       '++++++++++++++++${e.children[0].getElementsByTagName('img')[0].attributes['src']}');
    //   return e.getElementsByTagName('a')[0].attributes['href'];
    // }).toList();

    print('*****************$title');

    // print('*****************$logo');
    //
    // print('*****************$text');
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
