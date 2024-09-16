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
import 'features/cart/bloc/cart_bloc.dart' as _i153;
import 'features/cart/data/data_sources/sub_category_ds.dart' as _i99;
import 'features/cart/data/repository/cart_repo_impl.dart' as _i191;
import 'features/cart/domain/repository/cart_repo.dart' as _i661;
import 'features/cart/domain/usecases/get_cart_usecase.dart' as _i810;
import 'features/main_layout/categories/data/data_sources/sub_category_ds.dart'
    as _i478;
import 'features/main_layout/categories/data/repository/categoryTab_repo_impl.dart'
    as _i980;
import 'features/main_layout/categories/domain/repository/categoryTab_repo.dart'
    as _i54;
import 'features/main_layout/categories/domain/usecases/get_sub_category_usecase.dart'
    as _i92;
import 'features/main_layout/categories/presentation/bloc/category_tab_bloc.dart'
    as _i753;
import 'features/main_layout/home/data/data_sources/category_ds.dart' as _i892;
import 'features/main_layout/home/data/repositories/category_repo_impl.dart'
    as _i747;
import 'features/main_layout/home/domain/repositories/category_repo.dart'
    as _i405;
import 'features/main_layout/home/domain/use_cases/get_categoryUsecase.dart'
    as _i768;
import 'features/main_layout/home/presentation/bloc/home_bloc.dart' as _i123;
import 'features/products_screen/data/data_sources/product_ds.dart' as _i941;
import 'features/products_screen/data/repository/products_repo_impl.dart'
    as _i377;
import 'features/products_screen/domain/repository/products_repo.dart' as _i850;
import 'features/products_screen/domain/usecases/add_to_cart.dart' as _i781;
import 'features/products_screen/domain/usecases/get_products_usecase.dart'
    as _i305;
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
    gh.factory<_i941.ProductsDS>(() => _i941.ProductsDSImpl());
    gh.factory<_i892.CategoryDS>(() => _i892.CategoryDSImpl());
    gh.factory<_i478.SubCategoryDS>(() => _i478.SubCategoryDSImpl());
    gh.factory<_i54.ProductRepo>(
        () => _i377.ProductRepoImpl(gh<_i941.ProductsDS>()));
    gh.factory<_i99.CartDS>(() => _i99.CartDSImpl());
    gh.factory<_i405.CategoryRepo>(
        () => _i747.CategoryRepoImpl(gh<_i892.CategoryDS>()));
    gh.factory<_i305.GetProductsUseCase>(
        () => _i305.GetProductsUseCase(gh<_i54.ProductRepo>()));
    gh.factory<_i781.AddToCartUseCase>(
        () => _i781.AddToCartUseCase(gh<_i54.ProductRepo>()));
    gh.factory<_i850.CategoryTabRepo>(
        () => _i980.CategoryTabRepoImpl(gh<_i478.SubCategoryDS>()));
    gh.factory<_i768.GetCategoryUseCase>(
        () => _i768.GetCategoryUseCase(gh<_i405.CategoryRepo>()));
    gh.factory<_i123.HomeBloc>(
        () => _i123.HomeBloc(gh<_i768.GetCategoryUseCase>()));
    gh.factory<_i661.CartRepo>(() => _i191.CartRepoImpl(gh<_i99.CartDS>()));
    gh.factory<_i477.ProductBloc>(() => _i477.ProductBloc(
          gh<_i305.GetProductsUseCase>(),
          gh<_i781.AddToCartUseCase>(),
        ));
    gh.factory<_i92.GetSubCategoryUseCase>(
        () => _i92.GetSubCategoryUseCase(gh<_i850.CategoryTabRepo>()));
    gh.factory<_i753.CategoryTabBloc>(() => _i753.CategoryTabBloc(
          gh<_i768.GetCategoryUseCase>(),
          gh<_i92.GetSubCategoryUseCase>(),
        ));
    gh.factory<_i810.GetCartUseCase>(
        () => _i810.GetCartUseCase(gh<_i661.CartRepo>()));
    gh.factory<_i153.CartBloc>(
        () => _i153.CartBloc(gh<_i810.GetCartUseCase>()));
    return this;
  }
}
