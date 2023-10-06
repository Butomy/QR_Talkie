import 'package:flutter/material.dart';
import 'package:qr_talkie/presentation/screens/bottom_navigation/bottom_navigation.dart';
import 'package:qr_talkie/utils/colors.dart';

class Purchasepage extends StatefulWidget {
  const Purchasepage({super.key});

  @override
  State<Purchasepage> createState() => _PurchasepageState();
}

class _PurchasepageState extends State<Purchasepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: black10,
      body: Container(child: Text("data"),),
     // bottomSheet: Bottomnavigationbarcustom(),
    );
  }
}