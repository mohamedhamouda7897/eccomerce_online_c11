import 'package:ecommerce_online_c11/core/utils/values_manager.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/presentation/bloc/category_bloc.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/presentation/widgets/categories_list.dart';
import 'package:ecommerce_online_c11/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/sub_categories_list.dart';

class CategoriesTab extends StatefulWidget {
  const CategoriesTab({super.key});

  @override
  State<CategoriesTab> createState() => _CategoriesTabState();
}

class _CategoriesTabState extends State<CategoriesTab> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CategoryBloc>()..add(HomeGetCategoriesEvent()),
      child: BlocConsumer<CategoryBloc, CategoryState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppPadding.p12, vertical: AppPadding.p12),
            child: Row(
              children: [
                CategoriesList(
                  categoryModel: state.categoryModel,
                  onClick: (id) {
                    BlocProvider.of<CategoryBloc>(context).add(HomeGetSubCategoriesEvent(id));
                  },
                ),
                SizedBox(
                  width: AppSize.s16,
                ),
                SubCategoriesList(
                  subCategory: state.subCategoryModel,
                )
              ],
            ),
          );
        },
      ),
    );
  }


}
