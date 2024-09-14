import 'package:ecommerce_online_c11/config/routes_manager/route_generator.dart';
import 'package:ecommerce_online_c11/config/routes_manager/routes.dart';
import 'package:ecommerce_online_c11/core/cache/shared_pref.dart';
import 'package:ecommerce_online_c11/core/utils/observer.dart';
import 'package:ecommerce_online_c11/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loader_overlay/loader_overlay.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  configureDependencies();

  await SharedPreferencesService.initialize();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    String? loggedIn = SharedPreferencesService.getValue<String>('token');

    print(loggedIn);
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: child,
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: loggedIn == null ? Routes.signInRoute : Routes.mainRoute,
      ),
    );
  }
}
