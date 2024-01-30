
import 'package:expence_tracker/widget/expence_list/expence_list.dart';
import 'package:expence_tracker/model/expense_model.dart';
import 'package:flutter/material.dart';

import 'new_expenses.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
final List<ExpenseModel> _userGivenData = [
  ExpenseModel(title: 'Dhosa',amount: 200,catergory: Catagory.food, date: DateTime.now()),
  ExpenseModel(title: 'Car',amount: 200,catergory: Catagory.Travel, date: DateTime.now()),
];



class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    void _openExpenceOverlay(){
      showModalBottomSheet(context:context, builder: (ctx){
        return NewExpenses();
      });

    }

    print(_userGivenData[1].title);
    return Scaffold(
      appBar: AppBar(actions: [IconButton(onPressed:_openExpenceOverlay, icon: Icon(Icons.add))],),

      body: Column(

        children: [
          const Text('Graph',style: TextStyle(fontSize: 90),),
         Expanded(child:ExpensesList(expenseModel: _userGivenData,)),
        ],
      ),
    );
  }
}
