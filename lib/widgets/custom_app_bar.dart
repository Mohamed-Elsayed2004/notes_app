import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Notes", style: TextStyle(fontSize: 24)),
        Spacer(),
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 29, 29, 29),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: IconButton(onPressed: () {}, icon: Icon(Icons.search))),
        ),
      ],
    );
  }
}