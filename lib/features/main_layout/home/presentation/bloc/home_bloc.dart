import 'package:bloc/bloc.dart';
import 'package:ecommerce_online_c11/core/exceptions/failuers.dart';
import 'package:ecommerce_online_c11/core/utils/enums.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/category_Model.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/domain/use_cases/get_categories_usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';

part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetCategoriesUseCase getCategoriesUseCase;

  HomeBloc(this.getCategoriesUseCase) : super(HomeInitial()) {
    on<HomeGetCategoriesEvent>((event, emit) async {
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
  }
}
