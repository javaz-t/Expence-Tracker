import 'package:expence_tracker/model/expense_model.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<ExpenseModel> _redgisteredExpences = [
    ExpenseModel(title: 'Dhosa',amount: 200,catergory: Catagory.Food, data: DateTime.now()),
    ExpenseModel(title: 'Dfgsdfhosa',amount: 500,catergory: Catagory.Leisure, data: DateTime.now()),
    ExpenseModel(title: 'Dhossdfgsa',amount: 60,catergory: Catagory.Work, data: DateTime.now()),
    ExpenseModel(title: 'Dhosdfgssa',amount: 340,catergory: Catagory.Food, data: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Graph'),
          Text('idkfaj')
        ],
      ),
    );
  }
}
