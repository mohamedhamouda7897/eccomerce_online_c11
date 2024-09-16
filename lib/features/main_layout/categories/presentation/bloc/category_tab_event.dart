part of 'category_tab_bloc.dart';

@freezed
class CategoryTabEvent with _$CategoryTabEvent {
  const factory CategoryTabEvent.started() = _Started;

  const factory CategoryTabEvent.getCategories() = GetCategoriesEvent;

  const factory CategoryTabEvent.getSubCategories(String catId) = GetSubCategoriesEvent;
  const factory CategoryTabEvent.changeSelectedCategory(int index) = ChangeSelectedCategoryEvent;
}
