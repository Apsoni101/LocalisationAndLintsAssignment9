import 'package:foodappassignment8/feature/food_listing/domain/entity/food_item_entity.dart';

class FoodItemModel extends FoodItemEntity {

  factory FoodItemModel.fromEntity(FoodItemEntity entity) {
    return FoodItemModel(
      id: entity.id,
      title: entity.title,
      image: entity.image,
      price: entity.price,
      description: entity.description,
      brand: entity.brand,
      model: entity.model,
      color: entity.color,
      category: entity.category,
      discount: entity.discount,
      popular: entity.popular,
    );
  }
  const FoodItemModel(
      {required super.id,
      required super.title,
      required super.image,
      required super.price,
      required super.description,
      required super.brand,
      required super.model,
      required super.color,
      required super.category,
      super.discount,
      super.popular,});

  factory FoodItemModel.fromJson(Map<String, dynamic> json) {
    return FoodItemModel(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      image: json['image'] ?? '',
      price: (json['price'] as num).toDouble(),
      description: json['description'] ?? '',
      brand: json['brand'] ?? '',
      model: json['model'] ?? '',
      color: json['color'] ?? '',
      category: json['category'] ?? '',
      discount: (json['discount'] as num?)?.toDouble(),
      popular: json['popular'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'image': image,
      'price': price,
      'description': description,
      'brand': brand,
      'model': model,
      'color': color,
      'category': category,
      'discount': discount,
      'popular': popular,
    };
  }

  FoodItemEntity toEntity() {
    return FoodItemEntity(
        id: id,
        title: title,
        image: image,
        price: price,
        description: description,
        brand: brand,
        model: model,
        color: color,
        category: category,
        discount: discount,
        popular: popular,);
  }
}
