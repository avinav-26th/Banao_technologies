// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

Widget MainCardWidget(
  BuildContext context,
  Color color,
  String imageUrl,
  String category,
  String title,
  String desc,
  Widget widget,
  bool isFit,
  bool setWidth,
) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: SizedBox(
      child: Column(
        children: [
          Container(
            height: 170,
            width: (setWidth)
                ? MediaQuery.of(context).size.width * 0.7
                : MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(17),
                topLeft: Radius.circular(17),
              ),
              color: color,
            ),
            child: Image.asset(
              imageUrl,
              fit: (isFit) ? BoxFit.fill : BoxFit.none,
            ),
          ),
          Container(
            width: (setWidth)
                ? MediaQuery.of(context).size.width * 0.69
                : MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(17),
                bottomRight: Radius.circular(17),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 1,
                  blurStyle: BlurStyle.outer,
                  offset: Offset(0, 3),
                ),
              ],
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Text(
                    category,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                      color: Color(0xff598BED),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 12,
                        top: 10,
                        bottom: 25,
                      ),
                      child: Text(
                        desc,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                    widget,
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
