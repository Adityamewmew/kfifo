import 'package:untitled3/Models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag:itemArgs.name,
              child: Image.asset(itemArgs.image),
            ),
            Text('Price: ${itemArgs.price}'),
            Text('Stock: ${itemArgs.stok}'),
            Text('Rating: ${itemArgs.rating}'),
          ],
        ),
      ),

    );
  }
}
