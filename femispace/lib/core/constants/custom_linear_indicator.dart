// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomLinearIndicator extends StatelessWidget {
  final double percent;
  final Color? backgroundColor;
  final Color? progressColor;
  final double? lineHeight;
  final double? borderRadiusValue;

  const CustomLinearIndicator(
      {super.key,
      required this.percent,
      this.backgroundColor,
      this.progressColor,
      this.lineHeight,
      this.borderRadiusValue});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadiusValue ?? 20),
      child: CustomPaint(
        painter: _LinearIndicatorPainter(
            backgroundColor: backgroundColor,
            progressColor: progressColor,
            borderRadiusValue: borderRadiusValue,
            percent: percent),
        child: Container(
          height: lineHeight ?? 10,
        ),
      ),
    );
  }
}

class _LinearIndicatorPainter extends CustomPainter {
  final double percent;
  final Color? backgroundColor;
  final Color? progressColor;
  final double? borderRadiusValue;
  _LinearIndicatorPainter(
      {required this.percent,
      required this.backgroundColor,
      required this.progressColor,
      required this.borderRadiusValue});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = progressColor ?? Colors.blue
      ..style = PaintingStyle.fill;

    final backgroundPaint = Paint()
      ..color = backgroundColor ?? Colors.grey.shade300
      ..style = PaintingStyle.fill;

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height),
        Radius.circular(borderRadiusValue ?? 20),
      ),
      backgroundPaint,
    );

    final fillWidth = size.width * percent;
    if (fillWidth > 0) {
      final radius = borderRadiusValue ?? 20;
      final rect = Rect.fromLTWH(0, 0, fillWidth, size.height);

      // Dolum çizgisi
      canvas.drawRRect(
        RRect.fromRectAndCorners(
          rect,
          topLeft: Radius.circular(radius),
          bottomLeft: Radius.circular(radius),
          topRight:
              fillWidth >= size.width ? Radius.circular(radius) : Radius.zero,
          bottomRight:
              fillWidth >= size.width ? Radius.circular(radius) : Radius.zero,
        ),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
