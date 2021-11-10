import 'package:flutter/material.dart';
import 'package:reprem_task/utils/Constants.dart';
import 'package:reprem_task/utils/UI/ResponsiveWidget.dart';

class ListRow extends StatelessWidget {
  final bool isTabView;
  const ListRow({Key? key, required this.isTabView}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    if (isTabView) {
      return tabletView(size);
    } else {
      return mobileView(size);
    }
  }

  Container mobileView(Size size) {
    return Container(
      height: size.height * 3.38,
      width: size.width * 2.904,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/icons/card bg.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: size.height * 0.12,
            height: size.height * 0.13,
            //margin: EdgeInsets.only(top: 12),
            child: Stack(
              children: [
                Positioned(
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(top: size.width * 0.02),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular((size.height * 0.1) / 2),
                        child: Image.asset(
                          'assets/icons/user.png',
                          width: size.height * 0.1,
                          height: size.height * 0.1,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 1,
                  right: -0.5,
                  child: Container(
                    width: size.height * 0.046,
                    height: size.height * 0.046,
                    child: Image.asset('assets/icons/circle_zoopla.png'),
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Container(
            child: Text(
              "John Castle",
              style: TextStyle(
                  color: Color.fromRGBO(77, 85, 119, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: size.height * 0.026),
            ),
          ),
          Spacer(),
          Text(
            "Regional Sales Manager at Zoopla",
            style: TextStyle(
                color: Color.fromRGBO(138, 142, 163, 1),
                fontWeight: FontWeight.w400,
                fontSize: size.height * 0.020),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(bottom: size.height * 0.001),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.height * 0.11,
                  height: size.height * 0.11,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icons/socialbg.png'))),
                  child: Center(
                      child: Image.asset(
                    'assets/icons/linkedin.png',
                    width: size.height * 0.035,
                    height: size.height * 0.035,
                  )),
                ),
                Container(
                  width: size.height * 0.11,
                  height: size.height * 0.11,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icons/socialbg.png'))),
                  child: Center(
                      child: Image.asset(
                    'assets/icons/twitter.png',
                    width: size.height * 0.035,
                    height: size.height * 0.035,
                  )),
                ),
                Container(
                  width: size.height * 0.11,
                  height: size.height * 0.11,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icons/socialbg.png'))),
                  child: Center(
                      child: Image.asset(
                    'assets/icons/instagram_24x24.png',
                    width: size.height * 0.035,
                    height: size.height * 0.035,
                  )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container tabletView(Size size) {
    print('tabview');
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      // height: size.height * 3.3,
      // width: size.width * 2.904,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/icons/card bg.png"),
          fit: BoxFit.none,
        ),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24)),
        // boxShadow: [
        //   BoxShadow(
        //     color: Color.fromRGBO(240, 240, 230, 0.5).withOpacity(0.5),
        //     blurRadius: 10,
        //     offset: Offset(0, 8), // changes position of shadow
        //   ),
        // ],
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Spacer(),
          Container(
            width: size.height * 0.13,
            height: size.height * 0.1,
            child: Stack(
              children: [
                Positioned(
                  child: Center(
                    child: Container(
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular((size.height * 0.1) / 2),
                        child: Image.asset(
                          'assets/icons/user.png',
                          width: size.height * 0.1,
                          height: size.height * 0.1,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: size.width * 0.075,
                  right: size.width * 0.008,
                  child: Container(
                    width: size.height * 0.046,
                    height: size.height * 0.046,
                    child: Image.asset('assets/icons/circle_zoopla.png'),
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Text(
            "John Castle",
            style: TextStyle(
                color: Color.fromRGBO(77, 85, 119, 1),
                fontWeight: FontWeight.w600,
                fontSize: size.height * 0.027),
          ),
          Spacer(),
          Text(
            "Regional Sales Manager at Zoopla",
            style: TextStyle(
                color: Color.fromRGBO(138, 142, 163, 1),
                fontWeight: FontWeight.w400,
                fontSize: size.height * 0.024),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(bottom: size.height * 0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.height * 0.12,
                  height: size.height * 0.12,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icons/socialbg.png'))),
                  child: Center(
                      child: Image.asset(
                    'assets/icons/linkedin.png',
                    width: size.height * 0.035,
                    height: size.height * 0.035,
                  )),
                ),
                Container(
                  width: size.height * 0.12,
                  height: size.height * 0.12,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icons/socialbg.png'))),
                  child: Center(
                      child: Image.asset(
                    'assets/icons/twitter.png',
                    width: size.height * 0.035,
                    height: size.height * 0.035,
                  )),
                ),
                Container(
                  width: size.height * 0.12,
                  height: size.height * 0.12,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icons/socialbg.png'))),
                  child: Center(
                      child: Image.asset(
                    'assets/icons/instagram_24x24.png',
                    width: size.height * 0.035,
                    height: size.height * 0.035,
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
