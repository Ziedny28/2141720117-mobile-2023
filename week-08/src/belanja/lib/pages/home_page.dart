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
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Comparison_of_Table_Salt_with_Kitchen_Salt.png/1280px-Comparison_of_Table_Salt_with_Kitchen_Salt.png',
      price: 2000,
      stok: 100,
      rating: 4.7,
    ),
    Item(
      name: 'Salt 2',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Comparison_of_Table_Salt_with_Kitchen_Salt.png/1280px-Comparison_of_Table_Salt_with_Kitchen_Salt.png',
      price: 2000,
      stok: 100,
      rating: 4.7,
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
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: items
              .asMap()
              .entries
              .map((item) => ItemCard(
                    item: item.value,
                    index: item.key,
                  ))
              .toList(),
        ),
      ),
      bottomNavigationBar: const Text(
        "Ziedny Bisma Mubarok/2141720117",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black54, fontSize: 12),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Item item;
  final int index;
  const ItemCard({super.key, required this.item, required this.index});

  final String routeName = '/item';
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, routeName, arguments: (item, index));
        },
        child: Card(
          child: SizedBox(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Hero(
                      tag: "imageMovePage_$index",
                      child: Image(
                        image: NetworkImage(
                          item.imageUrl.toString(),
                        ),
                      ),
                    ),
                  ),
                ),
                Text(item.name.toString()),
                Text(item.price.toString()),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(item.rating.toString())
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
