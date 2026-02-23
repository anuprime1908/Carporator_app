import 'package:carporater/widgets/gradient.dart';
import 'package:flutter/material.dart';
import 'package:carporater/widgets/appbar.dart';

class MainScaffold extends StatefulWidget {
  final Widget body;
  final String title;

  const MainScaffold({
    super.key,
    required this.body,
    required this.title,
  });

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {

  bool isMenuOpen = false;

  void toggleMenu() {
    setState(() => isMenuOpen = !isMenuOpen);
  }

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final menuWidth = width * 0.65;

    return Scaffold(
      body: Stack(
        children: [

          Scaffold(
            appBar: appBar(
              context,
              title: widget.title,
              hamburger: true,
              onMenuPressed: toggleMenu,
            ),

            body: widget.body,
          ),

          if (isMenuOpen)
            GestureDetector(
              onTap: toggleMenu,
              child: Container(
                color: Colors.black.withOpacity(0.4),
              ),
            ),

          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            left: isMenuOpen ? 0 : -menuWidth,
            top: 0,
            bottom: 0,
            child: Container(
              width: menuWidth,
              decoration: const BoxDecoration(
                gradient: AppGradients.glowGradient,
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.black26, blurRadius: 15),
                ],
              ),
              child: SafeArea(
                child: Column(
                  children: [

                    const SizedBox(height: 20),
                    const CircleAvatar(radius: 60,backgroundColor: Colors.white,),
                    const SizedBox(height: 10),
                    const Text(
                      "User Name",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                    ),

                    const Divider(),

                    menuItem(Icons.home, "Home",),
                    menuItem(Icons.person, "Profile"),
                    menuItem(Icons.settings, "Settings"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget menuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon ,color: Colors.white,),
      title: Text(title,
      style: TextStyle(
        color: Colors.white,
      ),),
      onTap: () {},
    );
  }
}

