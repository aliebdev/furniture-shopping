import 'package:flutter/material.dart';
import 'package:furniture_shopping/theme/app_spacings.dart';
import 'package:furniture_shopping/theme/colors.dart';

import '../../models/item_model.dart';

class ProductDetailHeader extends StatefulWidget {
  const ProductDetailHeader({Key? key, required this.itemModel})
      : super(key: key);

  final ItemModel itemModel;

  @override
  State<ProductDetailHeader> createState() => _ProductDetailHeaderState();
}

class _ProductDetailHeaderState extends State<ProductDetailHeader> {
  int selectedIndex = 0;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.all(AppSpacings.xl),
        padding: const EdgeInsets.all(AppSpacings.l),
        height: size.height / 2,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(AppSpacings.xxl),
          image: DecorationImage(
            image: NetworkImage(widget.itemModel.images[selectedIndex]),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white38,
                    child: Icon(
                      Icons.chevron_left_rounded,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: AppColors.red,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Column(
                children: List.generate(
                  widget.itemModel.images.length,
                  (index) => InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      height: 65,
                      width: 65,
                      margin: const EdgeInsets.only(bottom: AppSpacings.m),
                      padding: const EdgeInsets.only(bottom: AppSpacings.m),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(AppSpacings.l),
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                        image: DecorationImage(
                          image: NetworkImage(widget.itemModel.images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: selectedIndex == index
                          ? const CircleAvatar(
                              backgroundColor: Colors.white30,
                              child: Icon(
                                Icons.check,
                                color: Colors.black,
                                size: 30,
                              ),
                            )
                          : const SizedBox.shrink(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
