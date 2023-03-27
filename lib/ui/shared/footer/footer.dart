import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 250, vertical: 40),
      margin: const EdgeInsets.only(top: 50, bottom: 50),
      width: double.infinity,
      decoration: buildBoxDecoration(),
      child: IntrinsicWidth(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Divider(
              color: Colors.grey,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/footerLogo_valve_new.png",
                  height: 50,
                  width: 150,
                ),
                const Spacer(),
                Image.asset(
                  "assets/logo_steam_footer.png",
                  height: 50,
                  width: 150,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "© 2023 Valve Corporation. Todos los derechos reservados. Todas las marcas registradas pertenecen a sus respectivos dueños en EE. UU. y otros países.",
              style: TextStyle(color: Colors.white),
            ),
            const Text(
              "Todos los precios incluyen IVA (donde sea aplicable).   | Politica de privacidad  | Información legal | Acuerdo de suscriptor a Steam | Reembolsos  | Cookies",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 40,
            ),
            const Divider(
              color: Colors.grey,
            ),
            const Text(
              "Acerca de Valve.   | Empleo  | Steamworks | Distribución de Steam | Soporte  | Tarjetas de regalo",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => const BoxDecoration(
      color: Color.fromRGBO(23, 26, 33, 1),
      boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)]);
}
