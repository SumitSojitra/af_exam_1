import 'package:exam_1_af/views/screen/detailsPage.dart';
import 'package:exam_1_af/views/screen/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => HomePage(),
      'detail_page': (context) => DetailPage(),
    },
  ));
}
