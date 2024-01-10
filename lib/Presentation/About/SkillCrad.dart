import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:personal_website/Common/Colors&Size.dart';

class SkillCard extends StatelessWidget {
  const SkillCard(
      {super.key,
      required this.height,
      required this.elevation,
      required this.language,
      required this.mainpercentage,
      required this.subpercentage1,
      required this.subpercentage2});
  final double height;
  final double elevation;
  final String language;
  final String mainpercentage;
  final String subpercentage1;
  final String subpercentage2;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      color: ktransparent,
      child: Container(
        height: height,
        width: height,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color.fromARGB(255, 87, 78, 69), kblack],
          ),
          borderRadius:
              BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              mainpercentage,
              style: const TextStyle(letterSpacing: 5, fontSize: 13),
            ),
            const SizedBox(height: 10),
            CircularSliderWidget(
              percentage: 75,
              size: 100.0,
            ),
                   h10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(subpercentage1),
                           h5,
                    const Text(
                      'Last week',
                      style: TextStyle(color:kgrey),
                    )
                  ],
                ),
                const SizedBox(height: 50, child: VerticalDivider()),
                Column(
                  children: [
                    Text(subpercentage2),
                   h5,
                    const Text('Last week',
                        style: TextStyle(color:kgrey))
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CircularSliderWidget extends StatefulWidget {
  final double size;
  final int percentage;

  CircularSliderWidget({required this.size, required this.percentage});

  @override
  _CircularSliderWidgetState createState() => _CircularSliderWidgetState();
}

class _CircularSliderWidgetState extends State<CircularSliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CustomPaint(
          painter: CircularSliderPainter(
            percentage: widget.percentage,
            sliderColor: const Color.fromARGB(255, 79, 67, 44),
            baseColor: Colors.transparent,
          ),
          size: Size(widget.size, widget.size),
        ),
        Text(
          '${widget.percentage}%',
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class CircularSliderPainter extends CustomPainter {
  final int percentage;
  final Color sliderColor;
  final Color baseColor;

  CircularSliderPainter({
    required this.percentage,
    required this.sliderColor,
    required this.baseColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    const double strokeWidth = 10.0;
    final double radius = size.width / 2 - strokeWidth / 2;

    final Paint basePaint = Paint()
      ..color = baseColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    final Paint sliderPaint = Paint()
      ..color = sliderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    const double startAngle = -math.pi / 2;
    final double sweepAngle = 2 * math.pi * (percentage / 100);

    canvas.drawCircle(size.center(Offset.zero), radius, basePaint);
    canvas.drawArc(
      Rect.fromCircle(center: size.center(Offset.zero), radius: radius),
      startAngle,
      sweepAngle,
      false,
      sliderPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
