import 'package:flutter/material.dart';

class NarrowByPrice extends StatelessWidget {
  const NarrowByPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(value: 0, activeColor: Colors.white, onChanged: (_) {}),
        const Align(
            child: Text("Any price", style: TextStyle(color: Colors.white))),
        const Divider(),
        Row(
          children: [
            Checkbox(value: false, onChanged: (_) {}),
            const Text(
              "Special Offers",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        Row(
          children: [
            Checkbox(value: false, onChanged: (_) {}),
            const Text("Hide free to play items",
                style: TextStyle(color: Colors.white))
          ],
        )
      ],
    );
  }
}
