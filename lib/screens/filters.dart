import 'package:flutter/material.dart';

import '../widgets/filter_switch.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() {
    return _FiltersScreenState();
  }
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFreeFilterSet = false;
  var _darryfreeFilterSet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Filters')),
      // drawer: MainDrawer(
      //   onSelectScreen: (identifier) {
      //     Navigator.of(context).pop();
      //
      //     if (identifier == 'meals') {
      //       Navigator.of(context).push(
      //         MaterialPageRoute(builder: (ctx) => const TabsScreen()),
      //       );
      //     }
      //   },
      // ),
      body: Column(
        children: [
          FilterSwitch(title: 'Gluten-free',
              subtitle: 'Only include gluten-free meals.',
              currentValue: _glutenFreeFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _glutenFreeFilterSet = isChecked;
                });
              }),
          FilterSwitch(title: 'Darry-free',
              subtitle: 'Only include darry-free meals.',
              currentValue: _darryfreeFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _darryfreeFilterSet = isChecked;
                });
              }),
        ],
      ),
    );
  }
}
