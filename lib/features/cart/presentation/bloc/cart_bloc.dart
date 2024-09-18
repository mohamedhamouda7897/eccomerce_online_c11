import 'package:bloc/bloc.dart';
import 'package:ecommerce_online_c11/core/utils/enums.dart';
import 'package:ecommerce_online_c11/features/cart/data/models/CartModel.dart';
import 'package:ecommerce_online_c11/features/cart/domain/use_cases/get_cart_items_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cart_event.dart';

part 'cart_state.dart';

part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  GetCartItemsUseCase getCartItemsUseCase;

  CartBloc(this.getCartItemsUseCase) : super(const CartState.initial()) {
    on<GetCartEvent>((event, emit) async {
      emit(state.copyWith(getCartItemsState: RequestState.loading));

      var result = await getCartItemsUseCase();

      result.fold(
        (l) {
          emit(state.copyWith(getCartItemsState: RequestState.error));
        },
        (r) {
          emit(state.copyWith(
              getCartItemsState: RequestState.success, cartModel: r));
        },
      );
    });
  }
}
