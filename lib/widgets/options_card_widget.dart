// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

Widget OptionsCardWidget(
    BuildContext context, String iconUrl, String cardText) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Container(
      width: MediaQuery.of(context).size.width * 0.44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: const Color(0xff598BED), width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset(
              iconUrl,
              height: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Text(
              cardText,
              style: const TextStyle(
                color: Color(0xff598BED),
                fontSize: 23,
                fontWeight: FontWeight.bold,
                fontFamily: 'Inter',
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
