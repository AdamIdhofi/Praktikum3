import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek Home',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue, // Warna latar belakang biru
          title: Text(
            'Gojek', // Menyempurnakan penulisan judul
            style: TextStyle(
              color: Colors.white, // Warna teks putih
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: const Color.fromARGB(
                  255, 242, 243, 243), // Warna latar belakang biru
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your favorites',
                    style: TextStyle(
                      color: Colors.black, // Warna teks hitam
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Aksi ketika tombol "Edit" ditekan
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.green),
                      ),
                    ),
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                padding: const EdgeInsets.all(8),
                children: [
                  buildMenuItem('GoRide', 'assets/goride.png'),
                  buildMenuItem('GoCar', 'assets/gocar.png'),
                  buildMenuItem('GoFood', 'assets/gofood.png'),
                  buildMenuItem('GoSend', 'assets/gosend.png'),
                  buildMenuItem('GoMart', 'assets/gomart.png'),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(String title, String imageName) {
    return InkWell(
      onTap: () {
        // Aksi ketika item diketuk
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageName,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}