import 'package:flutter/material.dart';
import 'package:steam/ui/shared/widgets/navbar_avatar.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 200,
      height: double.infinity,
      decoration: buildBoxDecoration(),
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: const [
          SidebarTop(),
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => const BoxDecoration(
      color: Color.fromRGBO(23, 26, 33, 1),
      boxShadow: [BoxShadow(color: Colors.black, blurRadius: 10)]);
}

class SidebarTop extends StatelessWidget {
  const SidebarTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: buildBoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  NavbarAvatar(),
                  SizedBox(width: 15),
                  CustomTextEnfasis(text1: "Morita")
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextEnfasis(
                text1: "Cart ",
                text2: "(0)",
              ),
              const CustomTextEnfasis(text1: "Wallet ", text2: "(Mex\$ 0.00)")
            ],
          ),
        ));
  }

  BoxDecoration buildBoxDecoration() => const BoxDecoration(
      gradient: LinearGradient(stops: [
        0.1,
        0.3
      ], colors: [
        Color(0xff202C38),
        Color(0xff171A21),
      ], begin: Alignment.centerLeft, end: Alignment.centerRight),
      boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)]);
}

class CustomTextEnfasis extends StatelessWidget {
  final String text1;
  final String? text2;

  const CustomTextEnfasis({
    super.key,
    this.text2,
    required this.text1,
  });

  @override
  Widget build(BuildContext context) {
    final double fontsize = text2 != null ? 15 : 20;

    return RichText(
        text: TextSpan(
            text: text1,
            style:
                TextStyle(color: const Color(0xff57CBDE), fontSize: fontsize),
            children: <TextSpan>[
          TextSpan(
              text: text2,
              style: TextStyle(
                  color: const Color(0xff57CBDE),
                  fontWeight: FontWeight.bold,
                  fontSize: fontsize))
        ]));
  }
}
