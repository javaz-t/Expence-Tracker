import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';

import 'expense_model.dart';


final uuid =  Uuid().v4(); //unique string
final styleDate = DateFormat().add_yMd();
enum Catagory { food, Travel, Leisure, Work }

const categoryIcon={
  Catagory.food:Icons.lunch_dining,
  Catagory.Travel:Icons.card_travel,
  Catagory.Leisure:Icons.face_retouching_off,
  Catagory.Work:Icons.work,

};

class ExpenseModel {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Catagory catergory;
  get formatedDate{  //A getter is a special method that provides access to an object’s properties
     return styleDate.format(date);
  }
  ExpenseModel(
      {required this.title,
      required this.amount,
      required this.date,
      required this.catergory})
      : id = uuid;
}
