import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.red),
    title: "Nalem7",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Product List App")),
        ),
        drawer: Drawer(
            child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text('Contact'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('About us'),
              onTap: () {},
            ),

            //ListTile(leading: Icon(Icons.contact_mail, title: Text('Contact mail')),
          ],
        )),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.shop, color: Colors.red),
              title: Text('Iphone XR'),
              subtitle: Text('Nalem7'),
              trailing: Text('Price:200'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text('Iphone XR'),
              subtitle: Text('Nalem7'),
              trailing: Text('Price:200'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text('Iphone XR'),
              subtitle: Text('Nalem7'),
              trailing: Text('Price:200'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text('Iphone XR'),
              subtitle: Text('Nalem7'),
              trailing: Text('Price:200'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shop, color: Colors.red),
              title: Text('Iphone XR'),
              subtitle: Text('Nalem7'),
              trailing: Text('Price:200'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text('Iphone XR'),
              subtitle: Text('Nalem7'),
              trailing: Text('Price:200'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text('Iphone XR'),
              subtitle: Text('Nalem7'),
              trailing: Text('Price:200'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text('Iphone XR'),
              subtitle: Text('Nalem7'),
              trailing: Text('Price:200'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text('Iphone XR'),
              subtitle: Text('Nalem7'),
              trailing: Text('Price:200'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text('Iphone XR'),
              subtitle: Text('Nalem7'),
              trailing: Text('Price:200'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text('Iphone XR'),
              subtitle: Text('Nalem7'),
              trailing: Text('Price:200'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text('Iphone XR'),
              subtitle: Text('Nalem7'),
              trailing: Text('Price:200'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text('Iphone XR'),
              subtitle: Text('Nalem7'),
              trailing: Text('Price:200'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shop),
              title: Text('Iphone XR'),
              subtitle: Text('Nalem7'),
              trailing: Text('Price:200'),
              onTap: () {},
            ),
          ],
        ));
  }
}
