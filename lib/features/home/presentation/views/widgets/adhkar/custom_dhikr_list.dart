import 'package:flutter/material.dart';

import 'custom_dhikr_item.dart';

class CustomDhikrList extends StatelessWidget {
  const CustomDhikrList({
    super.key,
    required this.item,
  });

  final List item;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return CustomDhikrItem(
            dhikr: item[index],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: item.length);
  }
}
