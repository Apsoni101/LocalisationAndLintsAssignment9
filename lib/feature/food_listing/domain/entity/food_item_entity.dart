class FoodItemEntity {
  final int id;
  final String title;
  final String image;
  final double price;
  final String description;
  final String brand;
  final String model;
  final String color;
  final String category;
  final double? discount;
  final bool? popular;

  FoodItemEntity({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    required this.description,
    required this.brand,
    required this.model,
    required this.color,
    required this.category,
    this.discount=0.0,
    this.popular=false,
  });

  FoodItemEntity copyWith({
    int? id,
    String? title,
    String? image,
    double? price,
    String? description,
    String? brand,
    String? model,
    String? color,
    String? category,
    double? discount,
    bool? popular,
  }) {
    return FoodItemEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      image: image ?? this.image,
      price: price ?? this.price,
      description: description ?? this.description,
      brand: brand ?? this.brand,
      model: model ?? this.model,
      color: color ?? this.color,
      category: category ?? this.category,
      discount: discount ?? this.discount,
      popular: popular ?? this.popular,
    );
  }
}
