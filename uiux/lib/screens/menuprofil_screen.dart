import 'package:flutter/material.dart';
import 'package:uiux/constant/utils.dart';
import 'package:uiux/screens/login_screen.dart';
import 'package:uiux/widgets/button_widgetsicon.dart';

class MenuProfil extends StatelessWidget {
  const MenuProfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 35),
      child: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  child: Image.asset('assets/images/Ellipse1.png'),
                ),
                const Text('Hi,Drowl'),
                const Text('+62123456789'),
                const Text('email@codehouse.id')
              ],
            ),
            const SizedBox(
              height: 36,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Account',
                    style: kRubikSemiBold14.copyWith(
                        color: const Color(0xff718493)),
                  ),
                  const CardMenu(
                    image: 'assets/images/account_setting.png',
                    text: 'Account Setting',
                    iconData: Icons.arrow_forward_ios,
                  ),
                  const CardMenu(
                    image: 'assets/images/history.png',
                    text: 'History',
                    iconData: Icons.arrow_forward_ios,
                  ),
                  const CardMenu(
                    image: 'assets/images/rate.png',
                    text: 'Rate This Apps',
                    iconData: Icons.arrow_forward_ios,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Text('Other Info',
                      style: kRubikSemiBold14.copyWith(
                          color: const Color(0xff718493))),
                  const SizedBox(
                    height: 8,
                  ),
                  const CardMenu2(
                    text: 'About this Apps',
                    iconData: Icons.arrow_forward_ios,
                  ),
                  const CardMenu2(
                    text: 'Privacy Policy',
                    iconData: Icons.arrow_forward_ios,
                  ),
                  const CardMenu2(
                    text: 'FAQ',
                    iconData: Icons.arrow_forward_ios,
                  ),
                  const CardMenu2(
                    text: 'Terms Of Service',
                    iconData: Icons.arrow_forward_ios,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ButtonWidget2(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      text: 'Log Out',
                      style: kRubikRegular14,
                      iconData: Icons.logout_rounded)
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class CardMenu extends StatelessWidget {
  const CardMenu({
    required this.image,
    required this.text,
    required this.iconData,
    Key? key,
  }) : super(key: key);

  final String image;
  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Image.asset(image),
            const SizedBox(
              width: 6,
            ),
            Text(
              text,
              style: kRubikLight14,
            ),
            const Spacer(),
            Icon(
              iconData,
              color: Colors.grey[300],
              size: 16,
            )
          ],
        ),
      ),
    );
  }
}

class CardMenu2 extends StatelessWidget {
  const CardMenu2({
    required this.text,
    required this.iconData,
    Key? key,
  }) : super(key: key);

  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Text(
              text,
              style: kRubikLight14,
            ),
            const Spacer(),
            Icon(
              iconData,
              color: Colors.grey[300],
              size: 16,
            )
          ],
        ),
      ),
    );
  }
}
