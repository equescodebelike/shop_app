// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateProduct _$$_CreateProductFromJson(Map<String, dynamic> json) =>
    _$_CreateProduct(
      article: json['article'] as String,
      name: json['name'] as String,
      price: json['price'] as String,
      discount: json['discount'] as String?,
      pictureUrl: json['picture_url'] as String?,
      baseImg: json['base64_img'] as String?,
      description: json['description'] as String?,
      categoryId: json['category_id'] as int,
      needBuyToWholesale: json['need_buy_to_wholesale'] as int?,
      wholesaleDiscount: json['wholesale_discount'] as int?,
    );

Map<String, dynamic> _$$_CreateProductToJson(_$_CreateProduct instance) =>
    <String, dynamic>{
      'article': instance.article,
      'name': instance.name,
      'price': instance.price,
      'discount': instance.discount,
      'picture_url': instance.pictureUrl,
      'base64_img': instance.baseImg,
      'description': instance.description,
      'category_id': instance.categoryId,
      'need_buy_to_wholesale': instance.needBuyToWholesale,
      'wholesale_discount': instance.wholesaleDiscount,
    };
