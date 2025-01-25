import 'package:flutter/material.dart';

class FindPartnerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController breedController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text('Find a Partner')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: breedController,
              decoration: InputDecoration(labelText: 'Breed'),
            ),
            ElevatedButton(
              onPressed: () {
                final breed = breedController.text;
                Navigator.pushNamed(context, '/pet-list', arguments: {'filterBreed': breed});
              },
              child: Text('Search'),
            ),
          ],
        ),
      ),
    );
  }
}
