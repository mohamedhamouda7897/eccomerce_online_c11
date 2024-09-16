import 'package:bloc/bloc.dart';
import 'package:ecommerce_online_c11/core/utils/enums.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/CategoryModel.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/domain/use_cases/get_categoryUsecase.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';

part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetCategoryUseCase getCategoryUseCase;

  HomeBloc(this.getCategoryUseCase) : super(HomeInitial()) {
    on<HomeGetCategoriesEvent>((event, emit) async {
      emit(state.copyWith(requestState: RequestState.loading));
      var result = await getCategoryUseCase.call();

      result.fold(
        (l) {
          emit(state.copyWith(
              requestState: RequestState.error, errorMessage: l.errorMessage));
        },
        (r) {
          emit(state.copyWith(
              requestState: RequestState.success, categoryModel: r));
        },
      );
    });
  }
}
