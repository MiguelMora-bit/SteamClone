import 'package:flutter/material.dart';
import 'package:steam/ui/shared/widgets/search_text.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (size.width <= 1000) {
      return const SearchBarMovile();
    } else {
      return const SearchBarTabletDesktop();
    }
  }
}

class SearchBarMovile extends StatelessWidget {
  const SearchBarMovile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * .98,
      decoration: _buildBoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          _InitialBox(),
          _CustomText(text: "New & Noteworthy"),
          _CustomText(text: "Categories"),
          _CustomText(text: "Point Shop"),
          _CustomText(text: "News"),
          _CustomText(text: "Labs"),
          SearchText()
        ],
      ),
    );
  }
}

class SearchBarTabletDesktop extends StatelessWidget {
  const SearchBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _buildBoxDecoration(),
      child: Row(
        children: [
          const _InitialBox(),
          const _CustomText(text: "New & Noteworthy"),
          const _CustomText(text: "Categories"),
          const _CustomText(text: "Point Shop"),
          const _CustomText(text: "News"),
          const _CustomText(text: "Labs"),
          const Spacer(),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 220),
            child: const SearchText(),
          ),
        ],
      ),
    );
  }
}

BoxDecoration _buildBoxDecoration() {
  return const BoxDecoration(
      gradient: LinearGradient(colors: [Color(0xff307DBF), Color(0xff1D3E81)]));
}

class _InitialBox extends StatelessWidget {
  const _InitialBox();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        Image.network(
          'https://avatars.cloudflare.steamstatic.com/6f982210fe9a377fdb74d9a836e4d670f0fd68fc.jpg',
          width: 25,
          height: 25,
        ),
        const _CustomText(text: "Your Store"),
      ],
    );
  }
}

class _CustomText extends StatelessWidget {
  final String text;

  const _CustomText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
