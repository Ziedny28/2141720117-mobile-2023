import 'package:belanja/model/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});
  @override
  Widget build(BuildContext context) {
    final (itemArgs, index) =
        ModalRoute.of(context)!.settings.arguments as (Item, int);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Item"),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Hero(
                tag: "imageMovePage_$index",
                child: Image(
                  image: NetworkImage(
                    itemArgs.imageUrl.toString(),
                  ),
                ),
              ),
            ),
            ItemDataPlaceholder(
              itemArgs: itemArgs,
            ),
          ],
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

class ItemDataPlaceholder extends StatelessWidget {
  final Item itemArgs;
  const ItemDataPlaceholder({super.key, required this.itemArgs});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ItemDataDisplay(
                  variable: 'Name',
                  data: itemArgs.name,
                ),
                ItemDataDisplay(
                  variable: 'Stok',
                  data: itemArgs.stok.toString(),
                ),
                ItemDataDisplay(
                  variable: 'Rating',
                  data: itemArgs.rating.toString(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemDataDisplay extends StatelessWidget {
  String? variable, data;
  ItemDataDisplay({super.key, this.data, this.variable});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            variable.toString(),
            textAlign: TextAlign.left,
          ),
        ),
        const Expanded(
          flex: 0,
          child: Text(
            ":",
            textAlign: TextAlign.left,
          ),
        ),
        Expanded(
          child: Text(
            data.toString(),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
