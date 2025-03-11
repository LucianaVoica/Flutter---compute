import 'package:flutter/material.dart';

import '../../../common/operation_enum.dart';
import '../../../services/compute_service.dart';
import 'form_field.dart';

class CalculatorForm extends StatefulWidget {
  const CalculatorForm({super.key});

  @override
  CalculatorFormState createState() {
    return CalculatorFormState();
  }
}

class CalculatorFormState extends State<CalculatorForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late final TextEditingController controller1;
  late final TextEditingController controller2;

  @override
  void initState() {
    super.initState();
    controller1 = TextEditingController();
    controller2 = TextEditingController();
  }

  //! MUST -> tot timpul pe orice controller facem dispose();

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

  double? result;

  // o singura metoda in care difera operatia ca parametru
  //! enum pentru operatie

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AppFormField(controller1: controller1),
              const SizedBox(width: 20),
              AppFormField(controller1: controller2),
            ],
          ),

          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              setState(() {
                result = compute(
                  Operation.SUM,
                  controller1.text,
                  controller2.text,
                );
              });
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: const Text(
              'Suma',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),

          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                result = compute(
                  Operation.DIF,
                  controller1.text,
                  controller2.text,
                );
              });
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            child: const Text(
              'Diferenta',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),

          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                result = compute(
                  Operation.MUL,
                  controller1.text,
                  controller2.text,
                );
              });
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            child: const Text('Produs', style: TextStyle(color: Colors.white)),
          ),

          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                result = compute(
                  Operation.DIV,
                  controller1.text,
                  controller2.text,
                );
              });
            },
            child: const Text('Impartire', style: TextStyle(color: Colors.red)),
          ),
          const SizedBox(height: 20),
          if (result != null)
            Container(
              width: 320,
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[Colors.blue.shade100, Colors.blue.shade500],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text('$result', style: const TextStyle(fontSize: 20)),
            ),
        ],
      ),
    );
  }
}
