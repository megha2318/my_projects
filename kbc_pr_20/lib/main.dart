import 'package:flutter/material.dart';
import 'package:kbc_pr_20/screens/next_page.dart';
import 'package:kbc_pr_20/screens/last_page.dart';
import 'package:kbc_pr_20/screens/wrong.dart';
import 'screens/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context)=> const HomePage(),
        "next_page": (context)=> const NextPage(),
        "wrong": (context)=> const WrongOptionPage(),
        "last_page": (context)=> const LastPage(),
      },
    ),
  );
}
