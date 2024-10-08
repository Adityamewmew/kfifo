import 'package:flutter/material.dart';
import 'package:untitled3/Models/item.dart';

class ItemCard extends StatelessWidget {
  final Item item;

  ItemCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/item', arguments: item);
      },
      child: Hero(
        tag: item.name,
        child: Card(
          child: Column(
            children: [
              Image.network(item.image),
              Text(item.name),
              Text('Price: ${item.price}'),
              Text('Stock: ${item.stok}'),
              Text('Rating: ${item.rating}'),
            ],
          ),
        ),
      ),
    );
  }
}
