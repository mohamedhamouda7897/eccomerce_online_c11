import 'package:bloc/bloc.dart';
import 'package:ecommerce_online_c11/core/utils/enums.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/data/models/category_model.dart';
import 'package:ecommerce_online_c11/features/main_layout/categories/domain/usecases/get_category_usecase.dart';
import 'package:meta/meta.dart';

part 'category_event.dart';

part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  GetCategoryUseCase getCategoryUseCase;

  CategoryBloc(this.getCategoryUseCase) : super(CategoryInitial()) {
    on<GetCategoryEvent>((event, emit) async {
      var result = await getCategoryUseCase();
      result.fold(
        (l) {
          emit(state.copyWith(
              requestState: RequestState.error, errorMessage: l.message));
        },
        (r) {
          emit(state.copyWith(
            requestState: RequestState.success,
            categoryModel: r,
          ));
        },
      );
    });
  }
}
