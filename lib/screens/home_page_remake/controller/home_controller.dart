import 'package:get/get.dart';
class HomeController extends GetxController{
  var index = 0.obs;
  changeIndex(i) => index.value = i;
}