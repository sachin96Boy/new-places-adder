import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:good_places_app/screens/add_place_screen.dart';


class HomeScreen extends StatelessWidget {
  static const routeName = '/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Great Places'),
        actions: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pushNamed(AddPlaceScreen.routeName);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: const Center(
        child: Text('This is boy'),
      ),
    );
  }
}
