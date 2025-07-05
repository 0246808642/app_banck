import 'package:app_banck/TransferenceService/FormTransference.dart';
import 'package:app_banck/TransferenceService/ItemTransference.dart';
import 'package:app_banck/transference.dart';
import 'package:flutter/material.dart';

class ListTransference extends StatefulWidget {
  ListTransference({super.key});

  @override
  State<ListTransference> createState() => _ListTransferenceState();
}

class _ListTransferenceState extends State<ListTransference> {
  final List<Transference> _transference = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 44, 14, 97),
        title: Text(
          "Transference",
          style: TextStyle(color: const Color.fromARGB(242, 255, 255, 255)),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, indice) {
          final transference = _transference[indice];
          return ItemTransference(transference);
        },
        itemCount: _transference.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future<Transference?> future = Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FormTransference()),
          );
          future.then((transferReceived) {
            debugPrint("$transferReceived");
            if (transferReceived != null) {
              setState(() {
                _transference.add(transferReceived);
              });
            }
          });
        },
        child: Icon(Icons.add_card),
      ),
    );
  }
}
