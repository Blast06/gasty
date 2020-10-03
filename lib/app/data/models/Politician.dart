import 'dart:convert';

import 'package:flutter/material.dart';




class Politician {
  
  int id;
  String image;
  String name;
  int netWorth;
  String party;
  String spot;
  bool show = false;


  Politician({
    @required this.id,
    @required this.image,
    @required this.name,
    @required this.netWorth,
    @required this.party,
    @required this.spot,
    @required this.show,
  });

  Politician copyWith({
    int id,
    String image,
    String name,
    int netWorth,
    String party,
    String spot,
    bool show,
  }) {
    return Politician(
      id: id ?? this.id,
      image: image ?? this.image,
      name: name ?? this.name,
      netWorth: netWorth ?? this.netWorth,
      party: party ?? this.party,
      spot: spot ?? this.spot,
      show: show ?? this.show,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'image': image,
      'name': name,
      'netWorth': netWorth,
      'party': party,
      'spot': spot,
      'show': show,
    };
  }

  factory Politician.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return Politician(
      id: map['id'],
      image: map['image'],
      name: map['name'],
      netWorth: map['netWorth'],
      party: map['party'],
      spot: map['spot'],
      show: map['show'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Politician.fromJson(String source) => Politician.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Politician(id: $id, image: $image, name: $name, netWorth: $netWorth, party: $party, spot: $spot, show: $show)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is Politician &&
      o.id == id &&
      o.image == image &&
      o.name == name &&
      o.netWorth == netWorth &&
      o.party == party &&
      o.spot == spot &&
      o.show == show;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      image.hashCode ^
      name.hashCode ^
      netWorth.hashCode ^
      party.hashCode ^
      spot.hashCode ^
      show.hashCode;
  }
}
