import 'package:flutter/material.dart';

class Iconbutton extends StatelessWidget {
  const Iconbutton({super.key, required this.onpressed, required this.icon});
  final Function() onpressed;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onpressed, icon: icon);
  }
}
class Elevatedbutton extends StatelessWidget {
  const Elevatedbutton({super.key, required this.onpressed, required this.widget, required this.style});
  final Function() onpressed;
  final Widget widget;
  final ButtonStyle style;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onpressed,style: style, child: widget,);
  }
}
class Textbutton extends StatelessWidget {
  const Textbutton({super.key, required this.onpressed, required this.widget, required this.style});
  final Function() onpressed;
  final Widget widget;
  final ButtonStyle style;
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onpressed,style: style, child: widget,);
  }
}