import 'package:flutter/material.dart';

import 'gunun_fali.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Günün Falı',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: const GununFali(),
    );
  }
}
