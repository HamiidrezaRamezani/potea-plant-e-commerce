class ProductModelUi {
  String title;
  String image;
  String price;
  String status;
  String rate;
  String slug;
  bool isPopular;

  ProductModelUi(
      {required this.image,
      required this.title,
      required this.price,
      required this.rate,
      required this.status,
      required this.slug,
      required this.isPopular});
}
