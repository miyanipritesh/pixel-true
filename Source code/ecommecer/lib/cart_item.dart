class CartItem {
  final String id;
  final String title;
  final int? quantity;
  final double price;

  CartItem(
      {required this.id,
      required this.title,
      this.quantity,
      required this.price});
}
