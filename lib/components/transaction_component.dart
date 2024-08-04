import 'package:finance_tracker/components/horizontal_spacing.dart';
import 'package:finance_tracker/components/vertical_spacing.dart';
import 'package:flutter/material.dart';

class TransactionComponent extends StatelessWidget {
  const TransactionComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: Icon(
                      Icons.money,
                      color: Colors.white,
                    ),
                  ),
                ),
                const HorizontalSpacing(),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Food",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Payment",
                      style: TextStyle(fontWeight: FontWeight.w200),
                    ),
                  ],
                )
              ],
            ),
            const Text(
              "2,500",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
          ],
        ),
        const VerticalSpacing(),
      ],
    );
  }
}
