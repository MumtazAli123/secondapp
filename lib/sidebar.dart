import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
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
              'ali@gmail.com',
              style: TextStyle(color: Colors.white),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://i.pinimg.com/280x280_RS/16/cd/f9/16cdf9de1f3a3739e1a2256e7e20051e.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                "https://image.shutterstock.com/image-vector/abstract-background-modern-hipster-futuristic-260nw-1441782806.jpg",
              ),
              fit: BoxFit.cover,
            )),
          ),
          const ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: Text('Home'),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Contact"),
          )
        ],
      ),
    );
  }
}
