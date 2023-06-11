// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

Widget HeadingRow(String heading){
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(heading, style: const TextStyle(
          fontSize: 27,
          fontFamily: 'Lora',
          color: Colors.black,
        ),),
        const Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('View all ', style: TextStyle(
              fontSize: 16,
              fontFamily: 'Inter',
              color: Colors.grey,
            ),),
            Icon(Icons.arrow_forward_rounded, color: Colors.grey),
          ],
        ),
      ],
    ),
  );
}