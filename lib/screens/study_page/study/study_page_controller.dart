import 'package:get/get.dart';

class StudyPageController extends GetxController{
  var progress = 0.obs;
  updateProgress() {
    print(progress.value);
    if(progress.value == 15){
      progress.value = 0;
    }else{
      progress.value ++ ;
    }
  }
}