import 'package:bloc/bloc.dart';
import 'package:ecommerce_online_c11/core/utils/enums.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/domain/usecases/get_sub_category_usecase.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/CategoryModel.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/domain/use_cases/get_categoryUsecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'category_tab_event.dart';

part 'category_tab_state.dart';

part 'category_tab_bloc.freezed.dart';

@injectable
class CategoryTabBloc extends Bloc<CategoryTabEvent, CategoryTabState> {
  GetCategoryUseCase getCategoryUseCase;
  GetSubCategoryUseCase getSubCategoryUseCase;

  CategoryTabBloc(this.getCategoryUseCase, this.getSubCategoryUseCase)
      : super(const CategoryTabState.initial()) {
    on<GetCategoriesEvent>((event, emit) async {
      emit(state.copyWith(getCategoriesState: RequestState.loading));
      var result = await getCategoryUseCase.call();

      result.fold(
        (l) {
          emit(state.copyWith(
            getCategoriesState: RequestState.error,
          ));
        },
        (r) {
          emit(state.copyWith(
              getCategoriesState: RequestState.success, categoryModel: r));
          add(GetSubCategoriesEvent(r.data?.first.id ?? ""));
        },
      );
    });

    on<ChangeSelectedCategoryEvent>((event, emit) {
      emit(state.copyWith(selectedCategoryIndex: event.index));
    });
    on<GetSubCategoriesEvent>((event, emit) async {
      emit(state.copyWith(getSubCategoriesState: RequestState.loading));
      var result = await getSubCategoryUseCase(event.catId);

      result.fold(
        (l) {
          emit(state.copyWith(
            getSubCategoriesState: RequestState.error,
          ));
        },
        (r) {
          emit(state.copyWith(
              getSubCategoriesState: RequestState.success,
              subCategoryModel: r));
        },
      );
    });
  }
}
