import 'dart:io';

import 'package:flutter/material.dart';
import 'package:good_places_app/helpers/db_helper.dart';
import 'package:good_places_app/models/place.dart';

class Places with ChangeNotifier {
  List<Place> _places = [];

  Places(this._places);

  List<Place> get places {
    return [..._places];
  }

  void addPlace(String title, File image) {
    final newPlace = Place(
        id: DateTime.now().toString(),
        title: title,
        location: LatLang(latitude: 2.0, longitude: 3.0),
        image: image);

    _places.add(newPlace);
    notifyListeners();

    DBHelper.insert('PLACES', {
      'id': newPlace.id,
      'title': newPlace.title,
      'image': newPlace.image.path
    });
  }
}
