import 'package:ecommerce_online_c11/config/routes_manager/routes.dart';
import 'package:ecommerce_online_c11/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:ecommerce_online_c11/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:ecommerce_online_c11/features/cart/screens/cart_screen.dart';
import 'package:ecommerce_online_c11/features/main_layout/main_layout.dart';
import 'package:ecommerce_online_c11/features/product_details/presentation/screen/product_details.dart';
import 'package:ecommerce_online_c11/features/products_screen/data/models/ProductModel.dart';
import 'package:ecommerce_online_c11/features/products_screen/presentation/screens/products_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.cartRoute:
        return MaterialPageRoute(builder: (_) => CartScreen());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => MainLayout());

      case Routes.productsScreenRoute:
        return MaterialPageRoute(
            builder: (_) => ProductsScreen(
                  catId: settings.arguments as String,
                ));

      case Routes.productDetails:
        return MaterialPageRoute(
            builder: (_) => ProductDetails(
                  productData: settings.arguments as ProductData?,
                ));

      case Routes.signInRoute:
        return MaterialPageRoute(builder: (_) => SignInScreen());

      case Routes.signUpRoute:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('No Route Found'),
        ),
        body: const Center(child: Text('No Route Found')),
      ),
    );
  }
}
