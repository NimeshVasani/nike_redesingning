import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_redesigning/shoedescriptionscreen.dart';

Widget homeScreenShoesList(BuildContext context) {
  var list = [
    'assets/images/nike_shoes_5.png',
    'assets/images/nike_shoes_4.png',
    'assets/images/nike_shoes_3.png',
    'assets/images/nike_shoes_2.png',
    'assets/images/nike_shoes_1.png'
  ];
  var price = [104.99, 120.00, 139.99, 230.00, 200.99];
  var name = ['Air Force','Air Jordan', 'Nike Air yeezy','Nike Free','Nike Shox'];
  return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        padding: const EdgeInsets.only(top: 10.0),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          childAspectRatio: 3 / 4,
          children: List.generate(5, (index) {
            return InkWell(
              onTap: (){
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) {
                      return  ShoeDescriptionScreen(price: price[index].toString(), name: name[index],image: list[index],category: name[index].substring(4),);
                    }));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 1, color: Colors.black12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 15.0, bottom: 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star_border,
                              color: Colors.black45,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(color: Colors.black54, fontSize: 16),
                            ),
                            Spacer(),
                            Icon(
                              Icons.bookmark_border_rounded,
                              color: Colors.black45,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(list[index]),
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                        child: Text(
                          name[index],
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              color: Colors.black26),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          '\$${price[index].toStringAsFixed(2)}',
                          style: const TextStyle(
                              fontSize: 24,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          })),

  );
}
