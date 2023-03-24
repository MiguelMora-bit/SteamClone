import 'package:flutter/material.dart';
import 'package:steam/services/navigation_service.dart';
import 'package:steam/ui/shared/dropDownOptions/custom_app_menu.dart';
import 'package:steam/ui/shared/dropDownOptions/custom_menu_item.dart';

class NavbarOptions extends StatelessWidget {
  const NavbarOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 60, right: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NavbarOption(
              text: "STORE",
              onTap: () {
                NavigationService.navigateTo('/');
              }, menuItems: [
                    CustomMenuItem(text: 'Inicio', onPressed: () {}),
                    CustomMenuItem(text: 'Lista de descubrimientos', onPressed: () => () {}),
                    CustomMenuItem(text: 'Lista de deseos', onPressed: () => () {}),
                    CustomMenuItem(text: 'Tienda de puntos', onPressed: () => () {}),
                    CustomMenuItem(text: 'Noticias', onPressed: () => () {}),
                    CustomMenuItem(text: 'Estadisticas', onPressed: () => () {}),
                    ],),
          NavbarOption(text: "COMMUNITY", onTap: () {}, menuItems: [
                    CustomMenuItem(  text: 'Inicio', onPressed: () => () {}),
                    CustomMenuItem(  text: 'Discusiones', onPressed: () => () {}),
                    CustomMenuItem(  text: 'Workshop', onPressed: () => () {}),
                    CustomMenuItem(  text: 'Mercado', onPressed: () => () {}),
                    CustomMenuItem(  text: 'Retransmisiones', onPressed: () => () {}),
                    ],),
          NavbarOption(text: "MORITA", onTap: () {}, menuItems: [],),
          NavbarOption(text: "CHAT", onTap: () {}, menuItems: [],),
          NavbarOption(text: "SUPPORT", onTap: () {}, menuItems: [],),
        ],
      ),
    );
  }
}

class NavbarOption extends StatelessWidget {
  final String text;
  final Function onTap;
  final List<CustomMenuItem> menuItems;
  const NavbarOption({super.key, required this.text, required this.onTap, required this.menuItems});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => onTap(),
        child:  CustomAppMenu(text: text, menuItems: menuItems,),
      ),
    );
  }
}
