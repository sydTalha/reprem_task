import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reprem_task/controllers/CardMainController/CardMainController.dart';
import 'package:reprem_task/views/CardDetail/CardDetail.dart';
import 'package:reprem_task/views/CardMain/Row/ListRow.dart';
import 'package:reprem_task/views/common/TopRowIcons.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Pages/CardPage.dart';

class CardMain extends StatefulWidget {
  const CardMain({Key? key}) : super(key: key);

  @override
  _CardMainState createState() => _CardMainState();
}

class _CardMainState extends State<CardMain> {

  var optList = [];
  var controller = CardMainController();

  final pageController = PageController(viewportFraction: 1, keepPage: true);

  final pages = List.generate(
      2, (index) => CardPage());

  @override
  void initState() {
    super.initState();

    this.optList = controller.generateShareOptions();

  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;


    return Scaffold(
      body: SafeArea(

        child: size.shortestSide < 600 ? mobileView(size) : tabletView(size),

      ),
    );
  }

  Container mobileView(Size size){
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          TopRowIcons(isMain: true, isTabView: false),
          Positioned(
            top: size.height * 0.08,
            left: size.width * 0.02,
            right: size.width * 0.02,
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CardDetail(),));
              },
              child: Container(
                height: size.height * 0.7 * size.aspectRatio,
                width: size.width,
                //margin: EdgeInsets.only(left: size.width * 0.02, right: size.width * 0.02),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24)
                  ),

                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(131, 143, 197, 0.01)
                          .withOpacity(0.1),
                      // .withBlue(100),
                      blurRadius: 7,
                      offset:
                      Offset(5,9), // changes position of shadow
                    ),
                  ],
                ),

                child: PageView.builder(
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              )
            ),
          ),

          Positioned(
              child: Padding(
                padding: EdgeInsets.only(top: size.height * 0.06),
                child: Center(
                  child: SmoothPageIndicator(
                      controller: pageController, // PageController
                      count: pages.length,
                      effect: ExpandingDotsEffect(
                        dotHeight: 7,
                        dotWidth: 8,
                        expansionFactor:2.5 ,
                      ), // your preferred effect
                      onDotClicked: (index) {}),
                ),
              )
          ),
          Positioned(
            left: 15,
            right: 15,
            child: Padding(
              padding: EdgeInsets.only(top: size.height * 0.55),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Share your E-Card",
                      style: TextStyle(
                          color: Color.fromRGBO(112, 124, 177, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: size.height * 0.02
                      ),
                    ),
                    Container(
                      width: size.width ,
                      height: 0.6 * size.width,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                            bottomLeft: Radius.circular(24),
                            bottomRight: Radius.circular(24)
                        ),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Color.fromRGBO(131, 143, 197, 1)
                        //         .withOpacity(0.3)
                        //         .withBlue(150),
                        //     blurRadius: 45,
                        //     offset:
                        //     Offset(0, 20), // changes position of shadow
                        //   ),
                        // ],
                      ),

                      margin: EdgeInsets.only(top: 15 * size.aspectRatio),
                      child: ListView.builder(
                        padding: EdgeInsets.all(2),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: this.optList.length,
                        itemBuilder: (context, index) {
                          return ListRow(size: size, option: this.optList[index], isTabView: false,);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }

  Container tabletView(Size size){
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          TopRowIcons(isMain: true, isTabView: true),
          Positioned(
            top: size.height * 0.1,
            left: size.width * 0.04,
            right: size.width * 0.04,
            child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CardDetail(),));
                },

                child: Container(
                  height: size.height * 0.45 * size.aspectRatio,
                  width: size.width,

                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(131, 143, 197, 0.01)
                            .withOpacity(0.15),
                            // .withBlue(100),
                        blurRadius: 8,
                        offset:
                        Offset(9,10), // changes position of shadow
                      ),
                    ],
                  ),

                  child: PageView.builder(
                    controller: pageController,
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (_, index) {
                      return pages[index % pages.length];
                    },
                  ),
                )
            ),
          ),

          Positioned(
              child: Padding(
                padding: EdgeInsets.only(bottom: size.height * 0.05),
                child: Center(
                  child: SmoothPageIndicator(
                      controller: pageController, // PageController
                      count: pages.length,
                      effect: ExpandingDotsEffect(
                        dotHeight: 11,
                        dotWidth: 15,
                        expansionFactor:2.5 ,
                      ), // your preferred effect
                      onDotClicked: (index) {}),
                ),
              )
          ),
          Positioned(
            left: size.width * 0.035,
            child: Padding(
              padding: EdgeInsets.only(top: size.height * 0.5),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Share your E-Card",
                      style: TextStyle(
                          color: Color.fromRGBO(112, 124, 177, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: size.height * 0.022
                      ),
                    ),
                    Container(
                      width: size.width,
                      height: 450 * size.aspectRatio,

                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                            bottomLeft: Radius.circular(24),
                            bottomRight: Radius.circular(24)
                        ),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Color.fromRGBO(131, 143, 197, 1)
                        //         .withOpacity(0.3)
                        //         .withBlue(150),
                        //     blurRadius: 45,
                        //     offset:
                        //     Offset(0, 20), // changes position of shadow
                        //   ),
                        // ],
                      ),

                      margin: EdgeInsets.only(top: 15 * size.aspectRatio),
                      child: ListView.builder(
                        padding: EdgeInsets.all(2),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: this.optList.length,
                        itemBuilder: (context, index) {
                          return ListRow(size: size, option: this.optList[index], isTabView: true,);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          // Positioned(
          //   left: 15,
          //   child: Padding(
          //     padding: EdgeInsets.only(top: size.height * 0.55),
          //     child: Center(
          //       child: Container(
          //         width: size.width,
          //         height: size.height * 0.25,
          //         color: Colors.grey,
          //         child: ListView.builder(
          //           padding: EdgeInsets.all(2),
          //           scrollDirection: Axis.horizontal,
          //           shrinkWrap: true,
          //           itemCount: 6,
          //           itemBuilder: (context, index) {
          //             return ListRow(size: size,);
          //           },
          //         ),
          //       )
          //     ),
          //   ),
          // )

        ],
      ),

    );
  }
}
