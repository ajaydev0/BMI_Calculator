import 'package:bmi_calculator/app/router/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var AppHeight = (MediaQuery.of(context).size.height) / 100;

    return Scaffold(
      appBar: AppBar(
        title: const Text("( BMI Calculator )"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: AppHeight * 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(
                () => GestureDetector(
                  onTap: () {
                    controller.gender.value = true;
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.linear,
                    height: controller.gender.value
                        ? AppHeight * 20
                        : AppHeight * 18,
                    width: controller.gender.value
                        ? AppHeight * 20
                        : AppHeight * 18,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: controller.gender.value
                              ? Colors.white.withOpacity(.9)
                              : Colors.amber,
                          width: 5),
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 25, right: 25, top: 15, bottom: 5),
                          child: Image(
                              image: AssetImage(
                            "assets/images/man.png",
                          )),
                        ),
                        Text(
                          "Male",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Obx(
                () => GestureDetector(
                  onTap: () {
                    controller.gender.value = false;
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    height: controller.gender.value
                        ? AppHeight * 18
                        : AppHeight * 20,
                    width: controller.gender.value
                        ? AppHeight * 18
                        : AppHeight * 20,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: controller.gender.value
                                ? Colors.amber
                                : Colors.white.withOpacity(.9),
                            width: 5),
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 25, right: 25, top: 15, bottom: 5),
                          child: Image(
                              image: AssetImage(
                            "assets/images/woman.png",
                          )),
                        ),
                        Text(
                          "Female",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: AppHeight * 3),
          Container(
            height: 100,
            width: 320,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Age : ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Container(
                      height: 30,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white)),
                      child: Obx(
                        () => Text(
                          controller.age.value.toStringAsFixed(0),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Obx(
                  () => Slider(
                    thumbColor: Colors.white,
                    inactiveColor: Colors.white.withOpacity(.6),
                    activeColor: Colors.black,
                    min: 0,
                    max: 100,
                    value: controller.age.value,
                    onChanged: (value) {
                      controller.age.value = value;
                    },
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: AppHeight * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 90,
                width: 155,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "foot : ",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Container(
                          height: 25,
                          width: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.white)),
                          child: Obx(
                            () => Text(
                              controller.foot.value.toStringAsFixed(0),
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Obx(
                      () => Slider(
                        thumbColor: Colors.white,
                        inactiveColor: Colors.white.withOpacity(.6),
                        activeColor: Colors.black,
                        min: 0,
                        max: 10,
                        value: controller.foot.value,
                        onChanged: (value) {
                          controller.foot.value = value;
                        },
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Container(
                height: 90,
                width: 155,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "inch : ",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Container(
                          height: 25,
                          width: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.white)),
                          child: Obx(
                            () => Text(
                              controller.inch.value.toStringAsFixed(0),
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Obx(
                      () => Slider(
                        thumbColor: Colors.white,
                        inactiveColor: Colors.white.withOpacity(.6),
                        activeColor: Colors.black,
                        min: 0,
                        max: 12,
                        value: controller.inch.value,
                        onChanged: (value) {
                          controller.inch.value = value;
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: AppHeight * 2),
          Container(
            height: 100,
            width: 320,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Weight : ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Container(
                      height: 30,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white)),
                      child: Obx(
                        () => Text(
                          controller.weight.value.toStringAsFixed(0),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      "Kg",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                Obx(
                  () => Slider(
                    thumbColor: Colors.white,
                    inactiveColor: Colors.white.withOpacity(.6),
                    activeColor: Colors.black,
                    min: 0,
                    max: 100,
                    value: controller.weight.value,
                    onChanged: (value) {
                      controller.weight.value = value;
                    },
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: AppHeight * 5),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              height: 60,
              width: 320,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                onPressed: () {
                  // Mathemetics Work

                  var age = controller.age.value.toInt();
                  var weight = controller.weight.value.toInt();
                  var footToinch = controller.foot.value * 12;
                  var heightinInch = footToinch + controller.inch.value;
                  var heightinMeter = heightinInch * 0.0254;
                  var hollSquare = heightinMeter * heightinMeter;
                  var bmiResult = weight / hollSquare;
                  //

                  print(footToinch);
                  print(heightinInch);
                  print(heightinMeter);
                  print(hollSquare);
                  print(bmiResult);

                  Get.bottomSheet(
                    Obx(
                      () => Container(
                        height: 380,
                        decoration: const BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            const Text(
                              "( BMI Result )",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "Age : ${age}",
                              style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              "Height : ${controller.foot.value.toInt()} ' ${controller.inch.value.toInt()}",
                              style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              "Weight : $weight Kg",
                              style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const Text(
                              "Gender : Male",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const SizedBox(height: 30),
                            const Text(
                              "Your BMI Result is",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              "${bmiResult.toStringAsFixed(2)}",
                              style: const TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const SizedBox(height: 30),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: SizedBox(
                                height: 60,
                                width: 320,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                  ),
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: const Text(
                                    "Re-Calculate",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amber),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: const Text(
                  "Calculate",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
