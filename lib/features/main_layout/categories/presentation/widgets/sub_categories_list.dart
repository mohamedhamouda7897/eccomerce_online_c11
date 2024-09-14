import 'package:ecommerce_online_c11/core/utils/assets_manager.dart';
import 'package:ecommerce_online_c11/core/utils/color_manager.dart';
import 'package:ecommerce_online_c11/core/utils/font_manager.dart';
import 'package:ecommerce_online_c11/core/utils/styles_manager.dart';
import 'package:ecommerce_online_c11/core/utils/values_manager.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/presentation/widgets/category_card_item.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/category_Model.dart';
import 'package:flutter/material.dart';

import 'sub_category_item.dart';

class SubCategoriesList extends StatelessWidget {
  CategoryModel? subCategory;

  SubCategoriesList({this.subCategory, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: CustomScrollView(
        slivers: <Widget>[
          // category title
          SliverToBoxAdapter(
            child: Text(
              'Laptops & Electronics',
              style: getBoldStyle(
                  color: ColorManager.primary, fontSize: FontSize.s14),
            ),
          ),
          // the category card
          SliverToBoxAdapter(
            child: CategoryCardItem("Laptops & Electronics",
                ImageAssets.categoryCardImage, goToCategoryProductsListScreen),
          ),
          // the grid view of the subcategories
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: subCategory?.data?.length ?? 0,
                (context, index) => SubCategoryItem(
                  subCategory?.data?[index].name ?? "",
                  ImageAssets.subcategoryCardImage,
                  goToCategoryProductsListScreen,
                  subCategory?.data?[index].sId ?? "",
                ),
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.65,
                mainAxisSpacing: AppSize.s8,
                crossAxisSpacing: AppSize.s8,
              ))
        ],
      ),
    );
  }

  goToCategoryProductsListScreen() {
    // todo implement this function
  }
}
