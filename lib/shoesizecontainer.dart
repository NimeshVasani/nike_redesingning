import 'package:flutter/material.dart';

Widget shoeSizeContainer(String size, bool selected) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10.0),
    child: Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          color: selected
              ? const Color.fromARGB(255, 0, 0, 255).withOpacity(0.8)
              : Colors.transparent,
          border: Border.all(width: 1, color: Colors.black12),
          borderRadius: BorderRadius.circular(15)),
      child: Center(
          child: Text(
        size,
        style: TextStyle(
            color: selected ? Colors.white : Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w600),
      )),
    ),
  );
}
