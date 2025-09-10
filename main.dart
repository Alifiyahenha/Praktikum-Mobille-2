import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Row and Column",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Row and Column"),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  KotakCustom(warna: Color.fromARGB(255, 33, 226, 243), teks: "favorit 1"),
                  SizedBox(width: 10),
                  KotakCustom(warna: Color.fromARGB(255, 76, 114, 175), teks: "favorit 2"),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  KotakCustom(warna: Color.fromARGB(255, 255, 225, 0), teks: "favorit 3"),
                  SizedBox(width: 10),
                  KotakCustom(warna: Color.fromARGB(255, 176, 98, 39), teks: "favorit 4"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KotakCustom extends StatelessWidget {
  final Color warna;
  final String teks;

  const KotakCustom({super.key, required this.warna, required this.teks});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: warna,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.favorite,
            color: Colors.red, 
            size: 40,
          ),
          const SizedBox(height: 5),
          Text(
            teks,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
