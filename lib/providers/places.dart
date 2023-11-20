import 'package:flutter/material.dart';
import 'package:good_places_app/models/place.dart';

class Places with ChangeNotifier {
  List<Place> _places = [];

  Places(this._places);

  List<Place> get places {
    return [..._places];
  }
}
