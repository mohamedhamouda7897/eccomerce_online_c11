import 'package:ecommerce_online_c11/core/utils/enums.dart';
import 'package:ecommerce_online_c11/core/utils/values_manager.dart';
import 'package:ecommerce_online_c11/di.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/presentation/bloc/category_tab_bloc.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/presentation/widgets/categories_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/sub_categories_list.dart';

class CategoriesTab extends StatelessWidget {
  const CategoriesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CategoryTabBloc>()..add(GetCategoriesEvent()),
      child: BlocConsumer<CategoryTabBloc, CategoryTabState>(
        listener: (context, state) {
          // if (state.getCategoriesState == RequestState.loading) {
          //   showDialog(
          //     context: context,
          //     builder: (context) => AlertDialog(
          //       title: Center(child: CircularProgressIndicator()),
          //       backgroundColor: Colors.transparent,
          //     ),
          //   );
          // } else {
          //   if (Navigator.of(context).canPop()) {
          //     Navigator.of(context).pop();
          //   }
          // }
        },
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppPadding.p12, vertical: AppPadding.p12),
            child: Row(
              children: [
                CategoriesList(categoryModel: state.categoryModel),
                SizedBox(
                  width: AppSize.s16,
                ),
                SubCategoriesList(
                  subCategories: state.subCategoryModel,
                  catId: state.categoryModel?.data?[state.selectedCategoryIndex]
                          .id ??
                      "",
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
