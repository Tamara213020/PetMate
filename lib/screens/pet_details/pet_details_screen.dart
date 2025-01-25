import 'package:flutter/material.dart';

class PetDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final pet = ModalRoute.of(context)?.settings.arguments as Map<String, String>?;

    if (pet == null) {
      return Scaffold(
        appBar: AppBar(title: Text('Pet Details')),
        body: Center(child: Text('No pet details available')),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text('${pet['name']} Details')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Image.asset(pet['image']!, height: 200),
            SizedBox(height: 10),

            Text(
              pet['name']!,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            Text(
              'Breed: ${pet['breed']}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),

            Text(
              'Age: ${pet['age']}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
