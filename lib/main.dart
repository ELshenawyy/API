import 'package:flutter/material.dart';
import 'package:flutter_bloc_breakingbad/widget/app_routes.dart';

void main() {
  runApp(RickAndMorty(
    appRoute: AppRoute(),
  ));
}

class RickAndMorty extends StatelessWidget {
  const RickAndMorty({super.key, required this.appRoute});

  final AppRoute appRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRoute.generateRoute,
    );
  }
}
