import 'package:flutter/material.dart';
import '../pet_details/pet_details_screen.dart';

class PetListScreen extends StatefulWidget {
  @override
  _PetListScreenState createState() => _PetListScreenState();
}

class _PetListScreenState extends State<PetListScreen> {
  final PageController _controller = PageController();

  // Примерен список на миленичиња
  final List<Map<String, String>> pets = [
    {'image': 'assets/images/dog1.jpg', 'breed': 'Golden Retriever', 'name': 'Buddy', 'age': '2 years'},
    {'image': 'assets/images/dog2.webp', 'breed': 'German Shepherd', 'name': 'Max', 'age': '3 years'},
    {'image': 'assets/images/dog3.jpg', 'breed': 'Bulldog', 'name': 'Rocky', 'age': '4 years'},
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('View Pets')),
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            itemCount: pets.length,
            onPageChanged: (index) => setState(() => currentPage = index),
            itemBuilder: (context, index) {
              final pet = pets[index];
              return GestureDetector(
                onTap: () {

                  Navigator.pushNamed(
                    context,
                    '/pet-details',
                    arguments: pet,
                  );
                },
                child: Card(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(pet['image']!, height: 200),
                      SizedBox(height: 10),
                      Text(
                        pet['breed']!,
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Positioned(
            left: 10,
            top: MediaQuery.of(context).size.height / 2 - 20,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                if (currentPage > 0) _controller.previousPage(duration: Duration(milliseconds: 300), curve: Curves.ease);
              },
            ),
          ),
          Positioned(
            right: 10,
            top: MediaQuery.of(context).size.height / 2 - 20,
            child: IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                if (currentPage < pets.length - 1)
                  _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease);
              },
            ),
          ),
        ],
      ),
    );
  }
}
