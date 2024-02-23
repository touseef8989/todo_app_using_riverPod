import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../config/routes/routes_location.dart';
import '../../data/models/on_boar_model.dart';
import '../../widgets/onboard_Style.dart';
import '../../widgets/todo_button.dart';

class OnboardPage extends StatefulWidget {
  OnboardPage([Map<dynamic, dynamic>? map]);

  static OnboardPage builder(BuildContext context, GoRouterState state) =>
      OnboardPage({});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  int currentIndex = 0;
  late PageController _pagecontroller;

  @override
  void initState() {
    _pagecontroller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pagecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr, // or rtl based on your requirements
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pagecontroller,
                  itemCount: contents
                      .length, // Assuming you have 'contents' defined somewhere
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (_, i) {
                    return Padding(
                      padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            contents[i].image!,
                            height: 420,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(height: 40),
                          Text(
                            contents[i].title!,
                            style: AppWidget.semiBoldTextstyle(),
                          ),
                          SizedBox(height: 40),
                          Text(
                            contents[i].description!,
                            style: AppWidget.lightTextStyle(),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    contents.length,
                    (index) => buildDot(index, context),
                  ),
                ),
              ),
              ToDoButton(
                onpress: () {
                  if (currentIndex == contents.length - 1) {
                    context.push(RouteLocation.home);
                  }
                  _pagecontroller.nextPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                },
                title: currentIndex == contents.length - 1 ? "Start" : "Next",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext buildContext) {
    return Container(
      height: 10,
      width: currentIndex == index ? 18 : 7,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.black,
      ),
    );
  }
}
