import 'package:flutter/material.dart';
import 'package:nike_redesigning/customhomescreenappbar.dart';
import 'package:nike_redesigning/homescreencard.dart';
import 'package:nike_redesigning/homescreenshoeslist.dart';
import 'package:nike_redesigning/homescreentabbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          top: false,
          maintainBottomViewPadding: true,
          child: CustomScrollView(controller: _scrollController, slivers: [
            customHomeScreenAppbar(),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    // The builder function returns a ListTile with a title that
                    // displays the index of the current item.
                    (context, index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding:
                                    EdgeInsets.only(left: 20.0, right: 20.0),
                                child: Text(
                                  'New Collection',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 28),
                                ),
                              ),
                              const Padding(
                                padding:
                                    EdgeInsets.only(left: 20.0, right: 20.0),
                                child: Text(
                                  'Explore the new collection of sneakers',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0),
                                child: homeScreenCard(context),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20.0),
                                child: homeScreenTabBar(),
                              ),
                              homeScreenShoesList(context),
                              const SizedBox(
                                height: 120,
                              )
                            ]),
                    childCount: 1))
          ]),
        ));
  }
}
