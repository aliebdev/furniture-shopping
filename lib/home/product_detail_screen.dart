import 'package:flutter/material.dart';
import 'package:furniture_shopping/home/widgets/product_detail_header.dart';
import 'package:furniture_shopping/models/item_model.dart';
import 'package:furniture_shopping/theme/app_spacings.dart';
import 'package:furniture_shopping/theme/colors.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key, required this.itemModel})
      : super(key: key);

  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductDetailHeader(itemModel: itemModel),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacings.xl),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemModel.title,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: AppSpacings.xl),
                Text(
                  itemModel.description,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
          const Spacer(),
          SafeArea(
            child: Container(
              margin: const EdgeInsets.all(AppSpacings.xl),
              height: 65,
              decoration: BoxDecoration(
                color: AppColors.darkGreen,
                borderRadius: BorderRadius.circular(50),
                gradient: const LinearGradient(
                  colors: [
                    AppColors.darkGreen,
                    AppColors.lightGreen,
                  ],
                  stops: [.2, .9],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: AppSpacings.xxxl),
                    child: Row(
                      children: [
                        Text(
                          "Add to cart",
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        const SizedBox(width: AppSpacings.s),
                        const Icon(
                          Icons.keyboard_double_arrow_right_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacings.xxxxl,
                      vertical: AppSpacings.xxl,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: const LinearGradient(
                        colors: [
                          AppColors.darkGreen,
                          AppColors.lightGreen,
                        ],
                        // stops: [.2, .9],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                    ),
                    child: Text(
                      itemModel.price,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
