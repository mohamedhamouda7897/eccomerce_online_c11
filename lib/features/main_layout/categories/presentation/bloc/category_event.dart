part of 'category_bloc.dart';

abstract class CategoryEvent {}

class HomeGetCategoriesEvent extends CategoryEvent {}

class HomeGetSubCategoriesEvent extends CategoryEvent {
  String id;

  HomeGetSubCategoriesEvent(this.id);
}
