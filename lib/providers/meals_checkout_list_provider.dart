import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ihdori_food/functions/meal_list_refactored.dart';

final mealCheckOutListProvider =
    StateProvider<List<Map<String, dynamic>>>((ref) {
  return [];
});

final mealsFinalListProvider = StateProvider((ref) {
  final list = ref.watch(mealCheckOutListProvider);

  return refactorMeals(list);
});
