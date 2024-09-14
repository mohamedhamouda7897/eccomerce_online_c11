// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'core/api/api_manager.dart' as _i237;
import 'features/auth/data/dataSources/remote/auth_remote_ds.dart' as _i925;
import 'features/auth/data/dataSources/remote/auth_remote_ds_impl.dart'
    as _i159;
import 'features/auth/data/repository/auth_repo_impl.dart' as _i674;
import 'features/auth/domain/repository/auth_repo.dart' as _i38;
import 'features/auth/domain/usecases/login_usecase.dart' as _i206;
import 'features/auth/domain/usecases/singup_usecase.dart' as _i29;
import 'features/auth/presentation/bloc/auth_bloc.dart' as _i363;
import 'features/cart/data/data_sources/remote/products_ds.dart' as _i46;
import 'features/cart/data/repositories/product_repo_impl.dart' as _i905;
import 'features/cart/domain/repositories/product_repo.dart' as _i802;
import 'features/cart/domain/use_cases/get_cart_items.dart' as _i495;
import 'features/cart/presentation/bloc/cart_bloc.dart' as _i239;
import 'features/main_layout/categories/data/data_source/sub_cateogry_ds.dart'
    as _i30;
import 'features/main_layout/categories/data/repo/categories_repo_impl.dart'
    as _i687;
import 'features/main_layout/categories/domain/repo/categories_repo.dart'
    as _i407;
import 'features/main_layout/categories/domain/usecase/get_sub_category_usecase.dart'
    as _i963;
import 'features/main_layout/categories/presentation/bloc/category_bloc.dart'
    as _i916;
import 'features/main_layout/home/data/data_sources/home_ds.dart' as _i15;
import 'features/main_layout/home/data/repositories/home_repo_impl.dart'
    as _i490;
import 'features/main_layout/home/domain/repositories/home_repo.dart' as _i84;
import 'features/main_layout/home/domain/use_cases/get_categories_usecase.dart'
    as _i384;
import 'features/main_layout/home/presentation/bloc/home_bloc.dart' as _i123;
import 'features/product_details/data/data_sources/remote/products_ds.dart'
    as _i323;
import 'features/product_details/data/repositories/product_repo_impl.dart'
    as _i292;
import 'features/product_details/domain/repositories/product_repo.dart' as _i63;
import 'features/product_details/domain/use_cases/get_products_usecase.dart'
    as _i720;
import 'features/product_details/presentation/bloc/product_details_bloc.dart'
    as _i466;
import 'features/products_screen/data/data_sources/remote/products_ds.dart'
    as _i648;
import 'features/products_screen/data/repositories/product_repo_impl.dart'
    as _i977;
import 'features/products_screen/domain/repositories/product_repo.dart'
    as _i948;
import 'features/products_screen/domain/use_cases/get_products_usecase.dart'
    as _i843;
import 'features/products_screen/presentation/bloc/product_bloc.dart' as _i477;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i237.ApiManager>(() => _i237.ApiManager());
    gh.factory<_i15.HomeDS>(() => _i15.HomeDSImpl(gh<_i237.ApiManager>()));
    gh.factory<_i648.ProductsDS>(() => _i648.ProductsDSImpl());
    gh.factory<_i46.CartDS>(() => _i46.CartDSImpl());
    gh.factory<_i323.ProductsDetailsDS>(() => _i323.ProductsDetailsDSImpl());
    gh.factory<_i63.ProductDetailsRepo>(
        () => _i292.ProductDetailsRepoImpl(gh<_i323.ProductsDetailsDS>()));
    gh.factory<_i720.AddToCartUseCase>(
        () => _i720.AddToCartUseCase(gh<_i63.ProductDetailsRepo>()));
    gh.factory<_i84.HomeRepo>(() => _i490.HomeRepoImpl(gh<_i15.HomeDS>()));
    gh.factory<_i384.GetCategoriesUseCase>(
        () => _i384.GetCategoriesUseCase(gh<_i84.HomeRepo>()));
    gh.factory<_i466.ProductDetailsBloc>(
        () => _i466.ProductDetailsBloc(gh<_i720.AddToCartUseCase>()));
    gh.factory<_i925.AuthRemoteDS>(
        () => _i159.AuthRemoteDSImpl(gh<_i237.ApiManager>()));
    gh.factory<_i30.SubCategoryDS>(
        () => _i30.SubCategoryDSImpl(gh<_i237.ApiManager>()));
    gh.factory<_i38.AuthRepo>(
        () => _i674.AuthRepoImpl(gh<_i925.AuthRemoteDS>()));
    gh.factory<_i948.ProductRepo>(
        () => _i977.ProductRepoImpl(gh<_i648.ProductsDS>()));
    gh.factory<_i843.GetProductsUseCase>(
        () => _i843.GetProductsUseCase(gh<_i948.ProductRepo>()));
    gh.factory<_i123.HomeBloc>(
        () => _i123.HomeBloc(gh<_i384.GetCategoriesUseCase>()));
    gh.factory<_i407.SubCategoriesRepo>(
        () => _i687.SubCategoriesRepoImpl(gh<_i30.SubCategoryDS>()));
    gh.factory<_i802.CartRepo>(() => _i905.CartRepoImpl(gh<_i46.CartDS>()));
    gh.factory<_i963.GetSubCategoryUseCase>(
        () => _i963.GetSubCategoryUseCase(gh<_i407.SubCategoriesRepo>()));
    gh.factory<_i495.GetCartItemsUseCase>(
        () => _i495.GetCartItemsUseCase(gh<_i802.CartRepo>()));
    gh.factory<_i239.CartBloc>(
        () => _i239.CartBloc(gh<_i495.GetCartItemsUseCase>()));
    gh.factory<_i477.ProductBloc>(
        () => _i477.ProductBloc(gh<_i843.GetProductsUseCase>()));
    gh.factory<_i206.LoginUseCase>(
        () => _i206.LoginUseCase(gh<_i38.AuthRepo>()));
    gh.factory<_i29.SignUpUseCase>(
        () => _i29.SignUpUseCase(gh<_i38.AuthRepo>()));
    gh.factory<_i916.CategoryBloc>(() => _i916.CategoryBloc(
          gh<_i384.GetCategoriesUseCase>(),
          gh<_i963.GetSubCategoryUseCase>(),
        ));
    gh.factory<_i363.AuthBloc>(() => _i363.AuthBloc(
          gh<_i206.LoginUseCase>(),
          gh<_i29.SignUpUseCase>(),
        ));
    return this;
  }
}
