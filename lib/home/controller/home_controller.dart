import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../resources/files.dart';
import '../data_models/fitness_response.dart';
import 'exercise_item.dart';
import 'goal_item.dart';

class HomeController extends GetxController{
  RxList<GoalItem> goalItems = RxList();
  RxList<ExerciseItem> exerciseItems = RxList();

  void readJsonFile() async {

    //citim asincron file-ul json
    String jsonString = await rootBundle.loadString(Files.jsonFitnessFilePath);

    var mapJson = jsonDecode(jsonString);

    //transmitem json-ul in FitnessResponse, care serializeaza automat datele
    var responseData = FitnessResponse.fromJson(mapJson);

    //datele obtinute le atribuim listelor Rx pentru a fi folosite in aplicatie
    goalItems.value = responseData.goals
      .map((e) => GoalItem(
        cover: e.cover,
        title: e.title,
        subTitle: e.subTitle,
        caloriesCount: e.caloriesCount,
        durationSeconds: e.durationSeconds))
    .toList();

    exerciseItems.value = responseData.dailyExercises
      .map((e) => ExerciseItem(
        title: e.title,
        cover: e.cover,
        caloriesCount: e.caloriesCount,
        durationSeconds: e.durationSeconds)).toList();
  }
}