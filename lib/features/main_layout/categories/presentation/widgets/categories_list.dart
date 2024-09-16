import 'package:ecommerce_online_c11/core/utils/color_manager.dart';
import 'package:ecommerce_online_c11/core/utils/values_manager.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/presentation/bloc/category_tab_bloc.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/presentation/widgets/category_item.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/CategoryModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesList extends StatefulWidget {
  CategoryModel? categoryModel;

  CategoriesList({super.key, required this.categoryModel});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
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
              BlocProvider.of<CategoryTabBloc>(context).state.selectedCategoryIndex == index,
              onItemClick),
        ),
      ),
    ));
  }

  // callback function to change the selected index
  onItemClick(int index ) {
    BlocProvider.of<CategoryTabBloc>(context)
        .add(ChangeSelectedCategoryEvent(index));
    BlocProvider.of<CategoryTabBloc>(context).add(
        GetSubCategoriesEvent(widget.categoryModel?.data?[index].id ?? ""));
  }
}
