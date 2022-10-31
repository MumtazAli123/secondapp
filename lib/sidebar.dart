import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'Ali',
              style: TextStyle(color: Colors.white),
            ),
            accountEmail: const Text(
              'shah@gmail.com',
              style: TextStyle(color: Colors.white),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  './assets/images/Sir.jpeg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://minutemirror.com.pk//wp-content/uploads/2022/08/imran-khan-7.jpg',
                ),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: Text('Home'),
          ),
          const ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Contact"),
          ),
          const ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            onTap: () {
              print('Karachi');
            },
            title: Text("Phone"),
          )
        ],
      ),
    );
  }
}
