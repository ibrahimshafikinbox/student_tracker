import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late String selectedItem;

  @override
  void initState() {
    super.initState();
    selectedItem = ""; // Initialize selectedItem as empty string
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 1, 10, 18),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildItem("Locate"),
            SizedBox(width: 60),
            buildItem("Today"),
            SizedBox(width: 60),
            buildItem("History"),
          ],
        ),
      ),
    );
  }

  Widget buildItem(String itemName) {
    bool isSelected = selectedItem == itemName;

    return GestureDetector(
      onTap: () {
        setState(() {
          // Update selectedItem when an item is tapped
          selectedItem = itemName;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : null,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          itemName,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.white,
          ),
        ),
      ),
    );
  }
}
