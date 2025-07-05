import 'package:app_banck/TransferenceService/EditTransference.dart';
import 'package:app_banck/transference.dart';
import 'package:flutter/material.dart';

class FormTransference extends StatefulWidget {
  FormTransference({super.key});

  @override
  State<FormTransference> createState() => _FormTransferenceState();
}

class _FormTransferenceState extends State<FormTransference> {
  final TextEditingController _controllerNumberAccount =
      TextEditingController();

  final TextEditingController _controllerValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 199, 198, 198),
        ),
        backgroundColor: const Color.fromARGB(255, 44, 14, 97),
        title: const Text(
          "Transfer Form",
          style: TextStyle(color: const Color.fromARGB(242, 255, 255, 255)),
        ),
      ),
      body: Column(
        children: [
          EditTransference(
            controller: _controllerNumberAccount,
            tip: "0000",
            label: "Account Number",
          ),
          EditTransference(
            controller: _controllerValue,
            tip: "0.00",
            label: "Value",
            iconData: Icons.monetization_on,
          ),
          ElevatedButton(
            onPressed: () {
              _createTransference(context);
            },
            child: const Text("Confirmar"),
          ),
        ],
      ),
    );
  }

  void _createTransference(BuildContext context) {
    final int? account = int.tryParse(_controllerNumberAccount.text);
    final double? value = double.tryParse(
      _controllerValue.text.replaceAll(',', '.'),
    );

    if (account != null && value != null) {
      final transferenceCreated = Transference(value, account);
      debugPrint("$transferenceCreated");
      Navigator.pop(context, transferenceCreated);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('❌ Invalid account or amount.'),
          backgroundColor: Color.fromARGB(255, 214, 177, 174),
          behavior: SnackBarBehavior.floating,
          duration: Duration(seconds: 3),
        ),
      );
    }
  }
}
