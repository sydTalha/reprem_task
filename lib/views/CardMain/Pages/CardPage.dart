import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 12, right: 12),
      height: size.height * 0.45 * size.aspectRatio,
      width: size.width,

      decoration: BoxDecoration(
        color: Colors.white,
          //color: Color.fromRGBO(189, 189, 223, 0.2),
        image: DecorationImage(
          image: AssetImage("assets/icons/card bg.png"),
          fit: BoxFit.cover,
        ),

        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24)
        ),


      ),

      child: Column(
        children: [
          Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular((size.height * 0.13)/2),
            child: Image.asset('assets/icons/user.png', width: size.height * 0.13, height: size.height * 0.13, fit: BoxFit.cover,),
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
         SizedBox(height: size.width * 0.05),
         Text(
                "Regional Sales Manager at Zoopla",
                style: TextStyle(
                    color: Color.fromRGBO(138, 142, 163, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: size.height * 0.024
                ),
              ),
          Spacer()

        ],
      ),

    );
  }
}
