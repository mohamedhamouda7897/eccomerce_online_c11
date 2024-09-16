import 'package:bloc/bloc.dart';
import 'package:ecommerce_online_c11/core/utils/enums.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/models/AddToCartModel.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/models/ProductModel.dart';
import 'package:ecommerce_online_c11/features/products_screen/domain/usecases/add_to_cart.dart';
import 'package:ecommerce_online_c11/features/products_screen/domain/usecases/get_products_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_event.dart';

part 'product_state.dart';

part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  GetProductsUseCase getProductsUseCase;

  AddToCartUseCase addToCartUseCase;

  ProductBloc(this.getProductsUseCase, this.addToCartUseCase)
      : super(const ProductState.initial()) {
    on<AddToCartEvent>((event, emit) async {
      emit(state.copyWith(addToCartState: RequestState.loading));

      var data = await addToCartUseCase(event.prodId);

      data.fold(
        (l) {
          emit(state.copyWith(addToCartState: RequestState.error));
        },
        (r) {
          emit(state.copyWith(
              addToCartState: RequestState.success, addCartModel: r));
        },
      );
    });
    on<GetProductsEvent>((event, emit) async {
      emit(state.copyWith(getProductsState: RequestState.loading));

      var data = await getProductsUseCase(event.catId);

      data.fold(
        (l) {
          emit(state.copyWith(getProductsState: RequestState.error));
        },
        (r) {
          emit(state.copyWith(
              getProductsState: RequestState.success, productModel: r));
        },
      );
    });
  }
}
