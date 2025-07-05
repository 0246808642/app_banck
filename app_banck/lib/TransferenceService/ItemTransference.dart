import 'package:app_banck/transference.dart';
import 'package:flutter/material.dart';

class ItemTransference extends StatelessWidget {
  final Transference _transference;

  const ItemTransference(this._transference, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.attach_money_rounded),
        title: Text(_transference.value.toString()),
        subtitle: Text(_transference.accountNumber.toString()),
      ),
    );
  }
}
