import 'package:get/get.dart';

class HomePageController extends GetxController {
  @override
  void onInit() {
    age = 18.toDouble().obs;
    foot = 5.toDouble().obs;
    inch = 10.toDouble().obs;
    weight = 70.toDouble().obs;
    gender = true.obs;
    super.onInit();
  }

  late RxDouble age;
  late RxDouble foot;
  late RxDouble inch;
  late RxDouble weight;
  late RxBool gender;
  //Convert to int

// //
//   var footToinch = (foot.value.toInt() * 12);
//   late dynamic age2;
//   late dynamic foot2;
//   late dynamic inch2;
//   late dynamic weight2;
//   late dynamic gender2;

//   calculateClick({
//     dynamic foot2,
//     dynamic inch2,
//     dynamic weight2,
//     dynamic age2,
//   }) {
//     print(footToinch);
//   }
}
