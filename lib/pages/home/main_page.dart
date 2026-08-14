import 'package:flutter/material.dart';
import '../../theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {

    Widget cartButton() {
      return FloatingActionButton(
        onPressed: (){},
        backgroundColor: secondaryColor,
        shape: const CircleBorder(),
        child: Image.asset(
          'assets/icon_cart.png',
          width: 20,
        ),
      );
    }

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(20)
        ),
        child: BottomAppBar(
          color: backgroundColor4,
          height: 80,
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: MediaQuery(
            data: MediaQuery.of(context).copyWith(
              padding: EdgeInsets.zero,
            ),
            child: BottomNavigationBar(
              backgroundColor: backgroundColor4,
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset('assets/icon_home.png', width: 21),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/icon_chat.png', width: 20),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/icon_wishlist.png', width: 20),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/icon_profile.png', width: 20),
                  label: '',
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: const Center(
        child: Text('Main Page')
      ),
    );
  }
}