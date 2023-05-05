import 'package:flutter/material.dart';

import '../../../../Core/Routing/dimensions.dart';
import '../../../../Core/theme/colors.dart';
import '../../../../Core/theme/theme.dart';

class TopReviews extends StatelessWidget {
  const TopReviews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Text("Top Reviews"),
            YBox(16),
            Text("Showing 3 of 2.3k+ reviews"),
          ],
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                AppTheme.getMaterialProperty<Color>(kDefaultBackground),
            shape: AppTheme.getMaterialProperty<OutlinedBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(color: Colors.black12),
            )),
          ),
          onPressed: () {},
          child: Row(
            children: [
              const Text("Popular", style: TextStyle(color: Colors.black87)),
              const XBox(16),
              Transform.rotate(
                angle: 3.14 / 2,
                child: const Icon(
                  Icons.chevron_right,
                  color: kCaptionColor,
                  size: 20,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
