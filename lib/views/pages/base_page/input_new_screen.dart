import 'package:account_book/models/types/input_type.dart';
import 'package:account_book/views/components/expenses_income_switch.dart';
import 'package:flutter/material.dart';

class InputNewScreen extends StatefulWidget {
  const InputNewScreen({super.key});

  @override
  State<InputNewScreen> createState() => _InputNewScreenState();
}

class _InputNewScreenState extends State<InputNewScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpensesIncomeSwitch(
          inputType: InputType.income,
          onChanged: (_) {},
        ),
      ],
    );
  }
}
