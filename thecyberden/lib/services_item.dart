import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:thecyberden/service_details_screen.dart';

class ServiceItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  ServiceItem(
    this.id,
    this.title,
    this.color,
  );

  void selectService(BuildContext context) {
    Navigator.of(context).pushNamed(ServiceDetailsScreen.routeName, arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectService(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color, // End value of gradient
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
