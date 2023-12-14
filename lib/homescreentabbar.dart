import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget homeScreenTabBar() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Lifestyle",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w900, fontSize: 24),
          ),
          Text(
            "34 items",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16),
          )
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,

        children: [
          Text(
            "Running",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w900, fontSize: 24),
          ),
          Text(
            "24 items",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w600, fontSize: 16),
          )
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,

        children: [
          Text(
            "Tennis",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w900, fontSize: 24),
          ),
          Text(
            "44 items",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w600, fontSize: 16),
          )
        ],
      )
    ],
  );
}
