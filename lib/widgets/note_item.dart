import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.only(left: 8, bottom: 24, top: 24),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              "Flutter Tips",
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Text(
                  "Build your career with Mohamed Elsayed",
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 0.5),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Icon(Icons.delete, color: Colors.black, size: 35),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, top: 24),
            child: Text(
              'May 21,2026',
              style: TextStyle(
                color: Colors.black.withValues(alpha: 0.5),
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
