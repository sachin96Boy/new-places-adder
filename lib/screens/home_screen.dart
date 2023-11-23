import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:good_places_app/providers/places.dart';
import 'package:good_places_app/screens/add_place_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('snap Picker'),
          actions: [
            IconButton(
              onPressed: () {
                GoRouter.of(context).pushNamed(AddPlaceScreen.routeName);
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: FutureBuilder(
          future:
              Provider.of<Places>(context, listen: false).fetchAndSetPlaces(),
          builder: (context, snapshot) =>
              snapshot.connectionState == ConnectionState.waiting
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Consumer<Places>(
                      child: const Center(child: Text('No Places Available')),
                      builder: (context, value, child) => value.places.isEmpty
                          ? Center(child: child)
                          : ListView.builder(
                              itemCount: value.places.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage:
                                        FileImage(value.places[index].image),
                                  ),
                                  title: Text(value.places[index].title),
                                  onTap: () {
                                    // go to detail page
                                  },
                                );
                              },
                            ),
                    ),
        ),
      ),
    );
  }
}
