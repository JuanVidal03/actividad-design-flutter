// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

Widget ImageText(String imageUrl, String text , String subtitle) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.network(
        imageUrl,
        height: 200,
      ),
      const SizedBox(height: 10),
      Text(
        text,
        style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold ),
      ),
      Text(
        subtitle,
        style: const TextStyle(fontSize: 20),
      ),
    ],
  );
}