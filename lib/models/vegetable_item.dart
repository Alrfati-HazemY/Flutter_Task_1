class VegetableItem {
  const VegetableItem({
    required this.name,
    required this.price,
    required this.isPerPiece,
    required this.images,
    required this.country,
    required this.description,
    this.weightInGram = 1000,
  });
  final String name;
  final double price;
  final bool isPerPiece;
  final List<String> images;
  final double weightInGram;
  final String country;
  final String description;
}
