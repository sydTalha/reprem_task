import 'package:flutter/material.dart';

class TopRowIcons extends StatelessWidget {
  final bool isMain;
  const TopRowIcons({
    Key? key,
    required this.isMain
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Positioned(
      top: 1,
      left: 12,
      right: 20,
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
            Container(
              margin: EdgeInsets.only(left:size.width * 0.08),
              child: Text(
                this.isMain ? "Your E-Card" : "Card Details",
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
                    style: TextStyle(color: Color.fromRGBO(112, 124, 177, 1), fontSize: size.width * 0.04, fontWeight: FontWeight.w700),
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
