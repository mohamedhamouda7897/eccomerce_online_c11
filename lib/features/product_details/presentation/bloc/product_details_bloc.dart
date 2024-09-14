import 'package:bloc/bloc.dart';
import 'package:ecommerce_online_c11/core/utils/enums.dart';
import 'package:ecommerce_online_c11/features/product_details/data/models/CartModel.dart';
import 'package:ecommerce_online_c11/features/product_details/domain/use_cases/get_products_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_details_event.dart';

part 'product_details_state.dart';

part 'product_details_bloc.freezed.dart';

@injectable
class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  AddToCartUseCase addToCartUseCase;

  ProductDetailsBloc(this.addToCartUseCase)
      : super(const ProductDetailsState.initial()) {
    on<AddToCartEvent>((event, emit) async {
      emit(state.copyWith(addToCartState: RequestState.loading));

      var data = await addToCartUseCase(event.prodId);
      data.fold(
        (l) {
          emit(state.copyWith(addToCartState: RequestState.error));
        },
        (r) {
          emit(state.copyWith(
              addToCartState: RequestState.success, cartModel: r));
        },
      );
    });
  }
}
