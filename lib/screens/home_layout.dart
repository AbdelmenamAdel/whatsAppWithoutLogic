import 'package:flutter/material.dart';
import 'package:whats_app/constants/constants.dart';
import 'package:whats_app/screens/CallScreen.dart';
import 'package:whats_app/screens/ChatScreen.dart';
import 'package:whats_app/screens/StatusScreen.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: const Text('What\'s App'),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
            const SizedBox(
              width: 10,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            const SizedBox(
              width: 10,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Chats'),
              Tab(
                text: 'Status',
              ),
              Tab(
                text: 'Call',
              )
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/BEBO.jpg'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'SOFTWARE ENGINEER',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      'Abdelmenam Adel',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                splashColor: kPrimaryColor,
                leading: const Icon(Icons.phone),
                title: const Text('01556878109'),
                onTap: () {},
              ),
              ListTile(
                splashColor: const Color.fromARGB(255, 18, 192, 108),
                leading: const Icon(Icons.email),
                title: const Text('abdelmenamadel96@gmail.com'),
                onTap: () {},
              ),
              ListTile(
                splashColor: const Color.fromARGB(255, 18, 192, 108),
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: const Column(
          children: [
            Expanded(
                child: TabBarView(
                    children: [ChatPage(), StatusPage(), CallPage()]))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: kPrimaryColor,
          child: const Icon(Icons.message),
        ),
      ),
    );
  }
}
