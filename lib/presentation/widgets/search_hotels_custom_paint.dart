import 'package:flutter/material.dart';
import 'package:hotels_task/presentation/widgets/custom_shape_painter.dart';

class SearchHotelsCustomPaint extends StatelessWidget {
  const SearchHotelsCustomPaint({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 60,
      child: CustomPaint(
        // size: const Size(200, 100),
        painter: CustomShapePainter(),
        child: const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 12),
            child: Text(
              'Hotels Search',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
