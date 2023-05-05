import 'package:dribble_design_marketplace/Core/Routing/dimensions.dart';
import 'package:dribble_design_marketplace/Core/theme/colors.dart';
import 'package:flutter/material.dart';

class SeeMoreWidget extends StatelessWidget {
  const SeeMoreWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PrevNextContainer(iconData: Icons.chevron_left),
          ListView.builder(
            itemCount: 3,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Center(child: Text(index.toString())),
              );
            },
          ),
          Text("...."),
          XBox(16),
          PrevNextContainer(iconData: Icons.chevron_right),
          Spacer(),
          Text(
            "See more",
            style: TextStyle(color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}

class PrevNextContainer extends StatelessWidget {
  const PrevNextContainer({
    Key? key,
    required this.iconData,
  }) : super(key: key);

  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 8,
            spreadRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: Icon(iconData),
      ),
    );
  }
}
