import 'package:flutter/material.dart';

void main() => runApp(const ProfileApp());

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Profile Card')),
        body: Center(
          child: Card(
            elevation: 6,
            margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // 1. The Image at the top
                const Image(
                  image: AssetImage('assets/images/profile.jpg'),
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                // 2. The Text section
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: const [
                      Text(
                        'Simone Earl Madarang',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text('Website Developer'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}