import 'package:bloc/bloc.dart';
import 'package:ecommerce_online_c11/core/utils/enums.dart';
import 'package:ecommerce_online_c11/features/cart/data/models/CartModel.dart';
import 'package:ecommerce_online_c11/features/cart/domain/usecases/get_cart_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cart_event.dart';

part 'cart_state.dart';

part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  GetCartUseCase getCartUseCase;

  CartBloc(this.getCartUseCase) : super(const CartState.initial()) {
    on<GetCartEvent>((event, emit) async {
      emit(state.copyWith(getCartState: RequestState.loading));

      var data = await getCartUseCase();

      data.fold(
        (l) {
          emit(state.copyWith(getCartState: RequestState.error));
        },
        (r) {
          emit(
              state.copyWith(getCartState: RequestState.success, cartModel: r));
        },
      );
    });
  }
}
