import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:flutter_application_1/widgets/home_widgets/catalog_list.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.canvasColor,
        title: "Cart".text.xl.bold.make(),
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalPrice}"
              .text
              .xl5
              .color(context.theme.colorScheme.secondary)
              .make(),
          30.widthBox,
          ElevatedButton(
                  onPressed: (() {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: 'Buying not supported yet'.text.make()));
                  }),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(context
                          .theme.floatingActionButtonTheme.backgroundColor)),
                  child: 'Buy'.text.white.make())
              .w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList({super.key});

  @override
  State<_CartList> createState() => _CartListState();
}

class _CartListState extends State<_CartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty
        ? "Nothing to show!".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.items?.length,
            itemBuilder: ((context, index) {
              return ListTile(
                leading: Icon(Icons.done_sharp),
                trailing: IconButton(
                  icon: Icon(Icons.remove_circle_outline),
                  onPressed: () {
                    _cart.remove(_cart.items[index]);
                    setState(() {});
                  },
                ),
                title: _cart.items[index].name.text.make(),
              );
            }));
  }
}
