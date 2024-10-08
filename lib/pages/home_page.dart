import 'package:flutter/material.dart';
import 'package:untitled3/Models/item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(name: 'Sugar', price: 5000, image: 'assets/sugar.jpg', stok: 2000, rating: 4.6),
      Item(name: 'Salt', price: 2000, image: 'assets/salt1.jpg', stok: 3000, rating: 4.0),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Items List"),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: GridView.builder(
          padding: EdgeInsets.all(8),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Hero(
                tag: item.name,
                child: Card(
                  child: Column(
                    children: [
                      Image.asset(item.image),
                      Text(item.name),
                      Text('Harga: ${item.price}'),
                      Text('Stok: ${item.stok}'),
                      Text('Rating: ${item.rating}'),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
