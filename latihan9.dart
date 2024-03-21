import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peduli Lindungi',
      theme: ThemeData(
        primaryColor: Colors.blueAccent, 
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Peduli Lindungi'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                color: Colors.blue, 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Entering a Public Space?',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white, 
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Stay Alert to Stay Safe',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white, 
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/scan.png', 
                          width: 100,
                          height: 100,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.keyboard_arrow_down),
                            Text(
                              'Check-In Preference',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton.icon(
                          onPressed: () {
                          },
                          icon: Icon(
                            Icons.qr_code_scanner,
                            color: Colors.blue,
                          ),
                          label: Text(
                            'Check-In',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    _buildMenuRow([
                      _buildMenuItem(
                        'Sertifikat Vaksin',
                        'assets/sertifikat vaksin.png',
                        'Sertifikat Vaksin',
                      ),
                      _buildMenuItem(
                        'Hasil Tes COVID-19',
                        'assets/covid test.png',
                        'Hasil Tes COVID-19',
                      ),
                      _buildMenuItem(
                        'EHAC',
                        'assets/ehac.png',
                        'EHAC',
                      ),
                    ]),
                    const SizedBox(height: 20),
                    _buildMenuRow([
                      
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuRow(List<Widget> children) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: children,
    );
  }

  Widget _buildMenuItem(String title, String imagePath, String featureName) {
    return SizedBox(
      width: 100,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 40,
              height: 40,
            ),
            const SizedBox(height: 10),
            Text(
              featureName,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}