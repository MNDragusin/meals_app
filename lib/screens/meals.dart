import 'package:flutter/material.dart';
import 'package:meals_app/model/meal.dart';

import '../widgets/meal_item.dart';
import 'meal_details.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    required this.title,
    required this.availableMeals,
  });

  final String title;
  final List<Meal> availableMeals;

  @override
  Widget build(BuildContext context) {
    Widget content;
    if (availableMeals.isEmpty) {
      content = createMissingContent(context);
    } else {
      content = createContent(context);
    }
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: content,
    );
  }

  void selectMeal(BuildContext context, Meal meal) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (ctx) => MealDetailsScreen(meal: meal)));
  }

  Widget createMissingContent(BuildContext ctx) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Uh oh... nothing here!',
            style: Theme.of(ctx).textTheme.headlineLarge!.copyWith(
              color: Theme.of(ctx).colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 16),
          const Icon(Icons.error_outline, size: 60),
          const SizedBox(height: 16),
          Text(
            'Try selecting a different category!',
            style: Theme.of(ctx).textTheme.bodyLarge!.copyWith(
              color: Theme.of(ctx).colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }

  Widget createContent(BuildContext context) {
    return ListView.builder(
      itemCount: availableMeals.length,
      itemBuilder: (ctx, index) {
        return MealItem(meal: availableMeals[index], onSelectMeal:(meal)=> selectMeal(context, meal));
      },
    );
  }
}
