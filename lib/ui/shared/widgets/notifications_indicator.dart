import 'package:flutter/material.dart';

class NotificationsIndicator extends StatelessWidget {
  const NotificationsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          MouseRegion(
            onHover: (event) {},
            cursor: SystemMouseCursors.click,
            child: Container(
                color: const Color.fromRGBO(38, 38, 37, 1),
                height: 25,
                width: 30,
                child: const Icon(Icons.mail, color: Colors.white, size: 12)),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: MouseRegion(
              onHover: (event) {
                print("cambiar color ");
              },
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  children: const [
                    Text(
                      "Morita",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
        MouseRegion(
          onHover: (event) {
            print("cambiar color ");
          },
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
              onTap: () {},
              child: const Text("Mex\$ 0.00",
                  style: TextStyle(color: Colors.white, fontSize: 12))),
        )
      ],
    );
  }
}
