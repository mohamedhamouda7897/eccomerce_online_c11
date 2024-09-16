import 'package:bloc/bloc.dart';
import 'package:ecommerce_online_c11/core/utils/enums.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/data/models/category_model.dart';
import 'package:ecommerce_online_c11/features/main_layout/home/domain/usecases/get_category_usecase.dart';
import 'package:injectable/injectable.dart';

part 'category_event.dart';

part 'category_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetCategoryUseCase getCategoryUseCase;

  HomeBloc(this.getCategoryUseCase) : super(HomeInitial()) {
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
