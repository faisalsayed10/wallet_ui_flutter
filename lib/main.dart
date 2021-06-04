import 'package:flutter/material.dart';
import 'package:ui_flutter/data.dart';
import 'package:ui_flutter/widgets/card_section.dart';
import 'package:ui_flutter/widgets/expenses.dart';
import 'package:ui_flutter/widgets/header.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Circular'),
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(
            child: CardSection(),
          ),
          Expanded(child: ExpenseSection())
        ],
      ),
    );
  }
}
