import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
  const CustomAppBar({required this.title,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Text(title, style: TextStyle(fontSize: 24)),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 29, 29, 29),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: IconButton(onPressed: () {}, icon: Icon(icon)),
            ),
          ),
        ],
      ),
    );
  }
}
