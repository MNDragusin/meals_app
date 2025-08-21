import 'package:flutter/material.dart';
import 'package:meals_app/model/meal.dart';

import '../widgets/meal_item.dart';

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
      content = CreateMissingContent(context);
    } else {
      content = CreateContent();
    }
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: content,
    );
  }

  Widget CreateMissingContent(BuildContext ctx){
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Uh oh... nothing here!',
              style: Theme
                  .of(ctx)
                  .textTheme
                  .headlineLarge!
                  .copyWith(
                color: Theme
                    .of(ctx)
                    .colorScheme
                    .onSurface,)),
          const SizedBox(height: 16),
          const Icon(Icons.error_outline, size: 60),
          const SizedBox(height: 16),
          Text('Try selecting a different category!',
              style: Theme
                  .of(ctx)
                  .textTheme
                  .bodyLarge!
                  .copyWith(
                color: Theme
                    .of(ctx)
                    .colorScheme
                    .onSurface,
              )),
        ],
      ),
    );
  }

  Widget CreateContent() {
    return ListView.builder(
        itemCount: availableMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(meal: availableMeals[index]);
    });
  }
}
