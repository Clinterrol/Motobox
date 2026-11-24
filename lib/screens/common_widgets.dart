import 'package:flutter/material.dart';
import '../main.dart';

class MotoTopBar extends StatelessWidget {
  const MotoTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        children: [
          Icon(Icons.hexagon_outlined, color: MotoBoxApp.orange, size: 36),
          SizedBox(width: 8),
          Text('MotoBox',
              style: TextStyle(fontSize: 24, color: MotoBoxApp.orange)),
          Spacer(),
          Icon(Icons.notifications_none, color: MotoBoxApp.orange, size: 30),
        ],
      ),
    );
  }
}

class MotoBottomNav extends StatelessWidget {
  const MotoBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: Colors.black12)),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home_outlined, color: MotoBoxApp.dark),
          Icon(Icons.favorite_border, color: MotoBoxApp.dark),
          Icon(Icons.add, color: MotoBoxApp.dark),
          Icon(Icons.chat_bubble_outline, color: MotoBoxApp.dark),
          Icon(Icons.person_outline, color: MotoBoxApp.dark),
        ],
      ),
    );
  }
}