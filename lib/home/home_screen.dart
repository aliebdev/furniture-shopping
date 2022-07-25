import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/app_spacings.dart';
import '../theme/colors.dart';
import 'widgets/category_widget.dart';
import 'widgets/gradient_text.dart';

part 'widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const _HomeAppBar(),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned(
            top: -size.height * .35,
            left: -size.width * .31,
            child: SvgPicture.asset(
              "assets/icons/Line.svg",
              height: size.height,
              width: size.width,
            ),
          ),
          Positioned.fill(
            top: kToolbarHeight + 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const _HeaderText(),
                const SizedBox(height: AppSpacings.xxxl),
                const CategoryWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _HeaderText extends StatelessWidget {
  const _HeaderText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Find",
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: AppColors.black,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(width: AppSpacings.s),
            GradientText(
              text: "perfect",
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: AppColors.black,
                  ),
              gradient: const LinearGradient(
                colors: [
                  AppColors.darkGreen,
                  AppColors.lightGreen,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ],
        ),
        const SizedBox(width: AppSpacings.s),
        Text(
          "furniture for you",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline4!.copyWith(
                color: AppColors.black,
              ),
        ),
      ],
    );
  }
}
