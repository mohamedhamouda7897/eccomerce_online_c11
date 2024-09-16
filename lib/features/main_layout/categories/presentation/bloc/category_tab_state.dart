part of 'category_tab_bloc.dart';

@freezed
class CategoryTabState with _$CategoryTabState {
  const factory CategoryTabState.initial({
    @Default(RequestState.init) RequestState getCategoriesState,
    @Default(RequestState.init) RequestState getSubCategoriesState,
    CategoryModel? categoryModel,
    CategoryModel? subCategoryModel,
    @Default(0)int selectedCategoryIndex,
  }) = _Initial;
}
