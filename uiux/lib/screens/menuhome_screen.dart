import 'package:flutter/material.dart';
import 'package:uiux/constant/utils.dart';

class MenuHome extends StatefulWidget {
  const MenuHome({Key? key}) : super(key: key);

  @override
  _MenuHomeState createState() => _MenuHomeState();
}

class _MenuHomeState extends State<MenuHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 35),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/Ellipse1.png'),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Hi,Drowl'),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Icon(Icons.notifications),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Welcome to',
                    style: kRubikSemiBold14.copyWith(
                        color: const Color(0xff718493)),
                  ),
                  Text('      Our PhotogrApps',
                      style: kRubikSemiBold14.copyWith(
                          color: const Color(0xff718493))),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Newest Photo',
                    style:
                        kRubikLight12.copyWith(color: const Color(0xff718493)),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
              Container(
                height: 200,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/Rectangle3.png'))),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/Ellipse2.png'),
                        radius: 15,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Derek Drymon',
                            style: kRubikLight12.copyWith(color: Colors.white),
                          ),
                          Text(
                            'Nature Photograper',
                            style: kRubikLight10.copyWith(
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                          )
                        ],
                      ),
                      const Spacer(),
                      Text(
                        '106',
                        style: kRubikLight12.copyWith(color: Colors.white),
                      ),
                      const Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 16,
                      )
                    ],
                  ),
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/Rectangle4.png'))),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/Ellipse3.png'),
                        radius: 15,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dave Simmon',
                            style: kRubikLight12.copyWith(color: Colors.white),
                          ),
                          Text(
                            'Freelancer',
                            style: kRubikLight10.copyWith(
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                          )
                        ],
                      ),
                      const Spacer(),
                      Text(
                        '88',
                        style: kRubikLight12.copyWith(color: Colors.white),
                      ),
                      const Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 16,
                      )
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
