part of 'home_bloc.dart';

class HomeState {
  final RequestState? getCategoriesState;
  final CategoryModel? categoryModel;
  final RouteFailures? failures;

  HomeState({
    this.getCategoriesState,
    this.categoryModel,
    this.failures,
  });

  HomeState copyWith({
    RequestState? getCategoriesState,
    CategoryModel? categoryModel,
    RouteFailures? failures,
  }) {
    return HomeState(
      getCategoriesState: getCategoriesState ?? this.getCategoriesState,
      categoryModel: categoryModel ?? this.categoryModel,
      failures: failures ?? this.failures,
    );
  }
}

final class HomeInitial extends HomeState {
  HomeInitial() : super(getCategoriesState: RequestState.init);
}
