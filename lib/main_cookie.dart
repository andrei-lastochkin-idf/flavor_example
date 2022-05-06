import 'package:flavor_example/flavor_config.dart';
import 'package:flavor_example/main_common.dart';
import 'package:flutter/material.dart';

void main() {
  mainCommon(
    FlavorConfig()
      ..appTitle = "Munchy Crunchy"
      ..imageLocation = "assets/images/munchy_crunchy.jpeg"
      ..apiEndpoint = {
        Endpoints.items: "api.munchycrunchy.dev/items",
        Endpoints.details: "api.munchycrunchy.dev/items"
      }
      ..theme = ThemeData.dark(),
  );
}