// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FoodRecipeImpl _$$FoodRecipeImplFromJson(Map<String, dynamic> json) =>
    _$FoodRecipeImpl(
      foodTitle: json['foodTitle'] as String,
      creator: json['creator'] as String,
      time: (json['time'] as num).toInt(),
      rating: (json['rating'] as num).toDouble(),
      imagePath: json['imagePath'] as String,
    );

Map<String, dynamic> _$$FoodRecipeImplToJson(_$FoodRecipeImpl instance) =>
    <String, dynamic>{
      'foodTitle': instance.foodTitle,
      'creator': instance.creator,
      'time': instance.time,
      'rating': instance.rating,
      'imagePath': instance.imagePath,
    };
