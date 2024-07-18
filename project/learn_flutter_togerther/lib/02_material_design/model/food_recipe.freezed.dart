// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FoodRecipe _$FoodRecipeFromJson(Map<String, dynamic> json) {
  return _FoodRecipe.fromJson(json);
}

/// @nodoc
mixin _$FoodRecipe {
  String get foodTitle => throw _privateConstructorUsedError;
  String get creator => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodRecipeCopyWith<FoodRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodRecipeCopyWith<$Res> {
  factory $FoodRecipeCopyWith(
          FoodRecipe value, $Res Function(FoodRecipe) then) =
      _$FoodRecipeCopyWithImpl<$Res, FoodRecipe>;
  @useResult
  $Res call(
      {String foodTitle,
      String creator,
      int time,
      double rating,
      String imagePath});
}

/// @nodoc
class _$FoodRecipeCopyWithImpl<$Res, $Val extends FoodRecipe>
    implements $FoodRecipeCopyWith<$Res> {
  _$FoodRecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodTitle = null,
    Object? creator = null,
    Object? time = null,
    Object? rating = null,
    Object? imagePath = null,
  }) {
    return _then(_value.copyWith(
      foodTitle: null == foodTitle
          ? _value.foodTitle
          : foodTitle // ignore: cast_nullable_to_non_nullable
              as String,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodRecipeImplCopyWith<$Res>
    implements $FoodRecipeCopyWith<$Res> {
  factory _$$FoodRecipeImplCopyWith(
          _$FoodRecipeImpl value, $Res Function(_$FoodRecipeImpl) then) =
      __$$FoodRecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String foodTitle,
      String creator,
      int time,
      double rating,
      String imagePath});
}

/// @nodoc
class __$$FoodRecipeImplCopyWithImpl<$Res>
    extends _$FoodRecipeCopyWithImpl<$Res, _$FoodRecipeImpl>
    implements _$$FoodRecipeImplCopyWith<$Res> {
  __$$FoodRecipeImplCopyWithImpl(
      _$FoodRecipeImpl _value, $Res Function(_$FoodRecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodTitle = null,
    Object? creator = null,
    Object? time = null,
    Object? rating = null,
    Object? imagePath = null,
  }) {
    return _then(_$FoodRecipeImpl(
      foodTitle: null == foodTitle
          ? _value.foodTitle
          : foodTitle // ignore: cast_nullable_to_non_nullable
              as String,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoodRecipeImpl implements _FoodRecipe {
  const _$FoodRecipeImpl(
      {required this.foodTitle,
      required this.creator,
      required this.time,
      required this.rating,
      required this.imagePath});

  factory _$FoodRecipeImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodRecipeImplFromJson(json);

  @override
  final String foodTitle;
  @override
  final String creator;
  @override
  final int time;
  @override
  final double rating;
  @override
  final String imagePath;

  @override
  String toString() {
    return 'FoodRecipe(foodTitle: $foodTitle, creator: $creator, time: $time, rating: $rating, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodRecipeImpl &&
            (identical(other.foodTitle, foodTitle) ||
                other.foodTitle == foodTitle) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, foodTitle, creator, time, rating, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodRecipeImplCopyWith<_$FoodRecipeImpl> get copyWith =>
      __$$FoodRecipeImplCopyWithImpl<_$FoodRecipeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FoodRecipeImplToJson(
      this,
    );
  }
}

abstract class _FoodRecipe implements FoodRecipe {
  const factory _FoodRecipe(
      {required final String foodTitle,
      required final String creator,
      required final int time,
      required final double rating,
      required final String imagePath}) = _$FoodRecipeImpl;

  factory _FoodRecipe.fromJson(Map<String, dynamic> json) =
      _$FoodRecipeImpl.fromJson;

  @override
  String get foodTitle;
  @override
  String get creator;
  @override
  int get time;
  @override
  double get rating;
  @override
  String get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$FoodRecipeImplCopyWith<_$FoodRecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
