import 'package:ecommecer/cartController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

final controller = Get.put(CartController());

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: controller.itemlenght,
        itemBuilder: (context, index) => ListTile(
          leading: Text('${controller.item[index].id}'),
          title: Text('${controller.item[index].title}'),
          trailing: Text('${controller.item[index].price}'),
        ),
      ),
    );
  }
}
