// ignore_for_file: use_key_in_widget_constructors, unused_import, prefer_const_constructors, deprecated_member_use

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_manegement/pages/counter.statful.page.dart';
import 'package:state_manegement/provider/state.provider.page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => counterState(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.teal),
        routes: {"/": (context) => CounterPage()},
      ),
    );
  }
}
