import 'package:bloc/bloc.dart';
import 'package:ecommerce_online_c11/core/utils/enums.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/models/ProductModel.dart';
import 'package:ecommerce_online_c11/features/products_screen/domain/use_cases/get_products_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_event.dart';

part 'product_state.dart';

part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  GetProductsUseCase getProductsUseCase;

  ProductBloc(this.getProductsUseCase) : super(const ProductState.initial()) {
    on<ProductEvent>((event, emit) {
      event.when(
        started: () {},
        getProduct: _getProductsEvent,
      );
    });
  }

  _getProductsEvent(catId) async {
    emit(state.copyWith(
      getProductsState: RequestState.loading,
    ));
    var data = await getProductsUseCase(catId);
    data.fold(
      (l) {
        print(l.toString());
        emit(state.copyWith(
          getProductsState: RequestState.error,
        ));
      },
      (r) {
        emit(state.copyWith(
            getProductsState: RequestState.success, productModel: r));
      },
    );
  }
}
