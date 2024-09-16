// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_tab_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryTabEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
    required TResult Function(int index) changeSelectedCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function(int index)? changeSelectedCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function(int index)? changeSelectedCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(ChangeSelectedCategoryEvent value)
        changeSelectedCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(ChangeSelectedCategoryEvent value)?
        changeSelectedCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(ChangeSelectedCategoryEvent value)? changeSelectedCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryTabEventCopyWith<$Res> {
  factory $CategoryTabEventCopyWith(
          CategoryTabEvent value, $Res Function(CategoryTabEvent) then) =
      _$CategoryTabEventCopyWithImpl<$Res, CategoryTabEvent>;
}

/// @nodoc
class _$CategoryTabEventCopyWithImpl<$Res, $Val extends CategoryTabEvent>
    implements $CategoryTabEventCopyWith<$Res> {
  _$CategoryTabEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryTabEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CategoryTabEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryTabEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CategoryTabEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
    required TResult Function(int index) changeSelectedCategory,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function(int index)? changeSelectedCategory,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function(int index)? changeSelectedCategory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(ChangeSelectedCategoryEvent value)
        changeSelectedCategory,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(ChangeSelectedCategoryEvent value)?
        changeSelectedCategory,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(ChangeSelectedCategoryEvent value)? changeSelectedCategory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CategoryTabEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetCategoriesEventImplCopyWith<$Res> {
  factory _$$GetCategoriesEventImplCopyWith(_$GetCategoriesEventImpl value,
          $Res Function(_$GetCategoriesEventImpl) then) =
      __$$GetCategoriesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCategoriesEventImplCopyWithImpl<$Res>
    extends _$CategoryTabEventCopyWithImpl<$Res, _$GetCategoriesEventImpl>
    implements _$$GetCategoriesEventImplCopyWith<$Res> {
  __$$GetCategoriesEventImplCopyWithImpl(_$GetCategoriesEventImpl _value,
      $Res Function(_$GetCategoriesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryTabEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCategoriesEventImpl implements GetCategoriesEvent {
  const _$GetCategoriesEventImpl();

  @override
  String toString() {
    return 'CategoryTabEvent.getCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCategoriesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
    required TResult Function(int index) changeSelectedCategory,
  }) {
    return getCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function(int index)? changeSelectedCategory,
  }) {
    return getCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function(int index)? changeSelectedCategory,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(ChangeSelectedCategoryEvent value)
        changeSelectedCategory,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(ChangeSelectedCategoryEvent value)?
        changeSelectedCategory,
  }) {
    return getCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(ChangeSelectedCategoryEvent value)? changeSelectedCategory,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class GetCategoriesEvent implements CategoryTabEvent {
  const factory GetCategoriesEvent() = _$GetCategoriesEventImpl;
}

/// @nodoc
abstract class _$$GetSubCategoriesEventImplCopyWith<$Res> {
  factory _$$GetSubCategoriesEventImplCopyWith(
          _$GetSubCategoriesEventImpl value,
          $Res Function(_$GetSubCategoriesEventImpl) then) =
      __$$GetSubCategoriesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String catId});
}

/// @nodoc
class __$$GetSubCategoriesEventImplCopyWithImpl<$Res>
    extends _$CategoryTabEventCopyWithImpl<$Res, _$GetSubCategoriesEventImpl>
    implements _$$GetSubCategoriesEventImplCopyWith<$Res> {
  __$$GetSubCategoriesEventImplCopyWithImpl(_$GetSubCategoriesEventImpl _value,
      $Res Function(_$GetSubCategoriesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catId = null,
  }) {
    return _then(_$GetSubCategoriesEventImpl(
      null == catId
          ? _value.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSubCategoriesEventImpl implements GetSubCategoriesEvent {
  const _$GetSubCategoriesEventImpl(this.catId);

  @override
  final String catId;

  @override
  String toString() {
    return 'CategoryTabEvent.getSubCategories(catId: $catId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSubCategoriesEventImpl &&
            (identical(other.catId, catId) || other.catId == catId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, catId);

  /// Create a copy of CategoryTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSubCategoriesEventImplCopyWith<_$GetSubCategoriesEventImpl>
      get copyWith => __$$GetSubCategoriesEventImplCopyWithImpl<
          _$GetSubCategoriesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
    required TResult Function(int index) changeSelectedCategory,
  }) {
    return getSubCategories(catId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function(int index)? changeSelectedCategory,
  }) {
    return getSubCategories?.call(catId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function(int index)? changeSelectedCategory,
    required TResult orElse(),
  }) {
    if (getSubCategories != null) {
      return getSubCategories(catId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(ChangeSelectedCategoryEvent value)
        changeSelectedCategory,
  }) {
    return getSubCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(ChangeSelectedCategoryEvent value)?
        changeSelectedCategory,
  }) {
    return getSubCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(ChangeSelectedCategoryEvent value)? changeSelectedCategory,
    required TResult orElse(),
  }) {
    if (getSubCategories != null) {
      return getSubCategories(this);
    }
    return orElse();
  }
}

abstract class GetSubCategoriesEvent implements CategoryTabEvent {
  const factory GetSubCategoriesEvent(final String catId) =
      _$GetSubCategoriesEventImpl;

  String get catId;

  /// Create a copy of CategoryTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSubCategoriesEventImplCopyWith<_$GetSubCategoriesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSelectedCategoryEventImplCopyWith<$Res> {
  factory _$$ChangeSelectedCategoryEventImplCopyWith(
          _$ChangeSelectedCategoryEventImpl value,
          $Res Function(_$ChangeSelectedCategoryEventImpl) then) =
      __$$ChangeSelectedCategoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeSelectedCategoryEventImplCopyWithImpl<$Res>
    extends _$CategoryTabEventCopyWithImpl<$Res,
        _$ChangeSelectedCategoryEventImpl>
    implements _$$ChangeSelectedCategoryEventImplCopyWith<$Res> {
  __$$ChangeSelectedCategoryEventImplCopyWithImpl(
      _$ChangeSelectedCategoryEventImpl _value,
      $Res Function(_$ChangeSelectedCategoryEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeSelectedCategoryEventImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeSelectedCategoryEventImpl implements ChangeSelectedCategoryEvent {
  const _$ChangeSelectedCategoryEventImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'CategoryTabEvent.changeSelectedCategory(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSelectedCategoryEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of CategoryTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSelectedCategoryEventImplCopyWith<_$ChangeSelectedCategoryEventImpl>
      get copyWith => __$$ChangeSelectedCategoryEventImplCopyWithImpl<
          _$ChangeSelectedCategoryEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
    required TResult Function(int index) changeSelectedCategory,
  }) {
    return changeSelectedCategory(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function(int index)? changeSelectedCategory,
  }) {
    return changeSelectedCategory?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function(int index)? changeSelectedCategory,
    required TResult orElse(),
  }) {
    if (changeSelectedCategory != null) {
      return changeSelectedCategory(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(ChangeSelectedCategoryEvent value)
        changeSelectedCategory,
  }) {
    return changeSelectedCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(ChangeSelectedCategoryEvent value)?
        changeSelectedCategory,
  }) {
    return changeSelectedCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(ChangeSelectedCategoryEvent value)? changeSelectedCategory,
    required TResult orElse(),
  }) {
    if (changeSelectedCategory != null) {
      return changeSelectedCategory(this);
    }
    return orElse();
  }
}

abstract class ChangeSelectedCategoryEvent implements CategoryTabEvent {
  const factory ChangeSelectedCategoryEvent(final int index) =
      _$ChangeSelectedCategoryEventImpl;

  int get index;

  /// Create a copy of CategoryTabEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeSelectedCategoryEventImplCopyWith<_$ChangeSelectedCategoryEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryTabState {
  RequestState get getCategoriesState => throw _privateConstructorUsedError;
  RequestState get getSubCategoriesState => throw _privateConstructorUsedError;
  CategoryModel? get categoryModel => throw _privateConstructorUsedError;
  CategoryModel? get subCategoryModel => throw _privateConstructorUsedError;
  int get selectedCategoryIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RequestState getCategoriesState,
            RequestState getSubCategoriesState,
            CategoryModel? categoryModel,
            CategoryModel? subCategoryModel,
            int selectedCategoryIndex)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RequestState getCategoriesState,
            RequestState getSubCategoriesState,
            CategoryModel? categoryModel,
            CategoryModel? subCategoryModel,
            int selectedCategoryIndex)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RequestState getCategoriesState,
            RequestState getSubCategoriesState,
            CategoryModel? categoryModel,
            CategoryModel? subCategoryModel,
            int selectedCategoryIndex)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CategoryTabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryTabStateCopyWith<CategoryTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryTabStateCopyWith<$Res> {
  factory $CategoryTabStateCopyWith(
          CategoryTabState value, $Res Function(CategoryTabState) then) =
      _$CategoryTabStateCopyWithImpl<$Res, CategoryTabState>;
  @useResult
  $Res call(
      {RequestState getCategoriesState,
      RequestState getSubCategoriesState,
      CategoryModel? categoryModel,
      CategoryModel? subCategoryModel,
      int selectedCategoryIndex});
}

/// @nodoc
class _$CategoryTabStateCopyWithImpl<$Res, $Val extends CategoryTabState>
    implements $CategoryTabStateCopyWith<$Res> {
  _$CategoryTabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryTabState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCategoriesState = null,
    Object? getSubCategoriesState = null,
    Object? categoryModel = freezed,
    Object? subCategoryModel = freezed,
    Object? selectedCategoryIndex = null,
  }) {
    return _then(_value.copyWith(
      getCategoriesState: null == getCategoriesState
          ? _value.getCategoriesState
          : getCategoriesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getSubCategoriesState: null == getSubCategoriesState
          ? _value.getSubCategoriesState
          : getSubCategoriesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      categoryModel: freezed == categoryModel
          ? _value.categoryModel
          : categoryModel // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      subCategoryModel: freezed == subCategoryModel
          ? _value.subCategoryModel
          : subCategoryModel // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      selectedCategoryIndex: null == selectedCategoryIndex
          ? _value.selectedCategoryIndex
          : selectedCategoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CategoryTabStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState getCategoriesState,
      RequestState getSubCategoriesState,
      CategoryModel? categoryModel,
      CategoryModel? subCategoryModel,
      int selectedCategoryIndex});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CategoryTabStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryTabState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCategoriesState = null,
    Object? getSubCategoriesState = null,
    Object? categoryModel = freezed,
    Object? subCategoryModel = freezed,
    Object? selectedCategoryIndex = null,
  }) {
    return _then(_$InitialImpl(
      getCategoriesState: null == getCategoriesState
          ? _value.getCategoriesState
          : getCategoriesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getSubCategoriesState: null == getSubCategoriesState
          ? _value.getSubCategoriesState
          : getSubCategoriesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      categoryModel: freezed == categoryModel
          ? _value.categoryModel
          : categoryModel // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      subCategoryModel: freezed == subCategoryModel
          ? _value.subCategoryModel
          : subCategoryModel // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      selectedCategoryIndex: null == selectedCategoryIndex
          ? _value.selectedCategoryIndex
          : selectedCategoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.getCategoriesState = RequestState.init,
      this.getSubCategoriesState = RequestState.init,
      this.categoryModel,
      this.subCategoryModel,
      this.selectedCategoryIndex = 0});

  @override
  @JsonKey()
  final RequestState getCategoriesState;
  @override
  @JsonKey()
  final RequestState getSubCategoriesState;
  @override
  final CategoryModel? categoryModel;
  @override
  final CategoryModel? subCategoryModel;
  @override
  @JsonKey()
  final int selectedCategoryIndex;

  @override
  String toString() {
    return 'CategoryTabState.initial(getCategoriesState: $getCategoriesState, getSubCategoriesState: $getSubCategoriesState, categoryModel: $categoryModel, subCategoryModel: $subCategoryModel, selectedCategoryIndex: $selectedCategoryIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.getCategoriesState, getCategoriesState) ||
                other.getCategoriesState == getCategoriesState) &&
            (identical(other.getSubCategoriesState, getSubCategoriesState) ||
                other.getSubCategoriesState == getSubCategoriesState) &&
            (identical(other.categoryModel, categoryModel) ||
                other.categoryModel == categoryModel) &&
            (identical(other.subCategoryModel, subCategoryModel) ||
                other.subCategoryModel == subCategoryModel) &&
            (identical(other.selectedCategoryIndex, selectedCategoryIndex) ||
                other.selectedCategoryIndex == selectedCategoryIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getCategoriesState,
      getSubCategoriesState,
      categoryModel,
      subCategoryModel,
      selectedCategoryIndex);

  /// Create a copy of CategoryTabState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RequestState getCategoriesState,
            RequestState getSubCategoriesState,
            CategoryModel? categoryModel,
            CategoryModel? subCategoryModel,
            int selectedCategoryIndex)
        initial,
  }) {
    return initial(getCategoriesState, getSubCategoriesState, categoryModel,
        subCategoryModel, selectedCategoryIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RequestState getCategoriesState,
            RequestState getSubCategoriesState,
            CategoryModel? categoryModel,
            CategoryModel? subCategoryModel,
            int selectedCategoryIndex)?
        initial,
  }) {
    return initial?.call(getCategoriesState, getSubCategoriesState,
        categoryModel, subCategoryModel, selectedCategoryIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RequestState getCategoriesState,
            RequestState getSubCategoriesState,
            CategoryModel? categoryModel,
            CategoryModel? subCategoryModel,
            int selectedCategoryIndex)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(getCategoriesState, getSubCategoriesState, categoryModel,
          subCategoryModel, selectedCategoryIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CategoryTabState {
  const factory _Initial(
      {final RequestState getCategoriesState,
      final RequestState getSubCategoriesState,
      final CategoryModel? categoryModel,
      final CategoryModel? subCategoryModel,
      final int selectedCategoryIndex}) = _$InitialImpl;

  @override
  RequestState get getCategoriesState;
  @override
  RequestState get getSubCategoriesState;
  @override
  CategoryModel? get categoryModel;
  @override
  CategoryModel? get subCategoryModel;
  @override
  int get selectedCategoryIndex;

  /// Create a copy of CategoryTabState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
