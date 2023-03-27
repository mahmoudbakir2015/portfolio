import 'package:flutter/material.dart';
import 'package:portfolio/constant/colors.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        children: [
          buildContentInfo(
            title: 'Address :',
            text: 'kafr elshiekh 5th ma7let Elkassab.',
          ),
          buildContentInfo(
            title: 'Country :',
            text: 'Egypt.',
          ),
          buildContentInfo(
            title: 'E-mail :',
            text: ' mahmoudbakir2015@gmail.com.',
          ),
          buildContentInfo(
            title: 'Mobile :',
            text: ' 01017632363.',
          ),
          buildContentInfo(
            title: 'WebSite :',
            text: ' 5th ma7let Elkassab.',
          ),
        ],
      ),
    );
  }

  Padding buildContentInfo({
    required String title,
    required String text,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: kDefaultPadding / 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
