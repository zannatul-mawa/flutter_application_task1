import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Calculator'),
      ),
      body: Column(
        children: [
          Expanded(child: Row1()),
          Expanded(child: Row2()),
          Expanded(child: Row3()),
          Expanded(child: Row4()),
          Expanded(child: Row5()),
          
       ],
      ),
    );
  }
}

class Row5 extends StatelessWidget {
  const Row5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MyContainer(text: '0'),
        ),
        Expanded(
          child: MyContainer(text: '.'),
        ),
        Expanded(
          child: MyContainer(text: '+'),
        ),
        Expanded(
          child: MyContainer(text: '='),
        ),
      ],
    );
  }
}

class Row4 extends StatelessWidget {
  const Row4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MyContainer(text: '1'),
        ),
        Expanded(
          child: MyContainer(text: '2'),
        ),
        Expanded(
          child: MyContainer(text: '3'),
        ),
        Expanded(
          child: MyContainer(text: '-'),
        ),
      ],
    );
  }
}

class Row3 extends StatelessWidget {
  const Row3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MyContainer(text: '4'),
        ),
        Expanded(
          child: MyContainer(text: '5'),
        ),
        Expanded(
          child: MyContainer(text: '6'),
        ),
        Expanded(
          child: MyContainer(text: 'x'),
        ),
      ],
    );
  }
}

class Row2 extends StatelessWidget {
  const Row2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MyContainer(text: '7'),
        ),
        Expanded(
          child: MyContainer(text: '8'),
        ),
        Expanded(
          child: MyContainer(text: '9'),
        ),
        Expanded(
          child: MyContainer(text: '/'),
        ),
      ],
    );
  }
}

class Row1 extends StatelessWidget {
  const Row1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MyContainer(text: '0'),
        ),
        
      ],
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key, 
    required this.text,
  }) : super(key: key);

final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 177, 202, 214),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Text(text)),
    );
  }
}

