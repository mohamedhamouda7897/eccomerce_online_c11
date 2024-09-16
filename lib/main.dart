import 'package:ecommerce_online_c11/config/routes_manager/route_generator.dart';
import 'package:ecommerce_online_c11/config/routes_manager/routes.dart';
import 'package:ecommerce_online_c11/core/cache/shared_pref.dart';
import 'package:ecommerce_online_c11/core/utils/observer.dart';
import 'package:ecommerce_online_c11/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  configureDependencies();
  await CacheHelper.init();
  String? token = CacheHelper.getData<String>("token");
  print('ROute $token');
  runApp(MainApp(
    loggedIn: token == null ? false : true,
  ));
}

class MainApp extends StatelessWidget {
  bool loggedIn;

  MainApp({required this.loggedIn, super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: child,
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: !loggedIn ? Routes.signInRoute : Routes.mainRoute,
      ),
    );
  }
}
