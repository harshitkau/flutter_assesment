import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assesment/user/cato_page/for_you_page.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.menu, color: Color.fromARGB(255, 91, 90, 90)),
                onPressed: () {},
              ),
              Text(
                "Categories",
                style: TextStyle(
                    fontSize: 25, color: Color.fromARGB(255, 112, 109, 109)),
              ),
              IconButton(
                icon:
                    Icon(Icons.search, color: Color.fromARGB(255, 49, 49, 49)),
                onPressed: () {},
              )
            ],
          ),
          bottom: const TabBar(
            //isScrollable: true,
            indicatorColor: Colors.pinkAccent,
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.pinkAccent,
            indicatorWeight: 5,
            tabs: [
              Tab(text: 'For You'),
              Tab(text: 'Design'),
              Tab(text: 'Beauty'),
              Tab(text: 'Education'),
            ],
          ),
          elevation: 20,
          titleSpacing: 20,
        ),
        body: TabBarView(
          children: [
            ForYou(),
            buildPage('Feed Page'),
            buildPage('Profile Page'),
            buildPage('Settings Page'),
          ],
        ),
      ),
    );
  }

  Widget buildPage(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 28),
        ),
      );
}
