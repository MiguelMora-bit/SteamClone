import 'package:flutter/material.dart';
import 'package:steam/models/search_response.dart';
import 'package:steam/services/navigation_service.dart';
import 'package:steam/ui/searchbar/searchbar.dart';
import 'package:steam/ui/views/SearchView/partials/narrow_price.dart';
import 'package:steam/ui/views/SearchView/partials/result_body.dart';

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
