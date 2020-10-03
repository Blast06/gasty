


import 'package:gasty/app/data/models/Expenses.dart';

import 'package:gasty/app/data/models/Politician.dart';
import 'package:gasty/app/data/services/mock_data.dart';


import 'Api.dart';

class FakeApi implements Api {
  @override
  Future<List<Expenses>> getExpenses() async{
    
    await Future.delayed(Duration(seconds:1));
    return expenses;
  }

  @override
  Future<List<Politician>> getPoliticians() async{

    await Future.delayed(Duration(seconds:1));
    return politicians;
  }
  
}