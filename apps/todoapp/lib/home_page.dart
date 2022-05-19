import 'package:flutter/material.dart';
import 'package:todoapp/about_page.dart';
import 'package:todoapp/contact_page.dart';

class HomePage extends StatelessWidget {
  static String routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                    child: Icon(
                  Icons.person,
                  size: 46,
                )),
                accountName: Text("Bishworaj Poudel"),
                accountEmail: Text("iambrp.tech@gmail.com")),
            ListTile(
              leading: const Icon(
                Icons.home,
                size: 35,
                color: Colors.pink,
              ),
              title: const Text("Homepage"),
              subtitle: const Text("Visit Homepage"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.contact_mail,
                size: 35,
                color: Colors.pink,
              ),
              title: const Text("Contact Page"),
              subtitle: const Text("Visit Contact Page"),
              onTap: () {
                Navigator.pushNamed(context, ContactPage.routeName);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.info_outline,
                size: 35,
                color: Colors.pink,
              ),
              title: const Text("About Page"),
              subtitle: const Text("Visit About Page"),
              onTap: () {
                Navigator.pushNamed(context, AboutPage.routeName);
              },
            ),
            const Divider(
              color: Colors.red,
              thickness: 0.0,
            ),
            ListTile(
              leading: Icon(Icons.close),
              title: Text("Close"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
