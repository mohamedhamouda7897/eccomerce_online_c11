import 'package:ecommerce_online_c11/config/routes_manager/routes.dart';
import 'package:ecommerce_online_c11/core/utils/assets_manager.dart';
import 'package:ecommerce_online_c11/core/utils/components/home_screen_app_bar.dart';
import 'package:ecommerce_online_c11/core/utils/values_manager.dart';
import 'package:ecommerce_online_c11/features/products_screen/presentation/bloc/product_bloc.dart';
import 'package:ecommerce_online_c11/features/products_screen/presentation/widgets/custom_product_widget.dart';
import 'package:ecommerce_online_c11/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String? catID = ModalRoute.of(context)?.settings.arguments as String?;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => getIt<ProductBloc>()
        ..add(GetProductsEvent(catID ?? "6439d5b90049ad0b52b90048")),
      child: BlocConsumer<ProductBloc, ProductState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: const HomeScreenAppBar(
              automaticallyImplyLeading: true,
            ),
            body: Padding(
              padding: const EdgeInsets.all(AppPadding.p16),
              child: Column(
                children: [
                  Expanded(
                    child: GridView.builder(
                      itemCount: state.productModel?.data?.length ?? 0,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        childAspectRatio: 7 / 10,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.productDetails,
                                arguments: state.productModel?.data?[index]);
                          },
                          child: CustomProductWidget(
                            image: state
                                    .productModel?.data?[index].images?.first ??
                                "",
                            title: state.productModel?.data?[index].title ?? "",
                            price: state.productModel?.data?[index].price
                                    ?.toDouble() ??
                                0.0,
                            rating: state
                                    .productModel?.data?[index].ratingsAverage
                                    ?.toDouble() ??
                                0.0,
                            discountPercentage: 50,
                            height: height,
                            width: width,
                            description:
                                state.productModel?.data?[index].description ??
                                    "",
                          ),
                        );
                      },
                      scrollDirection: Axis.vertical,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
