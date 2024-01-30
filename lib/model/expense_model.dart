import 'package:uuid/uuid.dart';

final uuid =  Uuid().v4(); //unique string

enum Catagory { Food, Travel, Leisure, Work }

class ExpenseModel {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Catagory catergory;
  ExpenseModel(
      {required this.title,
      required this.amount,
      required this.date,
      required this.catergory})
      : id = uuid;
}
