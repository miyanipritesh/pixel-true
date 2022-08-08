import 'package:flutter/material.dart';
import 'package:html/dom.dart' as dom;
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var logo;
  Future getData() async {
    final responce = await http.get(Uri.parse(
        'https://www.bot.or.th/Thai/ConsumerInfo/Fraud/Pages/BOTLicensedLoan.aspx'));

    dom.Document html = dom.Document.html(responce.body);

    final logo1 = html
        .getElementsByClassName(
            'bg-gray grpctl73_g_029ae_0 grpctl73_g_029ae_0 grpctl73_g_029ae_0')
        .map((e) {
      print(
          '+++++++++++++${e.getElementsByTagName('img')[0].attributes['src']}');
      return e.getElementsByTagName('img')[0].attributes['src'];
    }).toList();
    // logo.addAll(logo1);
    setState(() {});
    print('********logo2*********$logo1');
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print('*****************$logo');
    return Scaffold(
        //     body: ListView.builder(
        //   shrinkWrap: true,
        //   itemCount: 5,
        //   itemBuilder: (context, index) => Container(
        //       height: 100,
        //       width: 100,
        //       child: Image.network(
        //         logo[index],
        //         height: 40,
        //         width: 40,
        //       )),
        // )
        );
  }
}
