

import 'package:flutter/cupertino.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget tab;

  const ResponsiveWidget({Key? key, required this.mobile, required this.tab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 768){
        return mobile;
      }
      else{
        return tab;
      }
    });
  }
}
