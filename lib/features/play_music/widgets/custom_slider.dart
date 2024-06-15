import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    super.key,
    required this.onChanged,
    required this.val,
  });
  final void Function(double)? onChanged;
  final double val;
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        thumbColor: Colors.transparent,
        thumbShape: const RoundSliderThumbShape(
          enabledThumbRadius: 0.0,
        ),
      ),
      child: Slider(
        value: val,
        onChanged: onChanged,
        activeColor: ColorsManager.kTextFieldColor,
        inactiveColor: Colors.grey,
      ),
    );
  }
}

// class RoundSliderThumbShape extends SliderComponentShape {
//   @override
//   Size getPreferredSize(bool isEnabled, bool isDiscrete) {
//     return const Size(16.0, 40.0); // Adjust the size of the thumb
//   }

//   @override
//   void paint(
//     PaintingContext context,
//     Offset center, {
//     required Animation<double> activationAnimation,
//     required Animation<double> enableAnimation,
//     required bool isDiscrete,
//     required TextPainter labelPainter,
//     required RenderBox parentBox,
//     required SliderThemeData sliderTheme,
//     required TextDirection textDirection,
//     required double value,
//     required double textScaleFactor,
//     required Size sizeWithOverflow,
//   }) {
//     final Canvas canvas = context.canvas;
//     final Paint paint = Paint()
//       ..color = Colors.grey
//       ..strokeCap = StrokeCap.round
//       ..strokeWidth = 2.0;

//     canvas.drawCircle(center, 3.0, paint); // Draw a circle as the thumb
//   }
// }