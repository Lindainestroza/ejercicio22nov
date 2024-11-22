import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Operaciones Matemáticas',
      home: MathOperationsApp(),
    );
  }
}

class MathOperationsApp extends StatefulWidget {
  @override
  _MathOperationsAppState createState() => _MathOperationsAppState();
}

class _MathOperationsAppState extends State<MathOperationsApp> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  final TextEditingController num3Controller = TextEditingController();

  String result = "";

  void findMax() {
    double num1 = double.parse(num1Controller.text);
    double num2 = double.parse(num2Controller.text);
    double num3 = double.parse(num3Controller.text);
    setState(() {
      result = "El número mayor es: ${[num1, num2, num3].reduce((a, b) => a > b ? a : b)}";
    });
  }

  void findMin() {
    double num1 = double.parse(num1Controller.text);
    double num2 = double.parse(num2Controller.text);
    double num3 = double.parse(num3Controller.text);
    setState(() {
      result = "El número menor es: ${[num1, num2, num3].reduce((a, b) => a < b ? a : b)}";
    });
  }

  void calculateSquare() {
    double num1 = double.parse(num1Controller.text);
    setState(() {
      result = "El cuadrado de $num1 es: ${num1 * num1}";
    });
  }

  void calculateCube() {
    double num1 = double.parse(num1Controller.text);
    setState(() {
      result = "El cubo de $num1 es: ${num1 * num1 * num1}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Operaciones Matemáticas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 1'),
            ),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 2'),
            ),
            TextField(
              controller: num3Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 3'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: findMax,
              child: Text('Número mayor'),
            ),
            ElevatedButton(
              onPressed: findMin,
              child: Text('Número menor'),
            ),
            ElevatedButton(
              onPressed: calculateSquare,
              child: Text('Cuadrado de Número 1'),
            ),
            ElevatedButton(
              onPressed: calculateCube,
              child: Text('Cubo de Número 1'),
            ),
            SizedBox(height: 16),
            Text(
              result,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
