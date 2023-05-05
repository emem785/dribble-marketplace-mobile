import 'package:flutter/material.dart';

import '../../../../Core/Routing/dimensions.dart';
import '../../../../Core/theme/colors.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({super.key, required this.currentPage});

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    final selectedDecoration = BoxDecoration(
      color: Colors.black87,
      borderRadius: BorderRadius.circular(32),
    );

    const unselectedDecoration = BoxDecoration(
      color: kCaptionColor,
      shape: BoxShape.circle,
    );
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 4,
          width: currentPage == 0 ? 16 : 4,
          decoration:
              currentPage == 0 ? selectedDecoration : unselectedDecoration,
        ),
        const XBox(4),
        Container(
          height: 4,
          width: currentPage == 1 ? 16 : 4,
          decoration:
              currentPage == 1 ? selectedDecoration : unselectedDecoration,
        ),
        const XBox(4),
        Container(
          height: 4,
          width: currentPage == 2 ? 16 : 4,
          decoration:
              currentPage == 2 ? selectedDecoration : unselectedDecoration,
        ),
      ],
    );
  }
}
