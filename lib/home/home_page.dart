import 'package:fitness_app_flutter/home/widgets/daily_task/daily_exercises_list.dart';
import 'package:fitness_app_flutter/home/widgets/start_new_goal_scroll/goal_carousel_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/custom_colors.dart';
import '../../resources/strings.dart';
import 'controller/home_controller.dart';
import 'widgets/header_widget.dart';

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    //Initializam controllerul
    Get.lazyPut(() => HomeController());

    //cautam controlerul
    HomeController controller = Get.find();

    //citim asincron datele
    controller.readJsonFile();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    HomeController controller = Get.find();

    return Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 36),
          color: CustomColors.cultured,

          child: Column(
            children: [
              const SizedBox(height: 16),

              const HeaderWidget(title: Strings.startNewGoal),

              //Obx urmareste variabilele Rx din controller
              Obx( () {
                if (controller.goalItems.isNotEmpty) {
                  return GoalCarouselWidget(goals: controller.goalItems);
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              }
              ),

              const HeaderWidget(title: Strings.dailyTask),

              Obx( () {
                if (controller.exerciseItems.isNotEmpty) {
                  return DailyExercisesList(exercises: controller.exerciseItems);
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              }
              ),
            ],
          ),
        )
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}
