import 'package:flutter/material.dart';

class TopRowIcons extends StatelessWidget {
  final bool isTabView, isMain;
  const TopRowIcons({Key? key, required this.isTabView, required this.isMain}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    if (isTabView) {
      return tabletView(size , context);
    } else {
      return mobileView(size , context);
    }
  }

  Positioned mobileView(Size size, BuildContext context){
    return Positioned(
      top: size.width * 0.03,
      left: size.width * 0.05,
      right: size.width * 0.05,
      child: Container(
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => {
                if(!this.isMain){
                  Navigator.pop(context)
                }
              },
              child: Image.asset(
                this.isMain ? 'assets/icons/Notification.png' : 'assets/icons/back.png',
                width: size.width * 0.08,
                height: size.width * 0.08,
              ),
            ),
            this.isMain ? Container(
              margin: EdgeInsets.only(left:size.width * 0.009 , top: size.width * 0.01),
              child: Text( "Your E-Card",
                style: TextStyle(color: Color.fromRGBO(77, 85, 119, 1), fontSize: size.width*0.05, fontWeight: FontWeight.w600),
              ),
            ) : Container(
              margin: EdgeInsets.only(left:size.width * 0.11),
              child: Text( "Card Details" ,
                style: TextStyle(color: Color.fromRGBO(77, 85, 119, 1), fontSize: size.width*0.05, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              child: this.isMain ?
              Image.asset(
                'assets/icons/settings.png',
                width: size.width * 0.083,
                height: size.width * 0.083,
              )
                  : Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(right: size.width * 0.03),
                      child: Image.asset(
                        'assets/icons/share.png',
                        width: size.width * 0.083,
                        height: size.width * 0.083,
                      )
                  ),
                  if (!this.isMain) Text(
                    "Edit",
                    style: TextStyle(color: Color.fromRGBO(112, 124, 177, 1), fontSize: size.width * 0.035, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned tabletView(Size size, BuildContext context){
    return Positioned(
      top: size.width * 0.03,
      left: size.width * 0.05,
      right: size.width * 0.05,
      child: Container(
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => {
                if(!this.isMain){
                  Navigator.pop(context)
                }
              },
              child: Image.asset(
                this.isMain ? 'assets/icons/Notification.png' : 'assets/icons/back.png',
                width: size.width * 0.065,
                height: size.width * 0.065,
              ),
            ),
            this.isMain ? Container(
              margin: EdgeInsets.only(left:size.width * 0.009 , top: size.width * 0.01),
              child: Text( "Your E-Card",
                style: TextStyle(color: Color.fromRGBO(77, 85, 119, 1), fontSize: size.width*0.05, fontWeight: FontWeight.w600),
              ),
            ) : Container(
              margin: EdgeInsets.only(left:size.width * 0.08),
              child: Text( "Card Details" ,
                style: TextStyle(color: Color.fromRGBO(77, 85, 119, 1), fontSize: size.width*0.05, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: size.width * 0.015),
              child: this.isMain ?
              Image.asset(
                'assets/icons/settings.png',
                width: size.width * 0.065,
                height: size.width * 0.065,
              )
                  : Row(
                children: [
                   Container(
                      margin: EdgeInsets.only(right: size.width * 0.01),
                      child: Image.asset(
                        'assets/icons/share.png',
                        width: size.width * 0.055,
                        height: size.width * 0.055,
                      )
                  ),
                   if (!this.isMain) Text(
                    "Edit",
                    style: TextStyle(color: Color.fromRGBO(112, 124, 177, 1), fontSize: size.width * 0.035, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
