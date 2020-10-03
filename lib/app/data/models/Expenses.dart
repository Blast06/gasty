import 'dart:convert';

import 'package:flutter/material.dart';




class Expenses {
  
  int id;
  String title;
  String image;
  int price;
  int quantity;
  
  
  Expenses({
    @required this.id,
    @required this.title,
    @required this.image,
    @required this.price,
    @required this.quantity,
  });

  Expenses copyWith({
    int id,
    String title,
    String image,
    int price,
    int quantity,
  }) {
    return Expenses(
      id: id ?? this.id,
      title: title ?? this.title,
      image: image ?? this.image,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'image': image,
      'price': price,
      'quantity': quantity,
    };
  }

  factory Expenses.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return Expenses(
      id: map['id'],
      title: map['title'],
      image: map['image'],
      price: map['price'],
      quantity: map['quantity'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Expenses.fromJson(String source) => Expenses.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Expenses(id: $id, title: $title, image: $image, price: $price, quantity: $quantity)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is Expenses &&
      o.id == id &&
      o.title == title &&
      o.image == image &&
      o.price == price &&
      o.quantity == quantity;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      image.hashCode ^
      price.hashCode ^
      quantity.hashCode;
  }
}
