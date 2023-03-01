// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:fingerprintjs/fingerprintjs.dart';
import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:js' as js;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    getBrowserId();
    return const MaterialApp(
      home: Scaffold(),
    );
  }
}

void getBrowserId() async {
  String fingerprint = await Fingerprint.getHash();
  print('fingerprint: $fingerprint');
}
