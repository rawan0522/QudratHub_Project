import 'package:flutter/material.dart';
import 'package:project/Component/BottomNavItem.dart';
import 'package:project/Providers/Registration_Provider.dart';
import 'package:project/buttons.dart';
import 'package:project/company/Employee/AccountPage.dart';
import 'package:project/company/Employee/ChatsPage.dart';
import 'package:project/company/Employee/HomePage/HomePage.dart';
import 'package:project/company/Employee/MyApplicationsPage.dart';
import 'package:project/company/Employee/NotificationsPage.dart';
import 'package:project/screens/signin_screen.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => RegisterProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Buttons(),
      ),
    );
  }
}

class CustomBottomNavBar extends StatefulWidget {

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 2;

  final List<Widget> _pages = [
    NotificationsPage(),
    ApplicationsPage(),
    HomePage(),
    ChatsPage(),
    AccountPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 80,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [ Colors.blueGrey, Colors.black, Colors.teal],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.vertical(top: Radius.circular(40),bottom: Radius.circular(97)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomNavItem(
                      icon: Icons.notifications_on,
                      label: 'Notifications',
                      isSelected: _selectedIndex == 0,
                      onTap: () => _onItemTapped(0),
                    ),
                    BottomNavItem(
                      icon: Icons.description,
                      label: 'Applications',
                      isSelected: _selectedIndex == 1,
                      onTap: () => _onItemTapped(1),
                    ),
                    SizedBox(width: 60),
                    BottomNavItem(
                      icon: Icons.chat,
                      label: 'Chats',
                      isSelected: _selectedIndex == 3,
                      onTap: () => _onItemTapped(3),
                    ),
                    BottomNavItem(
                      icon: Icons.person,
                      label: 'Account',
                      isSelected: _selectedIndex == 4,
                      onTap: () => _onItemTapped(4),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -25,
              left: MediaQuery.of(context).size.width / 2 - 35,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade400, width: 2),
                ),
                child: IconButton(
                  icon: Icon(Icons.home, color: Colors.black),
                  onPressed: () => _onItemTapped(2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// test
