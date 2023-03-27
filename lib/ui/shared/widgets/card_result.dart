import 'package:flutter/material.dart';
import 'package:steam/models/search_response.dart';
import 'package:steam/services/navigation_service.dart';

class CardResult extends StatelessWidget {
  final SearchResponse response;
  const CardResult({super.key, required this.response});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => NavigationService.navigateTo('/details/${response.appId}'),
        child: Container(
          color: const Color.fromARGB(64, 0, 0, 0),
          height: 47,
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(
                  response.imgUrl,
                ),
                Container(
                  margin: const EdgeInsets.all(2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        response.title,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      const Icon(
                        Icons.window,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Align(
                  child: Text(
                    response.released,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Icon(
                  Icons.switch_access_shortcut_outlined,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 100,
                ),
                SizedBox(
                  width: 60,
                  child: Align(
                      child: Text(
                    response.price.toString().trim(),
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  )),
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
