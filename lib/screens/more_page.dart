// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:meal_monkey/screens/login.dart';
import 'package:meal_monkey/screens/profilepage.dart';

import '../utils/color.dart';
import '../utils/icon.dart';
import '../utils/strings.dart';
import 'about_us.dart';
import 'inbox.dart';
import 'my_order.dart';
import 'notification.dart';
import 'payment_details.dart';

class MorePage extends StatefulWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Text(
                      mores,
                      style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  Icon(
                    icCart,
                    color: black,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                itemCount: more.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Container(
                  height: 70,
                  width: 400,
                  color: white,
                  margin: const EdgeInsets.all(5),
                  child: ListTile(
                    onTap: () async {
                      if (index == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PaymentDetails(),
                          ),
                        );
                      }
                      if (index == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyOrderPage(),
                          ),
                        );
                      }
                      if (index == 2) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NotificationPage(),
                          ),
                        );
                      }
                      if (index == 3) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const InBoxPage(),
                            ));
                      }
                      if (index == 4) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AboutUsPage(),
                            ));
                      }
                      if (index == 5) {
                        await fbLogout();
                        await googleLogOut();
                        setState(() {});
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ));
                      }
                    },
                    leading: CircleAvatar(
                      backgroundColor: black,
                      child: Icon(
                        more[index]['circleAvatar'],
                        color: white,
                      ),
                    ),
                    title: Text(more[index]['title']),
                    trailing: const Icon(
                      icRightArrow,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List more = [
  {
    'circleAvatar': icPaid,
    'title': paymentDetails,
  },
  {
    'circleAvatar': icWork,
    'title': myOrder,
  },
  {
    'circleAvatar': icNotification,
    'title': notification,
  },
  {
    'circleAvatar': icMail,
    'title': inbox,
  },
  {
    'circleAvatar': icAbout,
    'title': aboutUs,
  },
  {
    'circleAvatar': icLOgOut,
    'title': logOut,
  }
];
