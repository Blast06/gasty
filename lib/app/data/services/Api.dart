import 'package:gasty/app/data/models/Expenses.dart';
import 'package:gasty/app/data/models/Politician.dart';

abstract class Api {
  


  Future<List<Politician>> getPoliticians();
  Future<List<Expenses>> getExpenses();

}