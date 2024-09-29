import 'package:flutter/material.dart';

class FilterItem extends StatelessWidget {
  const FilterItem({super.key, required this.label, required this.selected});

  final String label;
  final Function selected;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
        label: Text(label),
        onSelected: (value) {
          selected;
        });
  }
}
