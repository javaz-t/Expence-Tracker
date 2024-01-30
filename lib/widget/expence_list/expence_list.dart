
import 'package:expence_tracker/widget/expence_list/expense_card.dart';
import 'package:expence_tracker/widget/expenses.dart';
import 'package:flutter/material.dart';

import '../../model/expense_model.dart';


class ExpensesList extends StatelessWidget {
final List<ExpenseModel> expenseModel;
   ExpensesList({super.key, required this.expenseModel,});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: expenseModel.length,itemBuilder: (context,index){
   return ExpenceCard(expenses: expenseModel[index],);

    });
  }
}
