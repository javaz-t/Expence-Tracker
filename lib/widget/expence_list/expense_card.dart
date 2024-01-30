import 'package:flutter/material.dart';

import '../../model/expense_model.dart';
import 'expence_list.dart';
import '../expenses.dart';
class ExpenceCard extends StatelessWidget {
  final ExpenseModel expenses;
  ExpenceCard({super.key, required this.expenses});

  @override
  Widget build(BuildContext context) {
    return Card(
 child: Text(expenses.title),
    );
  }
}


