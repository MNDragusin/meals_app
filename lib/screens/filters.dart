import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/filters_provider.dart';
import '../widgets/filter_switch.dart';


class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filterProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Your Filters')),
      body: Column(
          children: [
            FilterSwitch(
              title: 'Gluten-free',
              subtitle: 'Only include gluten-free meals.',
              currentValue: activeFilters[Filter.glutenFree]!,
              onChanged: (isChecked) {
                ref.read(filterProvider.notifier).setFilter(Filter.glutenFree, isChecked);
              },
            ),
            FilterSwitch(
              title: 'Lactose-free',
              subtitle: 'Only include lactose-free meals.',
              currentValue: activeFilters[Filter.lactoseFree]!,
              onChanged: (isChecked) {
                ref.read(filterProvider.notifier).setFilter(Filter.lactoseFree, isChecked);
              },
            ),
            FilterSwitch(
              title: 'Vegetarian',
              subtitle: 'Only include Vegetarian meals.',
              currentValue: activeFilters[Filter.vegetarian]!,
              onChanged: (isChecked) {
                ref.read(filterProvider.notifier).setFilter(Filter.vegetarian, isChecked);
              },
            ),
            FilterSwitch(
              title: 'Vegan',
              subtitle: 'Only include Vegan meals.',
              currentValue: activeFilters[Filter.vegan]!,
              onChanged: (isChecked) {
                ref.read(filterProvider.notifier).setFilter(Filter.vegan, isChecked);
              },
            ),
          ],
        ),
    );
  }
}
