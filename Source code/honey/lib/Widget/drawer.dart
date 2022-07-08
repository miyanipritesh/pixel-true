import 'package:flutter/material.dart';
import 'package:honey/Service/FirebaseAuthHelper.dart';
import 'package:honey/page/Drawer/profile.dart';

Widget CoustomDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Image.asset(
                    'assets/images/img_app_logo.png',
                    height: 30,
                    width: 30,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  'Honey',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Doo',
                  style: TextStyle(
                      color: Color(0xFF0B0B45), fontWeight: FontWeight.bold),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                'assets/images/ic_minus.png',
                height: 10,
                width: 30,
                color: const Color(0xFF0B0B45),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 100,
        ),
        const ListTile(
          contentPadding: EdgeInsets.only(left: 35),
          title: Text(
            'ABOUT US',
            style: TextStyle(fontSize: 15, color: Color(0xFF0B0B45)),
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ));
          },
          contentPadding: EdgeInsets.only(left: 35),
          title: Text(
            'PROFILE',
            style: TextStyle(fontSize: 15, color: Color(0xFF0B0B45)),
          ),
        ),
        const ListTile(
          contentPadding: EdgeInsets.only(left: 35),
          title: Text(
            'MY HOME',
            style: TextStyle(fontSize: 15, color: Color(0xFF0B0B45)),
          ),
        ),
        const ListTile(
          contentPadding: EdgeInsets.only(left: 35),
          title: Text(
            'MY PROS',
            style: TextStyle(fontSize: 15, color: Color(0xFF0B0B45)),
          ),
        ),
        const ListTile(
          contentPadding: EdgeInsets.only(left: 35),
          title: Text(
            'MY TIME',
            style: TextStyle(fontSize: 15, color: Color(0xFF0B0B45)),
          ),
        ),
        const ListTile(
          contentPadding: EdgeInsets.only(left: 35),
          title: Text(
            'PRIVACY POLICY',
            style: TextStyle(fontSize: 15, color: Color(0xFF0B0B45)),
          ),
        ),
        ListTile(
          onTap: () async {
            await FirebaseAuthHelper().signOut(context: context);
          },
          contentPadding: EdgeInsets.only(left: 35),
          title: Text(
            'LOG OUT',
            style: TextStyle(fontSize: 15, color: Color(0xFF0B0B45)),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: SizedBox(
            height: 50,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  )),
                ),
                child: const Text(
                  'CONTACT US',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                onPressed: () {}),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: SizedBox(
            height: 50,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  )),
                ),
                child: const Text(
                  'INVITE USER',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                onPressed: () {}),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Center(
          child: SizedBox(
            width: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/images/ic_linkedin.png',
                  height: 20,
                  width: 20,
                ),
                Image.asset(
                  'assets/images/ic_instagram.png',
                  height: 20,
                  width: 20,
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}
