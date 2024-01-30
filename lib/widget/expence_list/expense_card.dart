import 'package:flutter/material.dart';

import '../../model/expense_model.dart';
import 'expence_list.dart';
import '../expenses.dart';

class ExpenceCard extends StatelessWidget {
  final ExpenseModel expenses; //singl objects
  ExpenceCard({super.key, required this.expenses});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(expenses.title),
            Row(
              children: [
                Text('Rs :${expenses.amount.toStringAsFixed(2)}'),
                Spacer(),
                Row(
                  children: [
                    Icon(categoryIcon[expenses.catergory]),
                    SizedBox(
                      width: 10,
                    ),
                    Text(expenses.formatedDate)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
