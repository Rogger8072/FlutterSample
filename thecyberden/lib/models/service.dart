import 'package:flutter/material.dart';

class Service {
  final String id;
  final String title;
  final Color color;

  const Service({
    @required this.id,
    @required this.title,
    this.color = Colors.blueAccent,
  });
}
