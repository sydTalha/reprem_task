import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reprem_task/views/common/TopRowIcons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

import 'component/ListRow.dart';

class CardDetail extends StatelessWidget {
  const CardDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        // child: ResponsiveWidget(
        //   mobile: mobileView(size),
        //   tab: tabletView(size),
        // ),

        child: size.shortestSide < 600 ? mobileView(size) : tabletView(size),
      ),
    );
  }

  Container mobileView(Size size) {
    final controller = PageController(viewportFraction: 1, keepPage: true);

    final pages = List.generate(
        2,
        (index) => ListRow(
              isTabView: false,
            ));
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          TopRowIcons(isMain: false),
          Positioned(
            top: size.width * 0.2,
            left: size.width * 0.02,
            right: size.width * 0.02,
            child: Container(
              width: size.width,
              height: size.height * 0.65 * size.aspectRatio,
              child: PageView.builder(
                controller: controller,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return pages[index % pages.length];
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: size.height * 0.05),
            child: Center(
                child: SmoothPageIndicator(
                    controller: controller, // PageController
                    count: pages.length,
                    effect: ExpandingDotsEffect(
                      activeDotColor: Color.fromRGBO(113, 119, 181, 1),
                      dotHeight: 6,
                      dotWidth: 6,
                      expansionFactor: 3.5,
                    ),
                    onDotClicked: (index) {})),
          ),
          Positioned(
              bottom: size.height * 0.35,
              child: Container(
                height: size.height * 0.12,
                width: size.width * 0.95,
                decoration: BoxDecoration(
                  // color: Colors.black,
                  image: DecorationImage(
                    image: AssetImage("assets/icons/tabbarbg.png"),
                    
                    fit: BoxFit.fitHeight,
                  ),
                  // borderRadius: BorderRadius.only(
                  //     topLeft: Radius.circular(24),
                  //     topRight: Radius.circular(24),
                  //     bottomLeft: Radius.circular(24),
                  //     bottomRight: Radius.circular(24)),
                  // boxShadow: [
                  //   BoxShadow(
                  //     //color: Color.fromRGBO(176, 184, 218, 1).withOpacity(0.17),
                  //     color:
                  //         Color.fromRGBO(240, 240, 230, 0.5).withOpacity(0.5),
                  //     blurRadius: 10,
                  //     offset: Offset(0, 8), // changes position of shadow
                  //   ),
                  // ],
                ),
              ),
              ),
          Positioned(
            bottom: size.height * 0.38,
            left: 12,
            right: 12,
            child: Container(
              child: DefaultTabController(
                length: 4,
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          //color: Color.fromRGBO(176, 184, 218, 1).withOpacity(0.17),
                          color: Color.fromRGBO(240, 240, 230, 0.5)
                              .withOpacity(0.5),
                          blurRadius: 10,
                          offset: Offset(0, 8), // changes position of shadow
                        ),
                      ]),
                      child: ButtonsTabBar(
                        height: 50,
                        contentPadding: EdgeInsets.all(10),
                        backgroundColor: Color.fromRGBO(248, 250, 248, 1),
                        unselectedBackgroundColor: Colors.transparent,
                        labelStyle: TextStyle(
                            color: Color.fromRGBO(113, 119, 181, 1),
                            fontWeight: FontWeight.bold),
                        unselectedLabelStyle: TextStyle(
                            color: Color.fromRGBO(194, 194, 205, 1),
                            fontWeight: FontWeight.bold),
                        radius: 100,
                        tabs: [
                          Tab(
                            text: " " +
                                " " +
                                " " +
                                " " +
                                "Contacts" +
                                " " +
                                " " +
                                " " +
                                " ",
                          ),
                          Tab(
                            text: " " +
                                " " +
                                " " +
                                " " +
                                "Address" +
                                " " +
                                " " +
                                " " +
                                " ",
                          ),
                          Tab(
                            text: " " +
                                " " +
                                " " +
                                " " +
                                "About me" +
                                " " +
                                " " +
                                " " +
                                " ",
                          ),
                          Tab(
                            text: " " +
                                " " +
                                " " +
                                " " +
                                "Attachments" +
                                " " +
                                " " +
                                " " +
                                " ",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: size.height * 0.25,
            left: size.height * 0.04,
            child: Container(
              width: size.height * 0.08,
              height: size.height * 0.08,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/icons/cardiconbg.png')),
              ),
              child: Image.asset(
                'assets/icons/call.png',
                width: 5,
                height: 5,
                fit: BoxFit.none,
              ),
            ),
          ),
          Positioned(
            bottom: size.height * 0.23,
            left: size.width * 0.28,
            right: size.width * 0.054,
            child: Container(
              //margin: EdgeInsets.only(left: 20, right: 20),
              height: size.height * 0.10,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    //color: Color.fromRGBO(176, 184, 218, 1).withOpacity(0.17),
                    color: Color.fromRGBO(240, 240, 230, 0.5).withOpacity(0.5),
                    blurRadius: 10,
                    offset: Offset(0, 8), // changes position of shadow
                  ),
                ],
              ),
              padding: EdgeInsets.all(5),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 4, top: 3, bottom: 3),
                    child: Text(
                      "+44 3577 695 711",
                      style: TextStyle(
                        color: Color.fromRGBO(77, 85, 119, 1),
                        fontSize: size.width * 0.043,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4, top: 2, bottom: 3),
                    child: Text(
                      "+44 8741 123 586",
                      style: TextStyle(
                        color: Color.fromRGBO(77, 85, 119, 1),
                        fontSize: size.width * 0.043,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: size.height * 0.11,
            left: size.height * 0.04,
            child: Container(
              width: size.height * 0.08,
              height: size.height * 0.08,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/icons/cardiconbg.png')),
              ),
              child: Image.asset(
                'assets/icons/email_24x24.png',
                width: 5,
                height: 5,
                fit: BoxFit.none,
              ),
            ),
          ),
          Positioned(
            bottom: size.height * 0.11,
            left: size.width * 0.28,
            right: size.width * 0.054,
            child: Container(
              height: size.height * 0.07,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    //color: Color.fromRGBO(176, 184, 218, 1).withOpacity(0.17),
                    color: Color.fromRGBO(240, 240, 230, 0.5).withOpacity(0.5),
                    blurRadius: 10,
                    offset: Offset(0, 8), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      "jhon.castle@zoopla.co.uk",
                      style: TextStyle(
                        color: Color.fromRGBO(113, 119, 181, 1),
                        fontSize: size.width * 0.043,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container tabletView(Size size) {
    final controller = PageController(viewportFraction: 1, keepPage: true);

    final pages = List.generate(
        2,
        (index) => ListRow(
              isTabView: true,
            ));
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          TopRowIcons(isMain: false),
          Positioned(
            top: size.width * 0.18,
            left: size.width * 0.02,
            right: size.width * 0.02,
            child: Container(
              width: size.width,
              height: size.height * 0.55 * size.aspectRatio,
              child: PageView.builder(
                controller: controller,
                // padding: EdgeInsets.all(2),
                scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                // itemCount: 2,
                itemBuilder: (_, index) {
                  return pages[index % pages.length];
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.05),
            child: Center(
                child: SmoothPageIndicator(
                    controller: controller, // PageController
                    count: pages.length,
                    effect: ExpandingDotsEffect(
                      activeDotColor: Color.fromRGBO(113, 119, 181, 1),
                      dotHeight: 10,
                      dotWidth: 10,
                      expansionFactor: 3.5,
                    ),
                    onDotClicked: (index) {})),
          ),
          Positioned(
            bottom: size.height * 0.38,
            left: 12,
            right: 12,
            child: Container(
              child: DefaultTabController(
                length: 4,
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          //color: Color.fromRGBO(176, 184, 218, 1).withOpacity(0.17),
                          color: Color.fromRGBO(240, 240, 230, 0.5)
                              .withOpacity(0.5),
                          blurRadius: 10,
                          offset: Offset(0, 8), // changes position of shadow
                        ),
                      ]),
                      child: ButtonsTabBar(
                        height: 50,
                        contentPadding: EdgeInsets.all(10),
                        backgroundColor: Colors.white,
                        unselectedBackgroundColor: Colors.transparent,
                        labelStyle: TextStyle(
                            color: Color.fromRGBO(113, 119, 181, 1),
                            fontWeight: FontWeight.bold),
                        unselectedLabelStyle: TextStyle(
                            color: Color.fromRGBO(194, 194, 205, 1),
                            fontWeight: FontWeight.bold),
                        radius: 100,
                        tabs: [
                          Tab(
                            text: " " +
                                " " +
                                " " +
                                " " +
                                "Contacts" +
                                " " +
                                " " +
                                " " +
                                " ",
                          ),
                          Tab(
                            text: " " +
                                " " +
                                " " +
                                " " +
                                "Address" +
                                " " +
                                " " +
                                " " +
                                " ",
                          ),
                          Tab(
                            text: " " +
                                " " +
                                " " +
                                " " +
                                "About me" +
                                " " +
                                " " +
                                " " +
                                " ",
                          ),
                          Tab(
                            text: " " +
                                " " +
                                " " +
                                " " +
                                "Attachments" +
                                " " +
                                " " +
                                " " +
                                " ",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: size.height * 0.25,
            left: size.height * 0.04,
            child: Container(
              width: size.height * 0.08,
              height: size.height * 0.08,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/icons/cardiconbg.png')),
              ),
              child: Image.asset(
                'assets/icons/call.png',
                width: 5,
                height: 5,
                fit: BoxFit.none,
              ),
            ),
          ),
          Positioned(
            bottom: size.height * 0.23,
            left: size.width * 0.28,
            right: size.width * 0.054,
            child: Container(
              //margin: EdgeInsets.only(left: 20, right: 20),
              height: size.height * 0.10,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    //color: Color.fromRGBO(176, 184, 218, 1).withOpacity(0.17),
                    color: Color.fromRGBO(240, 240, 230, 0.5).withOpacity(0.5),
                    blurRadius: 10,
                    offset: Offset(0, 8), // changes position of shadow
                  ),
                ],
              ),
              padding: EdgeInsets.all(5),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 4, top: 3, bottom: 3),
                    child: Text(
                      "+44 3577 695 711",
                      style: TextStyle(
                        color: Color.fromRGBO(77, 85, 119, 1),
                        fontSize: size.width * 0.043,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4, top: 2, bottom: 3),
                    child: Text(
                      "+44 8741 123 586",
                      style: TextStyle(
                        color: Color.fromRGBO(77, 85, 119, 1),
                        fontSize: size.width * 0.043,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: size.height * 0.11,
            left: size.height * 0.04,
            child: Container(
              width: size.height * 0.08,
              height: size.height * 0.08,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/icons/cardiconbg.png')),
              ),
              child: Image.asset(
                'assets/icons/email_24x24.png',
                width: 5,
                height: 5,
                fit: BoxFit.none,
              ),
            ),
          ),
          Positioned(
            bottom: size.height * 0.11,
            left: size.width * 0.28,
            right: size.width * 0.054,
            child: Container(
              height: size.height * 0.07,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    //color: Color.fromRGBO(176, 184, 218, 1).withOpacity(0.17),
                    color: Color.fromRGBO(240, 240, 230, 0.5).withOpacity(0.5),
                    blurRadius: 10,
                    offset: Offset(0, 8), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      "jhon.castle@zoopla.co.uk",
                      style: TextStyle(
                        color: Color.fromRGBO(113, 119, 181, 1),
                        fontSize: size.width * 0.043,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
