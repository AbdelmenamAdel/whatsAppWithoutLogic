import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  List<String> statusUpdates = [
    "Hello, I'm using WhatsApp!",
    "Busy working on a Flutter project.",
    "Enjoying the weekend! 🌞",
    "Traveling to new places. ✈️",
    "Hello, I'm using WhatsApp!",
    "Busy working on a Flutter project.",
    "Enjoying the weekend! 🌞",
    "Traveling to new places. ✈️",
    "Hello, I'm using WhatsApp!",
    "Busy working on a Flutter project.",
    "Enjoying the weekend! 🌞",
    "Traveling to new places. ✈️",
    // Add more status updates here
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/BEBO.jpg'),
        ),
        title: const Text(
          'My Status',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              color: Colors.grey,
              onPressed: () {},
              icon: const Icon(Icons.more_vert)),
          const SizedBox(
            width: 10,
          ),
        ],
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: statusUpdates.length,
        itemBuilder: (context, index) {
          return buildStatusTile(statusUpdates[index]);
        },
      ),
    );
  }

  Widget buildStatusTile(String status) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage('assets/images/BEBO.jpg'),
      ),
      title: Text(
        status,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: const Text("3 minutes ago"),
      onTap: () {},
    );
  }
}
