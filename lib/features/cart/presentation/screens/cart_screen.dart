import 'package:ecommerce_online_c11/core/utils/assets_manager.dart';
import 'package:ecommerce_online_c11/core/utils/color_manager.dart';
import 'package:ecommerce_online_c11/core/utils/styles_manager.dart';
import 'package:ecommerce_online_c11/core/utils/values_manager.dart';
import 'package:ecommerce_online_c11/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:ecommerce_online_c11/features/cart/presentation/widgets/cart_item_widget.dart';
import 'package:ecommerce_online_c11/features/cart/presentation/widgets/total_price_and_checkout_botton.dart';
import 'package:ecommerce_online_c11/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CartBloc>()..add(GetCartItemsEvent()),
      child: BlocConsumer<CartBloc, CartState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'Cart',
                style:
                    getMediumStyle(fontSize: 20, color: ColorManager.textColor),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    AssetImage(
                      IconsAssets.icSearch,
                    ),
                    color: ColorManager.primary,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    AssetImage(IconsAssets.icCart),
                    color: ColorManager.primary,
                  ),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(AppPadding.p14),
              child: Column(
                children: [
                  Expanded(
                    // the list of cart items ===============
                    child: ListView.separated(
                      itemBuilder: (context, index) => CartItemWidget(
                        imagePath: ImageAssets.categoryCardImage,
                        title: state.cartDetailsModel?.data?.products?[index]
                                .product?.title ??
                            "",
                        price: state
                                .cartDetailsModel?.data?.products?[index].price
                                ?.toInt() ??
                            0,
                        quantity: state.cartDetailsModel?.data?.products?[index]
                                .count ??
                            0,
                        onDeleteTap: () {},
                        onDecrementTap: (value) {},
                        onIncrementTap: (value) {},
                        size: 40,
                        color: Colors.black,
                        colorName: 'Black',
                      ),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: AppSize.s12.h),
                      itemCount:
                          state.cartDetailsModel?.data?.products?.length ?? 0,
                    ),
                  ),
                  // the total price and checkout button========
                  TotalPriceAndCheckoutBotton(
                    totalPrice:
                        state.cartDetailsModel?.data?.totalCartPrice ?? 0,
                    checkoutButtonOnTap: () {},
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
