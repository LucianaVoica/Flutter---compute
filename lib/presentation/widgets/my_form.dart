import 'package:flutter/material.dart';
import 'package:flutter_test1/presentation/widgets/input_form.dart';

import 'package:flutter_test1/services/compute_service.dart';
import 'package:flutter_test1/common/operation_enum.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
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
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppFormField(controller1: controller1),
              SizedBox(width: 20),
              AppFormField(controller1: controller2),
            ],
          ),

          SizedBox(height: 10),
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
            child: Text(
              "Suma",
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),

          SizedBox(height: 20),
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
            child: Text(
              "Diferenta",
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),

          SizedBox(height: 20),
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
            child: Text("Produs", style: TextStyle(color: Colors.white)),
          ),

          SizedBox(height: 20),
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
            child: Text("Impartire", style: TextStyle(color: Colors.red)),
          ),
          SizedBox(height: 20),
          if (result != null)
            Container(
              width: 320,
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue.shade100, Colors.blue.shade500],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text("$result", style: TextStyle(fontSize: 20)),
            ),
        ],
      ),
    );
  }
}
