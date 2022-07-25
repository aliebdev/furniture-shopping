import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../theme/app_spacings.dart';
import '../../theme/colors.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacings.xl),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          final isSelected = currentIndex == index;
          return InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacings.xxl,
                vertical: AppSpacings.l,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSpacings.xxxl),
                gradient: isSelected
                    ? const LinearGradient(
                        colors: [
                          AppColors.lightGreen,
                          AppColors.darkGreen,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )
                    : const LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.transparent,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  color: isSelected ? Colors.white : AppColors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
