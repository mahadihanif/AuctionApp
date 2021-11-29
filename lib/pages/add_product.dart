import 'package:flutter/material.dart';


class AddProduct extends StatefulWidget {
  const AddProduct({ Key? key }) : super(key: key);

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text(
          'Add Auction',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          ),
      ),

      body: ListView(
        children: [
          ListTile(
            title: const Text("Product Name") ,
            subtitle: TextFormField(
              // controller: ,
              maxLength: 18,
              autofocus: true,
              textCapitalization: TextCapitalization.words,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                hintText: "Name",
                border: const UnderlineInputBorder(),
              ),
            ),
            ),

          ListTile(
            title: const Text("Description") ,
            subtitle: TextFormField(
              // controller: ,
              maxLength: 30,
              autofocus: true,
              textCapitalization: TextCapitalization.words,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                hintText: "Write Your Product Description",
                border: const UnderlineInputBorder(),
              ),
            ),
            ),


            ListTile(
            title: const Text("Minimum Bid Price") ,
            subtitle: TextFormField(
              // controller: ,
              maxLength: 18,
              autofocus: true,
              textCapitalization: TextCapitalization.words,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                hintText: "Enter an amount",
                border: const UnderlineInputBorder(),
              ),
            ),
            ),

            ListTile(
              title: Text('Auction end time'),
            ),
            ListTile(
              title: Text('Upload Product photo'),
            )
        ],
      ),
      
    );
  }
}