import 'package:auction_app/pages/add_product.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('data'),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: const Center(child: Text("data")),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // ignore: prefer_const_constructors
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AddProduct()));
        },
        child: const Icon(
          Icons.add,
        ),
        ),
    );
  }
}