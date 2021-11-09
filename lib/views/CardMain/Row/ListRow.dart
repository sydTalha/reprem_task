import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reprem_task/models/ShareCardModel.dart';

class ListRow extends StatelessWidget {
  final Size size;
  final ShareCardModel option;
  final bool isTabView;
  const ListRow({Key? key, required this.size, required this.option, required this.isTabView}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    if(isTabView){
      return tabletView(size);
    }
    else{
      return mobileView(size);
    }


  }

  Container mobileView(Size size){
    return Container(
      width: 280 * size.aspectRatio,
      height: size.height * 0.30,
      margin: EdgeInsets.only(left: 5, right: 8, bottom: 14, top: 8),
      decoration: BoxDecoration(
        color: Color.fromRGBO(248, 250, 248, 1),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24)
        ),

        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(131, 143, 197, 0.5)
                .withOpacity(0.13),

            blurRadius: 6,
            offset:
            Offset(6, 6), // changes position of shadow
          ),
        ],

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 10, left: 10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icons/cardiconbg.png'),
                    fit: BoxFit.cover
                )
            ),
            child: Image.asset(
              this.option.image,
              width: 30,
              height: 30,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Text(
              this.option.name,
              style: TextStyle(
                  fontSize: size.height * 0.022,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(77, 85, 119, 1)
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Text(
              this.option.desc,
              maxLines: 3,
              style: TextStyle(
                  fontSize: size.height * 0.02,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(112, 124, 177, 1)
              ),
            ),
          )
        ],
      ),
    );
  }

  Container tabletView(Size size){
    return Container(
      width: 380 * size.aspectRatio,
      height: size.height * 0.10,
      margin: EdgeInsets.only(left: 5, right: 8, bottom: 8, top: 8),
      decoration: BoxDecoration(
        color: Color.fromRGBO(248, 250, 248, 1),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24)
        ),

        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(131, 143, 197, 0.7)
                .withOpacity(0.15),

            blurRadius: 11,
            offset:
            Offset(6, 6), // changes position of shadow
          ),
        ],

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 80,
            height: 80,
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 10, left: 10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icons/cardiconbg.png'),
                    fit: BoxFit.cover
                )
            ),
            child: Image.asset(
              this.option.image,
              width: 50,
              height: 50,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Text(
              this.option.name,
              style: TextStyle(
                  fontSize: size.height * 0.022,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(77, 85, 119, 1)
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: size.height * 0.03),
            child: Text(
              this.option.desc,
              maxLines: 3,
              style: TextStyle(
                  fontSize: size.height * 0.02,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(112, 124, 177, 1)
              ),
            ),
          )
        ],
      ),
    );
  }

}
