import 'package:finance_tracker/components/horizontal_spacing.dart';
import 'package:finance_tracker/components/section_title.dart';
import 'package:finance_tracker/components/transaction_component.dart';
import 'package:finance_tracker/components/vertical_spacing.dart';
import 'package:finance_tracker/components/wallet_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
              vertical: 0.0, horizontal: 12),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello,",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                            Text(
                              "Donald Mwakatoga",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                        Icon(Icons.notifications_active)
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Text(
                          "Tsh",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w800),
                        ),
                        HorizontalSpacing(),
                        Text(
                          "13,500",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w800),
                        ),
                        HorizontalSpacing(),
                        Text(
                          "Total Balance",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.grey),
                        ),
                      ],
                    ),
                    VerticalSpacing(),
                    Expanded(
                      child: PageView(
                        children: [
                          WalletComponent(),
                          WalletComponent(),
                          WalletComponent(),
                          WalletComponent(),
                          WalletComponent(),
                          WalletComponent(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: SectionTitle(),
                    ),
                    Expanded(
                      // flex: 5,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: const [
                          TransactionComponent(),
                          TransactionComponent(),
                          TransactionComponent(),
                          TransactionComponent(),
                          TransactionComponent(),
                          TransactionComponent(),
                          TransactionComponent(),
                          TransactionComponent(),
                          TransactionComponent(),
                          TransactionComponent(),
                          TransactionComponent(),
                          TransactionComponent(),
                          TransactionComponent(),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     print("Button Pressed");
      //   },
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
