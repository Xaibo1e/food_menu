import 'package:flutter/material.dart';

void main() => runApp(const MenuApp());

class MenuApp extends StatelessWidget {
  const MenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FoodMenuPage(),
    );
  }
}

class FoodMenuPage extends StatelessWidget {
  const FoodMenuPage({super.key});

  final List<Map<String, dynamic>> foods = const [
    {'name': 'ข้าวกะเพราหมูสับ', 'price': 50},
    {'name': 'ข้าวผัดไข่', 'price': 40},
    {'name': 'ต้มยำกุ้ง', 'price': 80},
    {'name': 'ผัดไทย', 'price': 60},
    {'name': 'ส้มตำไทย', 'price': 45},
    {'name': 'ไก่ทอด', 'price': 55},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('เมนูอาหาร'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: foods.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1.0,
          ),
          itemBuilder: (context, index) {
            final food = foods[index];
            return Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.restaurant, size: 40),
                  const SizedBox(height: 8),
                  Text(
                    food['name'],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text('${food['price']} บาท'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}