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

  final routeName = '/item';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Material(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, routeName, arguments: item);
              },
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name.toString())),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
