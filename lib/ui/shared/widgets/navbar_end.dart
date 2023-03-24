import 'package:flutter/material.dart';
import 'package:steam/ui/shared/widgets/navbar_avatar.dart';
import 'package:steam/ui/shared/widgets/notifications_indicator.dart';

class NavbarEnd extends StatelessWidget {
  const NavbarEnd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      width: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          _InstallSteam(),
          NotificationsIndicator(),
          NavbarAvatar(),
        ],
      ),
    );
  }
}

class _InstallSteam extends StatelessWidget {
  const _InstallSteam();

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          //TODO: mandar view para instalar steam
          print("instalar steam");
        },
        child: Container(
          height: 25,
          width: 115,
          color: const Color.fromRGBO(97, 106, 114, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(
                Icons.file_download_outlined,
                color: Colors.white,
              ),
              Text(
                "Install Steam",
                style: TextStyle(color: Colors.white, fontSize: 11),
              )
            ],
          ),
        ),
      ),
    );
  }
}
