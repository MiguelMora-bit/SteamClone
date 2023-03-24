import 'package:flutter/material.dart';
import 'package:steam/ui/shared/dropDownOptions/custom_menu_item.dart';

class CustomAppMenu extends StatefulWidget {
  final String text;
  final List<CustomMenuItem> menuItems;
  const CustomAppMenu({super.key, required this.text, required this.menuItems});

  @override
  State<StatefulWidget> createState() {
    return _CustomAppMenuState();
  }
}

class _CustomAppMenuState extends State<CustomAppMenu>
    with SingleTickerProviderStateMixin {
  bool isOpen = false;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onExit: (event) {
        controller.reverse();
        setState(() {
          isOpen = false;
        });
      },
      onEnter: (_) {
        controller.forward();
        setState(() {
          isOpen = true;
        });
      },
      child: Container(
        width: 120,
        color: const Color.fromRGBO(23, 26, 33, 1),
        height: isOpen ? getSize(widget.menuItems) : 25,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.text,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
            const SizedBox(height: 8,),
            if (isOpen) ...widget.menuItems
          ],
        ),
      ),
    );
  }
}

double getSize(List<CustomMenuItem> items){

  double size = 25;

  if(items.isNotEmpty){
    for (var element in items) {
      if(element.text.length > 13){
        size+= 7;
      }
      size += 25;
    }
  }


  return size;
}
