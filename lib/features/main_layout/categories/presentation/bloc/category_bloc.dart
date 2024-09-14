import 'package:bloc/bloc.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/core/utils/enums.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/domain/usecase/get_sub_category_usecase.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/category_Model.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/domain/use_cases/get_categories_usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'category_event.dart';

part 'category_state.dart';

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  GetCategoriesUseCase getCategoriesUseCase;
  GetSubCategoryUseCase getSubCategoryUseCase;

  CategoryBloc(this.getCategoriesUseCase, this.getSubCategoryUseCase)
      : super(CategoryInitial()) {
    on<HomeGetCategoriesEvent>((event, emit) async {
      emit(state.copyWith(
        getCategoriesState: RequestState.loading,
      ));
      var result = await getCategoriesUseCase.call();

      result.fold(
        (l) {
          emit(state.copyWith(
            getCategoriesState: RequestState.error,
            failures: l,
          ));
        },
        (r) {
          emit(state.copyWith(
            getCategoriesState: RequestState.success,
            categoryModel: r,
          ));
        },
      );
    });

    on<HomeGetSubCategoriesEvent>((event, emit) async {
      emit(state.copyWith(
        getSubCategoriesState: RequestState.loading,
      ));
      var result = await getSubCategoryUseCase.call(event.id);

      result.fold(
        (l) {
          emit(state.copyWith(
            getSubCategoriesState: RequestState.error,
            failures: l,
          ));
        },
        (r) {
          emit(state.copyWith(
            getSubCategoriesState: RequestState.success,
            subCategoryModel: r,
          ));
        },
      );
    });
  }
}
