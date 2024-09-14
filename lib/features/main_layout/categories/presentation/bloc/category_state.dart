part of 'category_bloc.dart';

class CategoryState {
  final RequestState? getCategoriesState;
  final RequestState? getSubCategoriesState;

  final CategoryModel? categoryModel;
  final CategoryModel? subCategoryModel;
  final RouteFailures? failures;

  CategoryState({
    this.getCategoriesState,
    this.getSubCategoriesState,
    this.subCategoryModel,
    this.categoryModel,
    this.failures,
  });

  CategoryState copyWith({
    RequestState? getCategoriesState,
    CategoryModel? categoryModel,
    CategoryModel? subCategoryModel,
    RequestState? getSubCategoriesState,
    RouteFailures? failures,
  }) {
    return CategoryState(
      getCategoriesState: getCategoriesState ?? this.getCategoriesState,
      getSubCategoriesState:
          getSubCategoriesState ?? this.getSubCategoriesState,
      subCategoryModel: subCategoryModel ?? this.subCategoryModel,
      categoryModel: categoryModel ?? this.categoryModel,
      failures: failures ?? this.failures,
    );
  }
}

final class CategoryInitial extends CategoryState {
  CategoryInitial() : super(getCategoriesState: RequestState.init);
}
