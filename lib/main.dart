import 'package:flutter/material.dart';

import 'Whatsapp.dart';

void main() {
  runApp(const Whatsapp());
}

class Whatsapp extends StatelessWidget {
  const Whatsapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: Newpage(),
    );
  }
}

