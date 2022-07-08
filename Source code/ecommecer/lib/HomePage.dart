import 'package:ecommecer/ProductController.dart';
import 'package:ecommecer/cartController.dart';
import 'package:ecommecer/cartpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final _controller = Get.put(ProductController());
final _controller1 = Get.put(CartController());

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Stack(
              children: [
                IconButton(
                    onPressed: () {
                      Get.to(CartPage());
                    },
                    icon: Icon(Icons.shopping_cart)),
                Positioned(
                  child: Padding(
                      padding: const EdgeInsets.only(left: 25.0, top: 5),
                      child: GetBuilder(
                        init: CartController(),
                        builder: (controller) => Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(15)),
                          child:
                              Center(child: Text('${_controller1.itemlenght}')),
                        ),
                      )),
                )
              ],
            )
          ],
        ),
        body: GetBuilder(
          init: ProductController(),
          builder: (controller) => ListView.builder(
            itemCount: _controller.items.length,
            itemBuilder: (context, index) => GetBuilder(
              init: ProductController(),
              builder: (controller) => ListTile(
                leading: Image.network(_controller.items[index].imageUrl),
                title: Text('${_controller.items[index].title}'),
                trailing: IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  onPressed: () {
                    _controller1.addItem(
                        _controller.items[index].id,
                        _controller.items[index].price,
                        _controller.items[index].title);
                  },
                ),
              ),
            ),
          ),
        ));
  }
}
