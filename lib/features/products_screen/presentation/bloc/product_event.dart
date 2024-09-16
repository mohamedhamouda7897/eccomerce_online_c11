part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.getProducts(String catId) = GetProductsEvent;
  const factory ProductEvent.addToCart(String prodId) = AddToCartEvent;
}
