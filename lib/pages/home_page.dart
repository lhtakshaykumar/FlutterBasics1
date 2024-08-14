import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app/providers/item_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: Container(color: Colors.red, height: 100)),
              Expanded(child: Container(color: Colors.green, height: 100)),
              Expanded(child: Container(color: Colors.blue, height: 100)),
            ],
          ),
          Stack(
            children: [
              Container(color: Colors.yellow, height: 100, width: 100),
              Positioned(
                top: 10,
                left: 10,
                child: Container(color: Colors.black, height: 50, width: 50),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: itemProvider.items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(itemProvider.items[index].name),
                  onTap: () {
                    Navigator.pushNamed(context, '/detail');
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                itemProvider.addItem('Item ${itemProvider.items.length + 1}');
              },
              child: Text('Add Item'),
            ),
          ),
        ],
      ),
    );
  }
}
