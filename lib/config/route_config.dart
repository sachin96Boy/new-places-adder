import 'package:go_router/go_router.dart';
import 'package:good_places_app/screens/add_place_screen.dart';
import 'package:good_places_app/screens/home_screen.dart';
import 'package:good_places_app/screens/places_detail_screen.dart';

// GoRouter configuration
final _router = GoRouter(
  routes: [
    GoRoute(
      name: HomeScreen.routeName,
      path: HomeScreen.routeName,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: PlacesDetailsScreen.routeName,
      path: PlacesDetailsScreen.routeName,
      builder: (context, state) => const PlacesDetailsScreen(),
    ),
    GoRoute(
      name: AddPlaceScreen.routeName,
      path: AddPlaceScreen.routeName,
      builder: (context, state) => const AddPlaceScreen(),
    ),
  ],
);

get router {
  return _router;
}
