class Model {
  String title;
  String description;
  int price;
  double discountPercentage;
  int stock;
  String brand;
  String category;
  String thumbnail;

  Model({
    required this.title,
    required this.brand,
    required this.category,
    required this.description,
    required this.discountPercentage,
    required this.price,
    required this.stock,
    required this.thumbnail,
  });

  factory Model.data({required Map data}) {
    return Model(
      title: data['title'],
      brand: data['brand'],
      category: data['category'],
      description: data['description'],
      discountPercentage: data['discountPercentage'],
      price: data['price'],
      stock: data['stock'],
      thumbnail: data['thumbnail'],
    );
  }
}
