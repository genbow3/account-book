import 'package:account_book/models/types/input_type.dart';
import 'package:flutter/material.dart';

class ExpensesIncomeSwitch extends StatelessWidget {
  const ExpensesIncomeSwitch({
    required this.inputType,
    required this.onChanged,
    super.key,
  });

  final InputType inputType;
  final Function(InputType) onChanged;

  @override
  Widget build(BuildContext context) {
    return Switch(
      activeColor: Colors.amber,
      inactiveThumbColor: Colors.lightGreen,
      inactiveTrackColor: Colors.greenAccent,
      value: inputType == InputType.income,
      onChanged: (bool value) {
        if (value) {
          onChanged(InputType.income);
        } else {
          onChanged(InputType.expenses);
        }
      },
    );
  }
}
