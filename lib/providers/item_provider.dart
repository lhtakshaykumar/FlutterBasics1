import 'package:flutter/material.dart';
import 'package:app/models/item_model.dart';

class ItemProvider with ChangeNotifier {
  List<Item> _items = [];

  List<Item> get items => _items;

  void addItem(String name) {
    _items.add(Item(name));
    notifyListeners();
  }
}