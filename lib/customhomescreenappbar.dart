import 'package:flutter/material.dart';

SliverAppBar customHomeScreenAppbar() {
  return  SliverAppBar(
      backgroundColor: Colors.white,
      // Set this height
      expandedHeight: 90,
      toolbarHeight: 65,
      surfaceTintColor: Colors.white,
      flexibleSpace: FlexibleSpaceBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Icon(
                Icons.grid_view_outlined,
                color: Colors.black87.withOpacity(0.7),
                size: 30,
              ),
              SizedBox(height: 50,width: 70,
                  child: Image.asset('assets/images/nike_logo_2.png',fit: BoxFit.fitWidth,)),
               Icon(Icons.shopping_bag_outlined,color: Colors.black87.withOpacity(0.7),size: 30,)
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
