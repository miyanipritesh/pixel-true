import 'package:flutter/material.dart';

import '../../Service/FirebaseAuthHelper.dart';

class CnageAddress extends StatefulWidget {
  const CnageAddress({Key? key}) : super(key: key);

  @override
  State<CnageAddress> createState() => _CnageAddressState();
}

class _CnageAddressState extends State<CnageAddress> {
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController zipcontroller = TextEditingController();
  TextEditingController citycontroller = TextEditingController();
  TextEditingController statecontroller = TextEditingController();
  TextEditingController citydcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'ADD ADDRESS',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.green, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: TextFormField(
            controller: addresscontroller,
            decoration: InputDecoration(
              hintText: 'Address',
              focusColor: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: TextFormField(
            controller: citydcontroller,
            decoration: InputDecoration(
              hintText: 'City',
              focusColor: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: TextFormField(
            controller: statecontroller,
            decoration: InputDecoration(
              hintText: 'State',
              focusColor: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: TextFormField(
            controller: zipcontroller,
            decoration: InputDecoration(
              hintText: 'Zip Code',
              focusColor: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green)),
            child: Text(
              'Add Address',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              bool ischeck;
              FirebaseAuthHelper().addAddresstofirebase(
                addresscontroller.text,
                citydcontroller.text,
                statecontroller.text,
                zipcontroller.text,
                ischeck = false,
              );
              Navigator.pop(context);
            },
          ),
        ),
      ],
    ));
  }
}
