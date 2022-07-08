import 'package:ecommecer/cart_item.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  List _items = [];

  List get item => [..._items];

  int get itemlenght => _items.length;

  addItem(id, price, title) {
    _items.add(() => CartItem(id: id, title: title, price: price));
    update();
  }
}
