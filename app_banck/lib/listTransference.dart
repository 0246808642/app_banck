import 'package:app_banck/itemTransference.dart';
import 'package:app_banck/transference.dart';
import 'package:flutter/material.dart';

class listTransference extends StatelessWidget {
  const listTransference({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 44, 14, 97),
        title: Text(
          "Transference",
          style: TextStyle(color: const Color.fromARGB(242, 255, 255, 255)),
        ),
      ),
      body: Column(
        children: [
          itemTransference(Transference(100,1000)),
          itemTransference(Transference(500,5000)),
          itemTransference(Transference(900,8000)),
        ],
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_card),
      ),
    );
  }
}
