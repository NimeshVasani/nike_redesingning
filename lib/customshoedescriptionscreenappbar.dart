import 'package:flutter/material.dart';

SliverAppBar customShoeDescriptionScreenAppBar(String name) {
  return  SliverAppBar(
      backgroundColor: Colors.white,
      // Set this height
      expandedHeight: 100,
      toolbarHeight: 65,
      automaticallyImplyLeading: false,
      surfaceTintColor: Colors.white,
      flexibleSpace: FlexibleSpaceBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black87,
                size: 30,
              ),
              const Spacer(),
              const Text(
                'Men',
                style: TextStyle(fontSize: 16, color: Colors.black38),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                name,
                style: const TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                    fontWeight: FontWeight.w900),
              ),
              const Spacer(),
              const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black87,
                size: 30,
              )
            ],
          ),
        ),
        centerTitle: true,
        expandedTitleScale: 1,
      ),
      snap: true,
      pinned: true,
      floating: true);
}
