import 'package:ecommerce_online_c11/core/utils/color_manager.dart';
import 'package:ecommerce_online_c11/core/utils/values_manager.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/presentation/widgets/category_item.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/category_Model.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatefulWidget {
  CategoryModel? categoryModel;
  Function onClick;

  CategoriesList({required this.categoryModel,required this.onClick, super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  // Index of the currently selected category
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
        color: ColorManager.containerGray,
        border: Border(
            // set the border for only 3 sides
            top: BorderSide(
                width: AppSize.s2,
                color: ColorManager.primary.withOpacity(0.3)),
            left: BorderSide(
                width: AppSize.s2,
                color: ColorManager.primary.withOpacity(0.3)),
            bottom: BorderSide(
                width: AppSize.s2,
                color: ColorManager.primary.withOpacity(0.3))),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(AppSize.s12),
          bottomLeft: Radius.circular(AppSize.s12),
        ),
      ),

      // the categories items list
      child: ClipRRect(
        // clip the corners of the container that hold the list view
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(AppSize.s12),
          bottomLeft: Radius.circular(AppSize.s12),
        ),
        child: ListView.builder(
          itemCount: widget.categoryModel?.data?.length ?? 0,
          itemBuilder: (context, index) => CategoryItem(
              index,
              widget.categoryModel?.data?[index].name ?? "",
              selectedIndex == index,
              onItemClick),
        ),
      ),
    ));
  }

  // callback function to change the selected index
  onItemClick(int index) {
    setState(() {
      selectedIndex = index;
      widget.onClick(widget.categoryModel?.data?[index].sId);
    });
  }
}
