import 'package:flutter/material.dart';
import 'package:thecyberden/data.dart';
import 'package:thecyberden/services_item.dart';

class ServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Our Services',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(15),
        children: DATA_SERVICES
            .map(
              (serData) => ServiceItem(
                serData.id,
                serData.title,
                serData.color,
              ),
            )
            .toList(),
        // LOOK OF THE GRID...
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 25,
          mainAxisSpacing: 25,
        ),
      ),
    );
  }
}
