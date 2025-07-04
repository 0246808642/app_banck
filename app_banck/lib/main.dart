import 'package:app_banck/formTransference.dart';
import 'package:app_banck/listTransference.dart';
import 'package:flutter/material.dart';

void main() => runApp(Banck());

class Banck extends StatelessWidget {
  const Banck({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    home: Scaffold(
      backgroundColor: const Color.fromARGB(240, 133, 97, 233),
      body: formTransference(),
     
     
    ),
  );
  }
}
