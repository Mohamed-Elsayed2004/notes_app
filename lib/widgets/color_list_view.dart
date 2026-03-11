import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  final bool isActive;
  final Color color;
  const ColorItem({super.key, required this.isActive, required this.color});

  @override
  Widget build(BuildContext context) {
    return isActive == true
        ? CircleAvatar(
            radius: 22,
            backgroundColor: Colors.white,
            child: CircleAvatar(radius: 20, backgroundColor: color),
          )
        : CircleAvatar(radius: 20, backgroundColor: color);
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  List<Color> colorList = [
    Color(0xffEB4C4C),
    Color(0xffFF7070),
    Color(0xffFFA6A6),
    Color(0xffFFEDC7),
    Color(0xffFF9760),
    Color(0xffFFB347),
    Color(0xffFF7F50),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 22 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colorList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                  BlocProvider.of<AddNoteCubit>(context).currentColor = colorList[index];
                });
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: colorList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
