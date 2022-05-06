import 'package:flavor_example/flavor_config.dart';
import 'package:flavor_example/main_common.dart';
import 'package:flutter/material.dart';

void main() {
  mainCommon(
    FlavorConfig()
      ..appTitle = "Beans Factory"
      ..apiEndpoint = {
        Endpoints.items: "random.api.dev/items",
        Endpoints.details: "random.api.dev/item"
      }
      ..imageLocation = "assets/images/coffee_bean.jpeg"
      ..theme = ThemeData.light().copyWith(
        primaryColor: Color(0xFF123456),
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
          backgroundColor: Color(0xFF654321),
        ),
      ),
  );
}