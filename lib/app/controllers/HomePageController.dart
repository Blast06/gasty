import 'package:gasty/app/data/models/Politician.dart';
import 'package:gasty/app/data/services/mock_data.dart';
import 'package:get/get.dart';


class HomePageController extends GetxController {

  RxInt activeIndex = 0.obs;
  

  //TODO IMPLEMENT ABSTRACT CLASS AND REPOSITORY


@override
  void onInit() {
    // TODO: implement onInit
    print(activeIndex);
    super.onInit();
  }

  Future<List<Politician>>getPoliticians() async{

    Future.delayed(Duration(seconds: 3));
    return politicians;

  }

}