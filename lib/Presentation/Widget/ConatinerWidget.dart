import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget(
      {super.key,
      required this.height,
      required this.width,
      required this.widget,
      required this.boxdecoration});
  final double height;
  final double width;
  final Widget widget;
  final BoxDecoration boxdecoration;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: boxdecoration,
      child: widget,
    );
  }
}
