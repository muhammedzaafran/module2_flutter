import 'package:flutter/material.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  List<String> names = ["Vineeth", "Bruce Wayne", "John Wick", "Travis Bickle", "Patrick Bateman", "Louis Bloomfield", "Alfred Pennyworth"];
  List<String> messages = ["Hey", "I am the Shadows", "Welcome to HighTable", "That's crazy", "I want no one to escape", "Nightcrawler", "Dinner sir?"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          body:
          ListView.separated(
            itemCount: names.length,
            separatorBuilder: (context, index) => const Divider(), // Add a divider between items
            itemBuilder: (context, index) {
              return ListTile(
                subtitle: Text(messages[index]),
                leading: const CircleAvatar(backgroundColor: Colors.greenAccent, radius: 10),
                title: Text(names[index]),
              );
            },
          ),
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.greenAccent,
            title: const Text(
              "CloneApp",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            elevation: 10,
            bottom: const TabBar(
                labelColor: Colors.white,
                indicatorColor: Colors.green,
                unselectedLabelColor: Colors.white,
                // dividerColor: Colors.green,
                // indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    icon: Icon(Icons.group),
                  ),
                  Tab(
                    child: Text("Chats"),
                  ),
                  Tab(
                    child: Text("Updates"),
                  ),
                  Tab(
                    child: Text("Calls"),
                  )
                ]),
            actions: [
              IconButton(
                icon: Icon(Icons.camera_alt_outlined),
                onPressed: () {
                  // Add your search action logic here
                  print('Search icon pressed');
                },
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Add your search action logic here
                  print('Search icon pressed');
                },
              ),
              PopupMenuButton(
                padding: EdgeInsets.all(10),
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(child: Text("New group")),
                    const PopupMenuItem(child: Text("New broadcast")),
                    const PopupMenuItem(child: Text("Linked devices")),
                    const PopupMenuItem(child: Text("Starred messages")),
                    const PopupMenuItem(child: Text("Payments")),
                    const PopupMenuItem(child: Text("Settings")),
                  ];
                },
              )
            ],
          ),
        ));
  }
}
