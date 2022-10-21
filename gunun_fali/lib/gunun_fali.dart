import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'language.dart';

class GununFali extends StatefulWidget {
  const GununFali({super.key});

  @override
  State<GununFali> createState() => _GununFaliState();
}

class _GununFaliState extends State<GununFali> {
  int yanitIndex = yanitDefaultValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: _appBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _image(),
            _askDurumu(),
            _paraDurumu(),
            _gunlukTavsiye(),
            _addForText(),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.purple,
      centerTitle: true,
      title: Text(
        TextItemsLanguage().gununFali,
        style: GoogleFonts.indieFlower(fontSize: 39),
      ),
    );
  }

  Container _addForText() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        height: 150,
        width: double.infinity,
        child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
            child: Text(yanitlar[yanitIndex],
                style: const TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center)));
  }

  Card _gunlukTavsiye() {
    return Card(
      color: Colors.pink,
      margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 50.0),
      child: ListTile(
        leading: const Icon(Icons.explore, color: Colors.white),
        title: Text(
          TextItemsLanguage().gunlukTavsiye,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        onTap: () {
          setState(() {
            yanitIndex = Random().nextInt(5) + 11;
          });
        },
      ),
    );
  }

  Card _paraDurumu() {
    return Card(
      color: Colors.amber,
      margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 50.0),
      child: ListTile(
        leading: const Icon(Icons.shopping_cart, color: Colors.green),
        title: Text(
          TextItemsLanguage().paraDurumu,
          style: const TextStyle(
            color: Colors.green,
          ),
        ),
        onTap: () {
          setState(
            () {
              yanitIndex = Random().nextInt(5) + 6;
            },
          );
        },
      ),
    );
  }

  Card _askDurumu() {
    return Card(
      color: Colors.pink[100],
      margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 50.0),
      child: ListTile(
        leading: const Icon(Icons.favorite, color: Colors.redAccent),
        title: Text(
          TextItemsLanguage().askDurumu,
          style: const TextStyle(
            color: Colors.redAccent,
          ),
        ),
        onTap: () {
          setState(() {
            yanitIndex = Random().nextInt(5) + 1;
          });
        },
      ),
    );
  }

  Container _image() {
    return Container(
        width: 150,
        margin: const EdgeInsets.only(bottom: 20),
        child: Image.asset(ImagesItems().falciPng));
  }
}
