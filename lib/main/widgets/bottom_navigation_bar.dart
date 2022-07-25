import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../../theme/app_spacings.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation(
      {Key? key, required this.currentIndex, required this.onTap})
      : super(key: key);

  final int currentIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(AppSpacings.xxxl),
          topRight: Radius.circular(AppSpacings.xxxl),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: AppSpacings.l,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(AppSpacings.xxxl),
          topRight: Radius.circular(AppSpacings.xxxl),
        ),
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              bottomAppbarItems.length,
              (index) => IconButton(
                onPressed: () {
                  onTap(index);
                },
                icon: SvgPicture.asset(
                  index == currentIndex
                      ? bottomAppbarItems[index]["selected"]!
                      : bottomAppbarItems[index]["unSelected"]!,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
