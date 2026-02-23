import 'package:flutter/material.dart';

BottomNavigationBar bottomBar() {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.grey,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Movies'),
      BottomNavigationBarItem(icon: Icon(Icons.bookmarks), label: 'Bookmarks'),
    ],
    currentIndex: 0,
    selectedItemColor: Colors.amber,
    unselectedItemColor: Colors.white,
  );
}
