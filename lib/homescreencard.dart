import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget homeScreenCard(BuildContext context) {
  return Stack(alignment: Alignment.topRight, children: [
    Container(
      height: 170,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: const Color.fromARGB(255, 25, 25, 255).withOpacity(0.8)),
      child: const Padding(
        padding: EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "20% Discount",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 20),
            ),
            Text(
              "On your first purchase",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            Text(
              "SUPER SALE - SUPER SALE - \nSUPER SALE",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ],
        ),
      ),
    ),
    Transform.rotate(
        angle: 320,
        child: Image.asset(
          'assets/images/nike_shoes_1.png',
          height: 190,
        ))
  ]);
}
