import 'package:flutter_riverpod/legacy.dart';
import 'package:meals_app/model/meal.dart';

final favoritesMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) {
      return FavoriteMealsNotifier();
    });

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);

  bool toggleMealFavoriteStatus(Meal meal) {

    if (state.contains(meal)) {
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    }

    state = [...state, meal];
    return true;
  }
}
