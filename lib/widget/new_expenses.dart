import 'package:flutter/material.dart';
import 'package:expence_tracker/model/expense_model.dart';
class NewExpenses extends StatefulWidget {
  const NewExpenses({super.key});

  @override
  State<NewExpenses> createState() => _NewExpensesState();
}

class _NewExpensesState extends State<NewExpenses> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  DateTime? _selectedDate;
  void _presentDatePicker() async{
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    final lastday = DateTime.now();

    final pickedDate = await showDatePicker( //it is a future function
      context: context,
      firstDate: firstDate,
      lastDate: lastday,
    );
    setState(() {
      _selectedDate= pickedDate;
    });
  }

  @override
  void dispose() {
    titleController.dispose();
    amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          TextField(
            maxLength: 30,
            decoration: InputDecoration(hintText: 'Title'),
            controller: titleController,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration:
                      InputDecoration(hintText: 'Amount', prefix: Text('\$')),
                  controller: amountController,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(_selectedDate!=null?styleDate.format(_selectedDate!): 'dd / mm / yyyy'),
                  IconButton(
                      onPressed: _presentDatePicker,
                      icon: Icon(Icons.calendar_month))
                ],
              ))
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    print(titleController.text);
                    print(amountController.text);
                    Navigator.pop(context);
                  },
                  child: Text('Save')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel'))
            ],
          )
        ],
      ),
    );
  }
}
