import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:untitled/page/Home/Withdraw/withdrawRequestScreen.dart';

import '../../../constant.dart';
import '../../../screen/homeScreen.dart';

class WithDrawScreen extends StatefulWidget {
  const WithDrawScreen({Key? key}) : super(key: key);

  @override
  State<WithDrawScreen> createState() => _WithDrawScreenState();
}

class _WithDrawScreenState extends State<WithDrawScreen> {
  TextEditingController email = TextEditingController();
  bool emailisvalid = false;
  @override
  void initState() {
    email.addListener(() {
      setState(() {
        if (EmailValidator.validate(email.text)) {
          setState(() {
            emailisvalid = true;
          });
        } else {
          setState(() {
            emailisvalid = false;
          });
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: AppColors.GREY400,
                    )),
                const SizedBox(
                  width: 135,
                ),
                const Text(
                  'Withdraw',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: Appfont.SpaceGrotesk_medium,
                      fontWeight: FontWeight.w500,
                      color: AppColors.GREY700,
                      letterSpacing: -0.25),
                ),
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            const Divider(
              color: Color(0xFFE8E8E8),
              thickness: 2,
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Amount of withdrawal',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: Appfont.SpaceGrotesk_medium,
                    fontWeight: FontWeight.w500,
                    color: AppColors.GREY800,
                    letterSpacing: -0.25),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                '\$21.10',
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: Appfont.SpaceGrotesk,
                    fontWeight: FontWeight.w500,
                    color: AppColors.GREY800,
                    letterSpacing: 1),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Withdraw to',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: Appfont.SpaceGrotesk_medium,
                    fontWeight: FontWeight.w500,
                    color: AppColors.GREY800,
                    letterSpacing: -0.25),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 64,
                width: 345,
                decoration: BoxDecoration(
                    color: const Color(0xFFF0FDF8),
                    border: Border.all(color: AppColors.GREEN),
                    borderRadius: BorderRadius.circular(6)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: AppColors.WHITE,
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              height: 7.5,
                              width: 7.5,
                              decoration: BoxDecoration(
                                  color: AppColors.GREEN,
                                  borderRadius: BorderRadius.circular(7.5)),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            'Paypal',
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: Appfont.Mukta_medium,
                                fontWeight: FontWeight.w500,
                                color: AppColors.GREY900,
                                letterSpacing: -0.15),
                          ),
                        ],
                      ),
                      Image.asset('assest/ic_paypal.png')
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Your Paypal email address',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: Appfont.SpaceGrotesk_medium,
                    fontWeight: FontWeight.w500,
                    color: AppColors.GREY800,
                    letterSpacing: -0.25),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                  height: 43,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.GREY300,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextField(
                    controller: email,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                        hintText: 'olivia@email.com',
                        hintStyle: const TextStyle(
                            fontSize: 15,
                            fontFamily: Appfont.Mukta,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.15,
                            color: AppColors.GREY400),
                        fillColor: AppColors.GREY300.withOpacity(0.01),
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8))),
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.37,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 52,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.GREEN)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WithDrawRequest(),
                        ));
                  },
                  child: const Text(
                    'Withdraw \$21.09',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: Appfont.SpaceGrotesk_medium,
                        fontWeight: FontWeight.w500,
                        color: AppColors.DARK_BLUE800,
                        letterSpacing: -0.25),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 91,
        decoration: BoxDecoration(border: Border.all(color: AppColors.GREY300)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 2,
          currentIndex: index1,
          onTap: (index) {
            setState(() {
              index1 = index;
            });
          },
          backgroundColor: Colors.white,
          unselectedItemColor: AppColors.GREY400,
          selectedItemColor: AppColors.DARK_BLUE800,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assest/ic_icon1.png'),
                  size: 20,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assest/ic_icon2.png')),
                label: 'Referral'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assest/ic_icon3.png')),
                label: 'Devices'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assest/ic_icon4.png')),
                label: 'More'),
          ],
        ),
      ),
    );
  }
}
