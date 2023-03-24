import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:steam/models/search_response.dart';
import 'package:steam/providers/search_provider.dart';
import 'package:steam/services/navigation_service.dart';
import 'package:steam/ui/searchbar/searchbar.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Spacer(
            flex: 10,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: BodyView(),
          ),
          Spacer(
            flex: 10,
          )
        ],
      ),
    );
  }
}

class BodyView extends StatelessWidget {
  const BodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SearchBar(),
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                ResultBody(),
                FilterBody(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FilterBody extends StatelessWidget {
  const FilterBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      // color: Colors.cyan,
      height: 500,
      width: 300,
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff323E4C), width: 5)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: double.infinity,
                  color: const Color(0xff323E4C),
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      "Narrow by Price",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: NarrowByPrice(),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

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

class ResultBody extends StatelessWidget {
  const ResultBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final searchProvider = Provider.of<SearchProvider>(context);

    return SizedBox(
      width: 700,
      height: 1000,
      child: ListView.builder(
          itemCount: searchProvider.result.length,
          itemBuilder: (_, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: CardResult(response: searchProvider.result[index]),
            );
          }),
    );
  }
}

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
                SizedBox(
                  width: 100,
                ),
                Container(
                  width: 60,
                  child: Align(
                      child: Text(
                    response.price.toString().trim(),
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )),
                ),
                SizedBox(
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
