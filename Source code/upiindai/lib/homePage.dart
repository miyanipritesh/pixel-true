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
        'https://www.bot.or.th/Thai/ConsumerInfo/Fraud/Pages/BOTLicensedLoan.aspx'));

    dom.Document html = dom.Document.html(responce.body);

    final title = html
        .getElementsByClassName(
            'bg-gray grpctl73_g_e8579_0 grpctl73_g_e8579_0 grpctl73_g_e8579_0')
        .map((e) => e.getElementsByTagName('a')[0].attributes['href'])
        .toList();

    final logo = html
        .getElementsByClassName(
            'bg-gray grpctl73_g_e8579_0 grpctl73_g_e8579_0 grpctl73_g_e8579_0')
        .map((e) => e.getElementsByTagName('img')[0].attributes['src'])
        .toList();

    final text = html
        .getElementsByClassName(
            'bg-gray grpctl73_g_e8579_0 grpctl73_g_e8579_0 grpctl73_g_e8579_0')
        .map((e) {
      print('++++++++++++++++${e}');
      return e.getElementsByTagName('a')[0].attributes['href'];
    }).toList();

    print('*****************$title');

    print('*****************$logo');

    print('*****************$text');
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
