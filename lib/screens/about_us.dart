
import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../utils/icon.dart';
import '../utils/strings.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      aboutUs,
                      style: const TextStyle(
                          color: black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),const Icon(icCart)
                  ],
                    // 56485691
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => RichText(
                    text: TextSpan(
                        text: '.',
                        style: const TextStyle(color: orange, fontSize: 50),
                        children: [
                          TextSpan(
                              text: lorem,
                              style: const TextStyle(color: black, fontSize: 17)),
                        ]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
