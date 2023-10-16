import 'package:belanja/model/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Sugar',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Sucre_blanc_cassonade_complet_rapadura.jpg/968px-Sucre_blanc_cassonade_complet_rapadura.jpg',
      price: 5000,
      stok: 50,
      rating: 4.0,
    ),
    Item(
      name: 'Salt',
      imageUrl: 'https://static.toiimg.com/photo/72144360.cms',
      price: 2000,
      stok: 100,
      rating: 5.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toko Item"),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: items.map((item) => ItemCard(item: item)).toList(),
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Item item;
  const ItemCard({super.key, required this.item});

  final String routeName = '/item';
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, routeName, arguments: item);
        },
        child: Card(
          child: SizedBox(
            height: 1000,
            child: Column(
              children: [
                Image.network(
                  item.imageUrl.toString(),
                  width: 150,
                ),
                Text(item.name.toString()),
                Text(item.price.toString()),
                Text(item.rating.toString())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
