import 'package:app_banck/TransferenceService/FormTransference.dart';
import 'package:app_banck/TransferenceService/ListTransference.dart';
import 'package:flutter/material.dart';

void main() => runApp(Banck());

class Banck extends StatelessWidget {
  const Banck({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      primaryColor: const Color.fromARGB(240, 133, 97, 233),
      ),
      home:  ListTransference(), 
    );
  }
}
