import 'package:flutter/material.dart';
import 'package:uidesigning/customshoedescriptionscreenappbar.dart';
import 'package:uidesigning/shoesizecontainer.dart';

class ShoeDescriptionScreen extends StatefulWidget {
  final String price;
  final String name;
  final String image;
  final String category;

  const ShoeDescriptionScreen(
      {super.key,
      required this.price,
      required this.name,
      required this.image,
      required this.category});

  @override
  State<ShoeDescriptionScreen> createState() => _ShoeDescriptionScreenState();
}

class _ShoeDescriptionScreenState extends State<ShoeDescriptionScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            maintainBottomViewPadding: true,
            child: CustomScrollView(controller: _scrollController, slivers: [
              customShoeDescriptionScreenAppBar(widget.name),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                      // The builder function returns a ListTile with a title that
                      // displays the index of the current item.
                      (context, index) => Padding(
                            padding: const EdgeInsets.only(
                                top: 8.0,
                                bottom: 10.0,
                                left: 20.0,
                                right: 20.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height *
                                        0.6,
                                    child: Stack(
                                      children: [
                                        SizedBox(
                                          width: 50,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              const Text(
                                                'Size',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 16),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              shoeSizeContainer('9', false),
                                              shoeSizeContainer('9.5', true),
                                              shoeSizeContainer('10', false),
                                              shoeSizeContainer('11', false),
                                            ],
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          child: Transform.rotate(
                                              angle: 90 * 3.1415927 / 180,
                                              child: SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.45,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.5,
                                                child: FittedBox(
                                                  fit: BoxFit.contain,
                                                  child: Text(
                                                    widget.category,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        color: Colors.grey
                                                            .withOpacity(0.4),
                                                        fontStyle:
                                                            FontStyle.italic),
                                                  ),
                                                ),
                                              )),
                                        ),
                                        Column(
                                          children: [
                                            Transform.rotate(
                                              angle: 315 * 3.1415927 / 180,
                                              child: SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.5,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.4,
                                                  child: Image.asset(
                                                    widget.image,
                                                    fit: BoxFit.fitWidth,
                                                  )),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '\$${widget.price}',
                                                      style: const TextStyle(
                                                          fontSize: 28,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          color: Colors.black),
                                                    ),
                                                    const Text(
                                                      '10% OFF',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          color: Colors.red),
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    const Text(
                                                      'Colors',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          color: Colors.black),
                                                    ),
                                                    Container(
                                                      height: 40,
                                                      width: 40,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          border: Border.all(
                                                              color:
                                                                  Colors.blue,
                                                              width: 3)),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                    Container(
                                                        height: 40,
                                                        width: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Colors.redAccent,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ))
                                                  ],
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 50,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.yellow),
                                    child: const Center(
                                      child: Text(
                                        'Add to Cart  - \$200.00',
                                        style: TextStyle(
                                            fontSize: 18,
                                            overflow: TextOverflow.ellipsis,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 50,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.black),
                                    child: const Center(
                                      child: Text(
                                        'AR View',
                                        style: TextStyle(
                                            fontSize: 18,
                                            overflow: TextOverflow.ellipsis,
                                            color: Colors.white),
                                      ),
                                    ),
                                  )
                                ]),
                          ),
                      childCount: 1))
            ])));
  }
}
