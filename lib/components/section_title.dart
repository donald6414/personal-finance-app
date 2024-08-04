import 'package:finance_tracker/components/vertical_spacing.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VerticalSpacing(),
          Text(
            "Transaction history",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          ),
          VerticalSpacing(),
        ],
      ),
    );
  }
}
