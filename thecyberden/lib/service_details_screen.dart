import 'package:flutter/material.dart';
import 'package:thecyberden/models/service.dart';

class ServiceDetailsScreen extends StatelessWidget {
  static const routeName = '/service-details';
  // final String serviceId;
  // final String serviceTitle;

  // ServiceDetailsScreen(this.serviceId, this.serviceTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String,
        String>; // to store arguments we passed while navigating (push named)..
    final serviceId = routeArgs['id'];
    final serviceTitle = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          serviceTitle,
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
      body: Center(
        child: Text(
          "The Detail for the service!",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
