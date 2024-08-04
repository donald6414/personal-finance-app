import 'package:flutter/material.dart';

class BottomNavigationComponent extends StatefulWidget {
  final int selectedItem;
  final Function(int) onItemTapped;
  const BottomNavigationComponent(
      {super.key, required this.selectedItem, required this.onItemTapped});

  @override
  State<BottomNavigationComponent> createState() =>
      _BottomNavigationComponentState();
}

class _BottomNavigationComponentState extends State<BottomNavigationComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        boxShadow: [
          BoxShadow(color: Colors.black, spreadRadius: 2, blurRadius: 5),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: selectedItem,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.white),
        selectedIconTheme: IconThemeData(color: Colors.black),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Incomes"),
          BottomNavigationBarItem(
              icon: Icon(Icons.money_off), label: "Expenses"),
          BottomNavigationBarItem(icon: Icon(Icons.savings), label: "Budget"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        backgroundColor: Colors.black,
      ),
    );
  }
}
