import 'package:flutter/material.dart';

class formTransference extends StatelessWidget {
  const formTransference({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 44, 14, 97),
        title: Text("Transfer Form", style:TextStyle(color: const Color.fromARGB(242, 255, 255, 255)),),
        
      ),
      body: Text("Teste"),
    );
  }
}
