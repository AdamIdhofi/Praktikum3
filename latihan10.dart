import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "For You", // Tab label
                    style: TextStyle(
                      color: Colors.white, // Set text color to white
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Following", // Tab label
                    style: TextStyle(
                      color: Colors.white, // Set text color to white
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // For You Tab
              ListView.builder(
                itemCount: 5, // Adjusted item count
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(), // Add border decoration
                    ),
                    child: ListTile(
                      leading: const FlutterLogo(size: 24), // Flutter logo
                      title: Text("Data ke $index"), // Text data
                    ),
                  );
                },
              ),
              // Following Tab
              GridView.count(
                crossAxisCount: 2, // 2 columns
                children: List.generate(4, (index) {
                  // Example owl image URLs
                  List<String> owlImages = [
                    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fcbop.audubon.org%2Fget-involved%2Fowls&psig=AOvVaw3s1XzH6iMdH_r8Dm9o5trc&ust=1711101496501000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCMCn8fiLhYUDFQAAAAAdAAAAABAJ",
                    "https://www.google.com/url?sa=i&url=https%3A%2F%2Falaskaraptor.org%2Fproduct%2Fowlison%2F&psig=AOvVaw3s1XzH6iMdH_r8Dm9o5trc&ust=1711101496501000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCMCn8fiLhYUDFQAAAAAdAAAAABAE",
                    "https://www.google.com/url?sa=i&url=https%3A%2F%2Falaskaraptor.org%2Fproduct%2Fowlison%2F&psig=AOvVaw3s1XzH6iMdH_r8Dm9o5trc&ust=1711101496501000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCMCn8fiLhYUDFQAAAAAdAAAAABAE",
                    "https://www.google.com/url?sa=i&url=https%3A%2F%2Falaskaraptor.org%2Fproduct%2Fowlison%2F&psig=AOvVaw3s1XzH6iMdH_r8Dm9o5trc&ust=1711101496501000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCMCn8fiLhYUDFQAAAAAdAAAAABAE",
                  ];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(owlImages[index]), // Owl image
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}