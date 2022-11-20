import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidable View',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.5),
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: const HomeBody(),
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: const ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: null,
            icon: Icons.save,
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
          ),
          SlidableAction(
            onPressed: null,
            icon: Icons.edit,
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          ),
        ],
      ),
      endActionPane: const ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: null,
            icon: Icons.delete,
            foregroundColor: Colors.white,
            backgroundColor: Colors.red,
          ),
        ],
      ),
      child: ListTile(
        tileColor: Colors.white,
        title: const Text(
          "This is title",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        subtitle: Text(
          "This is subtitle",
          style: TextStyle(
            color: Colors.black.withOpacity(0.25),
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
