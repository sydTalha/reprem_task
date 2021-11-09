import 'package:flutter/material.dart';
import 'package:reprem_task/utils/UI/ResponsiveWidget.dart';

class ListRow extends StatelessWidget {
  final bool isTabView;
  const ListRow({Key? key, required this.isTabView}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    if(isTabView){
      return tabletView(size);
    }
    else{
      return mobileView(size);
    }
  }

  Container mobileView(Size size) {
    return Container(

      height: size.height * 3.38,
      width: size.width * 2.904,
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: size.height * 0.13,
            height: size.height * 0.1,
            //margin: EdgeInsets.only(top: 12),
            child: Stack(
              children: [
                Positioned(
                  child: Center(
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular((size.height * 0.1)/2),
                        child: Image.asset('assets/icons/user.png', width: size.height * 0.1, height: size.height * 0.1, fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  bottom: 1,
                  right: -1,
                  child: Container(
                    width: size.height * 0.045,
                    height: size.height * 0.045,
                    child: Image.asset('assets/icons/cardiconbg.png'),
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
                fontSize: size.height * 0.027
            ),
          ),
          Spacer(),
          Text(
            "Regional Sales Manager at Zoopla",
            style: TextStyle(
                color: Color.fromRGBO(138, 142, 163, 1),
                fontWeight: FontWeight.w400,
                fontSize: size.height * 0.024
            ),
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
                          image: AssetImage(
                              'assets/icons/socialbg.png'
                          )
                      )
                  ),
                  child: Center(
                      child: Image.asset('assets/icons/linkedin.png',
                        width: size.height * 0.035,
                        height: size.height * 0.035,)
                  ),
                ),
                Container(
                  width: size.height * 0.12,
                  height: size.height * 0.12,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/icons/socialbg.png'
                          )
                      )
                  ),
                  child: Center(
                      child: Image.asset('assets/icons/twitter.png',
                        width: size.height * 0.035,
                        height: size.height * 0.035,)
                  ),
                ),
                Container(
                  width: size.height * 0.12,
                  height: size.height * 0.12,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/icons/socialbg.png'
                          )
                      )
                  ),
                  child: Center(
                      child: Image.asset('assets/icons/instagram_24x24.png',
                        width: size.height * 0.035,
                        height: size.height * 0.035,)
                  ),
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
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.03),

      height: size.height * 3.38,
      width: size.width * 2.904,
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
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(240, 240, 230, 0.5).withOpacity(0.5),
            blurRadius: 10,
            offset: Offset(0, 8), // changes position of shadow
          ),
        ],
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
                        borderRadius: BorderRadius.circular((size.height * 0.1)/2),
                        child: Image.asset('assets/icons/user.png', width: size.height * 0.1, height: size.height * 0.1, fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  bottom: 1,
                  right: -1,
                  child: Container(
                    width: size.height * 0.045,
                    height: size.height * 0.045,
                    child: Image.asset('assets/icons/cardiconbg.png'),
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
                fontSize: size.height * 0.027
            ),
          ),
          Spacer(),
          Text(
            "Regional Sales Manager at Zoopla",
            style: TextStyle(
                color: Color.fromRGBO(138, 142, 163, 1),
                fontWeight: FontWeight.w400,
                fontSize: size.height * 0.024
            ),
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
                      image: AssetImage(
                        'assets/icons/socialbg.png'
                      )
                    )
                  ),
                  child: Center(
                      child: Image.asset('assets/icons/linkedin.png',
                        width: size.height * 0.035,
                        height: size.height * 0.035,)
                  ),
                ),
                Container(
                  width: size.height * 0.12,
                  height: size.height * 0.12,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/icons/socialbg.png'
                          )
                      )
                  ),
                  child: Center(
                      child: Image.asset('assets/icons/twitter.png',
                        width: size.height * 0.035,
                        height: size.height * 0.035,)
                  ),
                ),
                Container(
                  width: size.height * 0.12,
                  height: size.height * 0.12,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/icons/socialbg.png'
                          )
                      )
                  ),
                  child: Center(
                      child: Image.asset('assets/icons/instagram_24x24.png',
                        width: size.height * 0.035,
                        height: size.height * 0.035,)
                  ),
                ),

              ],
            ),
          )


        ],
      ),

      // child: Stack(
      //   alignment: Alignment.center,
      //
      //   children: [
      //     Positioned(
      //
      //       child: ClipRRect(
      //         borderRadius: BorderRadius.circular((size.height * 0.1)/2),
      //         child: Image.asset('assets/icons/user.png', width: size.height * 0.1, height: size.height * 0.1, fit: BoxFit.cover,),
      //       ),
      //     ),
      //     Positioned(
      //       top: size.height * 0.149,
      //       left: size.width * 1.07,
      //       child: Container(
      //         height: size.height * 0.09,
      //         width: size.width * 0.2,
      //         decoration: BoxDecoration(
      //           image: DecorationImage(
      //             image: AssetImage("assets/icons/cardiconbg.png"),
      //             fit: BoxFit.fill,
      //           ),
      //           // borderRadius: BorderRadius.only(
      //           //     topLeft: Radius.circular(24),
      //           //     topRight: Radius.circular(24),
      //           //     bottomLeft: Radius.circular(24),
      //           //     bottomRight: Radius.circular(24)),
      //           // boxShadow: [
      //           //   BoxShadow(
      //           //     //color: Color.fromRGBO(176, 184, 218, 1).withOpacity(0.17),
      //           //     color: Colors.white.withOpacity(1),
      //           //     spreadRadius: 4,
      //           //     blurRadius: 0,
      //           //     offset: Offset(-1, 0), // changes position of shadow
      //           //   ),
      //           // ],
      //         ),
      //       ),
      //     ),
      //     Positioned(
      //       top: size.height * 0.26,
      //       left: size.width * 0.73,
      //       child: Text(
      //         "John Castle",
      //         style: TextStyle(
      //             color: Color.fromRGBO(77, 85, 119, 1),
      //             fontSize: size.width * 0.1,
      //             fontWeight: FontWeight.w600),
      //       ),
      //     ),
      //     Positioned(
      //       top: size.height * 0.337,
      //       left: size.width * 0.4,
      //       child: Text(
      //         "Regional Sales Manager at Zoopla",
      //         style: TextStyle(
      //             color: Color.fromRGBO(77, 85, 119, 0.5),
      //             fontSize: size.width * 0.08,
      //             fontWeight: FontWeight.w600),
      //       ),
      //     ),
      //     Positioned(
      //       top: size.height * 0.38,
      //       left: size.width * 0.6,
      //       child: Container(
      //         height: size.height * 0.11,
      //         width: size.width * 0.23,
      //         decoration: BoxDecoration(
      //           image: DecorationImage(
      //             image: AssetImage("assets/icons/cardiconbg.png"),
      //             fit: BoxFit.fill,
      //           ),
      //         ),
      //       ),
      //     ),
      //     Positioned(
      //       top: size.height * 0.413,
      //       left: size.width * 0.66,
      //       child: Container(
      //         width: size.width * 0.11,
      //         height: size.width * 0.11,
      //         decoration: BoxDecoration(
      //           image: DecorationImage(
      //               fit: BoxFit.fill,
      //               image: AssetImage('assets/icons/linkedin.png')),
      //         ),
      //       ),
      //     ),
      //     Positioned(
      //       top: size.height * 0.38,
      //       left: size.width * 0.9,
      //       child: Container(
      //         height: size.height * 0.11,
      //         width: size.width * 0.23,
      //         decoration: BoxDecoration(
      //           image: DecorationImage(
      //             image: AssetImage("assets/icons/cardiconbg.png"),
      //             fit: BoxFit.fill,
      //           ),
      //         ),
      //       ),
      //     ),
      //     Positioned(
      //       top: size.height * 0.413,
      //       left: size.width * 0.96,
      //       child: Container(
      //         width: size.width * 0.12,
      //         height: size.width * 0.12,
      //         decoration: BoxDecoration(
      //           image: DecorationImage(
      //               fit: BoxFit.fill,
      //               image: AssetImage('assets/icons/twitter.png')),
      //         ),
      //       ),
      //     ),
      //     Positioned(
      //       top: size.height * 0.38,
      //       left: size.width * 1.2,
      //       child: Container(
      //         height: size.height * 0.11,
      //         width: size.width * 0.23,
      //         decoration: BoxDecoration(
      //           image: DecorationImage(
      //             image: AssetImage("assets/icons/cardiconbg.png"),
      //             fit: BoxFit.fill,
      //           ),
      //         ),
      //       ),
      //     ),
      //     Positioned(
      //       top: size.height * 0.413,
      //       left: size.width * 1.27,
      //       child: Container(
      //         width: size.width * 0.12,
      //         height: size.width * 0.12,
      //         decoration: BoxDecoration(
      //           image: DecorationImage(
      //               fit: BoxFit.fill,
      //               image: AssetImage('assets/icons/instagram_24x24.png')),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }

}
