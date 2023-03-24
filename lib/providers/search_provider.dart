import 'package:flutter/material.dart';
import 'package:steam/dio/dio.dart';
import 'package:steam/dio/http.dart';
import 'package:steam/models/data_details.dart';
import 'package:steam/models/search_response.dart';

class SearchProvider extends ChangeNotifier {
  List<SearchResponse> result = [];
  String term = "";

  late Data currentData;
  late String currentpathImgVideo;
  late bool isVideo;

  getSearch() async {

    print(term);
    result.clear();
    // final resp = await ApiHttp.getRequest("/search/$term/page/1");

    final List<Map<String, dynamic>> resp = [
      {
        "appId": "1551360",
        "title": "Forza Horizon 5",
        "url":
            "https://store.steampowered.com/app/1551360/Forza_Horizon_5/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/1551360/capsule_sm_120.jpg?t=1677534139",
        "released": "8 Nov, 2021",
        "reviewSummary":
            "Very Positive<br>88% of the 99,997 user reviews for this game are positive.",
        "price": "59,99€"
      },
      {
        "appId": "1293830",
        "title": "Forza Horizon 4",
        "url":
            "https://store.steampowered.com/app/1293830/Forza_Horizon_4/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/1293830/capsule_sm_120.jpg?t=1667326422",
        "released": "9 Mar, 2021",
        "reviewSummary":
            "Very Positive<br>89% of the 159,021 user reviews for this game are positive.",
        "price": "                        69,99€                    "
      },
      {
        "appId": "1151640",
        "title": "Horizon Zero Dawn™ Complete Edition",
        "url":
            "https://store.steampowered.com/app/1151640/Horizon_Zero_Dawn_Complete_Edition/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/1151640/capsule_sm_120.jpg?t=1667297464",
        "released": "7 Aug, 2020",
        "reviewSummary":
            "Very Positive<br>87% of the 69,579 user reviews for this game are positive.",
        "price": "                        49,99€                    "
      },
      {
        "appId": "765810",
        "title": "Mars Horizon",
        "url":
            "https://store.steampowered.com/app/765810/Mars_Horizon/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/765810/capsule_sm_120.jpg?t=1668079709",
        "released": "17 Nov, 2020",
        "reviewSummary":
            "Very Positive<br>84% of the 2,241 user reviews for this game are positive.",
        "price": "                        17,99€                    "
      },
      {
        "appId": "236130",
        "title": "Horizon",
        "url":
            "https://store.steampowered.com/app/236130/Horizon/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/236130/capsule_sm_120.jpg?t=1618324829",
        "released": "6 Feb, 2014",
        "reviewSummary":
            "Mixed<br>57% of the 357 user reviews for this game are positive.",
        "price": "                        27,99€                    "
      },
      {
        "appId": "1224290",
        "title": "Horizon's Gate",
        "url":
            "https://store.steampowered.com/app/1224290/Horizons_Gate/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/1224290/capsule_sm_120.jpg?t=1666991468",
        "released": "9 Mar, 2020",
        "reviewSummary":
            "Overwhelmingly Positive<br>96% of the 682 user reviews for this game are positive.",
        "price": "                        19,50€                    "
      },
      {
        "appId": "1611420",
        "title": "Sea Horizon",
        "url":
            "https://store.steampowered.com/app/1611420/Sea_Horizon/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/1611420/capsule_sm_120.jpg?t=1668074120",
        "released": "19 Oct, 2022",
        "reviewSummary":
            "Very Positive<br>80% of the 104 user reviews for this game are positive.",
        "price": "                        14,99€                    "
      },
      {
        "appId": "1368540",
        "title": "Dead Horizon",
        "url":
            "https://store.steampowered.com/app/1368540/Dead_Horizon/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/1368540/capsule_sm_120.jpg?t=1676410473",
        "released": "Coming soon",
        "price": "                                            "
      },
      {
        "appId": "40350",
        "title": "Lost Horizon",
        "url":
            "https://store.steampowered.com/app/40350/Lost_Horizon/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/40350/capsule_sm_120.jpg?t=1645606288",
        "released": "24 Sep, 2010",
        "reviewSummary":
            "Very Positive<br>91% of the 341 user reviews for this game are positive.",
        "price": "                        9,99€                    "
      },
      {
        "appId": "1613283",
        "title": "Forza Horizon 5 VIP",
        "url":
            "https://store.steampowered.com/app/1613283/Forza_Horizon_5_VIP/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/1613283/capsule_sm_120.jpg?t=1636433713",
        "released": "8 Nov, 2021",
        "reviewSummary":
            "Mixed<br>45% of the 184 user reviews for this game are positive.",
        "price": "                        19,99€                    "
      },
      {
        "appId": "465000",
        "title": "Event Horizon",
        "url":
            "https://store.steampowered.com/app/465000/Event_Horizon/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/465000/capsule_sm_120.jpg?t=1667291906",
        "released": "20 Dec, 2018",
        "reviewSummary":
            "Mostly Positive<br>78% of the 120 user reviews for this game are positive.",
        "price": "                        5,99€                    "
      },
      {
        "appId": "1122960",
        "title": "Horizon Beyond",
        "url":
            "https://store.steampowered.com/app/1122960/Horizon_Beyond/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/1122960/capsule_sm_120.jpg?t=1567267500",
        "released": "31 Aug, 2019",
        "reviewSummary":
            "Very Positive<br>89% of the 166 user reviews for this game are positive.",
        "price": "                        Free                    "
      },
      {
        "appId": "394220",
        "title": "Last Horizon",
        "url":
            "https://store.steampowered.com/app/394220/Last_Horizon/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/394220/capsule_sm_120.jpg?t=1588696119",
        "released": "18 Nov, 2015",
        "reviewSummary":
            "Mostly Positive<br>79% of the 131 user reviews for this game are positive.",
        "price": "                        4,99€                    "
      },
      {
        "appId": "326120",
        "title": "Horizon Shift",
        "url":
            "https://store.steampowered.com/app/326120/Horizon_Shift/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/326120/capsule_sm_120.jpg?t=1580729217",
        "released": "29 May, 2015",
        "reviewSummary":
            "Positive<br>88% of the 18 user reviews for this game are positive.",
        "price": "                        4,99€                    "
      },
      {
        "appId": "598740",
        "title": "HORIZON VANGUARD",
        "url":
            "https://store.steampowered.com/app/598740/HORIZON_VANGUARD/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/598740/capsule_sm_120.jpg?t=1637888554",
        "released": "26 Jun, 2020",
        "reviewSummary":
            "Positive<br>90% of the 20 user reviews for this game are positive.",
        "price": "                        12,49€                    "
      },
      {
        "appId": "389140",
        "title": "Horizon Chase Turbo",
        "url":
            "https://store.steampowered.com/app/389140/Horizon_Chase_Turbo/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/389140/capsule_sm_120.jpg?t=1678109249",
        "released": "15 May, 2018",
        "reviewSummary":
            "Overwhelmingly Positive<br>95% of the 3,310 user reviews for this game are positive.",
        "price": "                        16,79€                    "
      },
      {
        "appId": "1952400",
        "title": "New Horizon",
        "url":
            "https://store.steampowered.com/app/1952400/New_Horizon/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/1952400/capsule_sm_120.jpg?t=1674508076",
        "released": "1 Aug, 2022",
        "reviewSummary":
            "Mixed<br>66% of the 18 user reviews for this game are positive.",
        "price": "                        4,99€                    "
      },
      {
        "appId": "700590",
        "title": "Ghostly Horizon",
        "url":
            "https://store.steampowered.com/app/700590/Ghostly_Horizon/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/700590/capsule_sm_120.jpg?t=1535130372",
        "released": "3 Apr, 2018",
        "reviewSummary":
            "Mostly Positive<br>76% of the 17 user reviews for this game are positive.",
        "price": "                        Free to Play                    "
      },
      {
        "appId": "589740",
        "title": "Blue Horizon",
        "url":
            "https://store.steampowered.com/app/589740/Blue_Horizon/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/589740/capsule_sm_120.jpg?t=1600949904",
        "released": "18 Aug, 2017",
        "reviewSummary":
            "Mixed<br>48% of the 52 user reviews for this game are positive.",
        "price": "                        4,69€                    "
      },
      {
        "appId": "352960",
        "title": "Star Horizon",
        "url":
            "https://store.steampowered.com/app/352960/Star_Horizon/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/352960/capsule_sm_120.jpg?t=1589561762",
        "released": "28 May, 2015",
        "reviewSummary":
            "Mixed<br>55% of the 68 user reviews for this game are positive.",
        "price": "                        8,19€                    "
      },
      {
        "appId": "899770",
        "title": "Last Epoch",
        "url":
            "https://store.steampowered.com/app/899770/Last_Epoch/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/899770/capsule_sm_120.jpg?t=1678472075",
        "released": "30 Apr, 2019",
        "reviewSummary":
            "Very Positive<br>85% of the 14,425 user reviews for this game are positive.<br><br>This product has experienced one or more periods of off-topic review activity.  Based on your preferences, the reviews within these periods have been excluded from this product's Review Score.",
        "price": "                        33,99€                    "
      },
      {
        "appId": "1613280",
        "title": "Forza Horizon 5: Hot Wheels",
        "url":
            "https://store.steampowered.com/app/1613280/Forza_Horizon_5_Hot_Wheels/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/1613280/capsule_sm_120.jpg?t=1659457026",
        "released": "19 Jul, 2022",
        "reviewSummary":
            "Mixed<br>54% of the 913 user reviews for this game are positive.",
        "price": "                        19,99€                    "
      },
      {
        "appId": "2109060",
        "title": "Magenta Horizon",
        "url":
            "https://store.steampowered.com/app/2109060/Magenta_Horizon/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/2109060/capsule_sm_120.jpg?t=1678659652",
        "released": "To be announced",
        "price": "                                            "
      },
      {
        "appId": "1638090",
        "title": "Tobii Horizon",
        "url":
            "https://store.steampowered.com/app/1638090/Tobii_Horizon/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/1638090/capsule_sm_120.jpg?t=1678287294",
        "released": "To be announced",
        "price": "                                            "
      },
      {
        "appId": "1430530",
        "title": "Horizon Heat",
        "url":
            "https://store.steampowered.com/app/1430530/Horizon_Heat/?snr=1_7_7_151_150_1",
        "imgUrl":
            "https://cdn.akamai.steamstatic.com/steam/apps/1430530/capsule_sm_120.jpg?t=1678520429",
        "released": "Q2 2023",
        "price": "                                            "
      }
    ];

   
    result.addAll(searchResponseFromJson(resp));

    notifyListeners();
  }

  Future<bool> getDetail(String appId) async {
    Map<String, dynamic> params = {
      "appids": appId,
    };

    // final resp = await Api.httpGet("/appdetails", params);

    await Future.delayed(Duration(seconds: 3));

    // final Map<String, dynamic> data = resp[appId];

    final resp = {
      "1151640": {
        "success": true,
        "data": {
          "type": "game",
          "name": "Horizon Zero Dawn™ Complete Edition",
          "steam_appid": 1151640,
          "required_age": "12",
          "is_free": false,
          "controller_support": "full",
          "detailed_description":
              "LA TIERRA YA NO NOS PERTENECE<br />\r\n<br />\r\nVive la misión de Aloy para revelar los secretos de un mundo dominado por máquinas.<br />\r\n<br />\r\nLa joven cazadora, una paria de su tribu, lucha por revelar su pasado, descubrir su destino y detener una amenaza catastrófica para el futuro.<br />\r\n<br />\r\nDesata ataques tácticos contra máquinas y tribus rivales mientras exploras un mundo abierto repleto de vida salvaje y peligros.<br />\r\n<br />\r\nHorizon Zero Dawn™ es un RPG de acción que ganó varios premios. La Complete Edition para PC incluye la expansión The Frozen Wilds, que añade nuevas tierras, habilidades, armas y máquinas.<br />\r\n<br />\r\nINCLUYE:<br />\r\n• Horizon Zero Dawn<br />\r\n• Expansión The Frozen Wilds<br />\r\n• Atuendo Guardabosques Tormenta Carja y arco Carja poderoso<br />\r\n• Paquete de comerciante Carja<br />\r\n• Atuendo Pionero Banuk y arco de sacrificio Banuk<br />\r\n• Paquete de viaje Banuk<br />\r\n• Paquete de guardián Nora",
          "about_the_game":
              "LA TIERRA YA NO NOS PERTENECE<br />\r\n<br />\r\nVive la misión de Aloy para revelar los secretos de un mundo dominado por máquinas.<br />\r\n<br />\r\nLa joven cazadora, una paria de su tribu, lucha por revelar su pasado, descubrir su destino y detener una amenaza catastrófica para el futuro.<br />\r\n<br />\r\nDesata ataques tácticos contra máquinas y tribus rivales mientras exploras un mundo abierto repleto de vida salvaje y peligros.<br />\r\n<br />\r\nHorizon Zero Dawn™ es un RPG de acción que ganó varios premios. La Complete Edition para PC incluye la expansión The Frozen Wilds, que añade nuevas tierras, habilidades, armas y máquinas.<br />\r\n<br />\r\nINCLUYE:<br />\r\n• Horizon Zero Dawn<br />\r\n• Expansión The Frozen Wilds<br />\r\n• Atuendo Guardabosques Tormenta Carja y arco Carja poderoso<br />\r\n• Paquete de comerciante Carja<br />\r\n• Atuendo Pionero Banuk y arco de sacrificio Banuk<br />\r\n• Paquete de viaje Banuk<br />\r\n• Paquete de guardián Nora",
          "short_description":
              "Vive la misión legendaria de Aloy para revelar los secretos de una futura Tierra dominada por máquinas. ¡Usa ataques devastadores contra tus presas y explora un majestuoso mundo abierto en este galardonado RPG de acción!",
          "supported_languages":
              "Inglés<strong>*</strong>, Francés<strong>*</strong>, Italiano<strong>*</strong>, Alemán<strong>*</strong>, Español - España<strong>*</strong>, Árabe<strong>*</strong>, Danés, Holandés, Finés, Japonés, Coreano, Noruego, Polaco<strong>*</strong>, Portugués - Portugal<strong>*</strong>, Portugués - Brasil<strong>*</strong>, Ruso<strong>*</strong>, Chino simplificado, Español - Latinoamérica<strong>*</strong>, Sueco, Chino tradicional<br><strong>*</strong>idiomas con localización de audio",
          "header_image":
              "https://cdn.akamai.steamstatic.com/steam/apps/1151640/header.jpg?t=1667297464",
          "website": null,
          "pc_requirements": {
            "minimum":
                "<strong>Mínimo:</strong><br><ul class=\"bb_ul\"><li>Requiere un procesador y un sistema operativo de 64 bits<br></li><li><strong>SO:</strong> Windows 10 64-bits<br></li><li><strong>Procesador:</strong> Intel Core i5-2500K@3.3GHz or AMD FX 6300@3.5GHz<br></li><li><strong>Memoria:</strong> 8 GB de RAM<br></li><li><strong>Gráficos:</strong> Nvidia GeForce GTX 780 (3 GB) or AMD Radeon R9 290 (4GB)<br></li><li><strong>DirectX:</strong> Versión 12<br></li><li><strong>Almacenamiento:</strong> 100 GB de espacio disponible</li></ul>",
            "recommended":
                "<strong>Recomendado:</strong><br><ul class=\"bb_ul\"><li>Requiere un procesador y un sistema operativo de 64 bits<br></li><li><strong>SO:</strong> Windows 10 64-bits<br></li><li><strong>Procesador:</strong> Intel Core i7-4770K@3.5GHz or Ryzen 5 1500X@3.5GHz<br></li><li><strong>Memoria:</strong> 16 GB de RAM<br></li><li><strong>Gráficos:</strong> Nvidia GeForce GTX 1060 (6 GB) or AMD Radeon RX 580 (8GB)<br></li><li><strong>DirectX:</strong> Versión 12<br></li><li><strong>Almacenamiento:</strong> 100 GB de espacio disponible</li></ul>"
          },
          "mac_requirements": {
            "minimum":
                "<strong>Mínimo:</strong><br><ul class=\"bb_ul\"><li>Requiere un procesador y un sistema operativo de 64 bits</li></ul>",
            "recommended":
                "<strong>Recomendado:</strong><br><ul class=\"bb_ul\"><li>Requiere un procesador y un sistema operativo de 64 bits</li></ul>"
          },
          "linux_requirements": {
            "minimum":
                "<strong>Mínimo:</strong><br><ul class=\"bb_ul\"><li>Requiere un procesador y un sistema operativo de 64 bits</li></ul>",
            "recommended":
                "<strong>Recomendado:</strong><br><ul class=\"bb_ul\"><li>Requiere un procesador y un sistema operativo de 64 bits</li></ul>"
          },
          "legal_notice":
              "Horizon Zero Dawn™ Complete Edition ©2020 Sony Interactive Entertainment Europe. Developed by Guerrilla. “Horizon Zero Dawn” is a trademark of Sony Interactive Entertainment Europe. All rights reserved.<h2 class=\"bb_tag\">PRIVACY POLICY</h2><a href=\"https://steamcommunity.com/linkfilter/?url=https://www.playstation.com/en-us/legal/terms-of-use/op-privacy-policy/\" target=\"_blank\" rel=\" noopener\"  >https://www.playstation.com/en-us/legal/terms-of-use/op-privacy-policy/</a><h2 class=\"bb_tag\">USER AGREEMENT</h2>Software subject to license  <a href=\"https://steamcommunity.com/linkfilter/?url=https://www.playstation.com/en-us/legal/op-eula/\" target=\"_blank\" rel=\" noopener\"  >https://www.playstation.com/en-us/legal/op-eula/</a>",
          "developers": ["Guerrilla"],
          "publishers": ["PlayStation PC LLC"],
          "price_overview": {
            "currency": "USD",
            "initial": 4999,
            "final": 1649,
            "discount_percent": 67,
            "initial_formatted": "\$49.99",
            "final_formatted": "\$16.49"
          },
          "packages": [392522, 654387],
          "package_groups": [
            {
              "name": "default",
              "title": "Comprar Horizon Zero Dawn™ Complete Edition",
              "description": "",
              "selection_text": "Selecciona una opción de compra",
              "save_text": "",
              "display_type": 0,
              "is_recurring_subscription": "false",
              "subs": [
                {
                  "packageid": 392522,
                  "percent_savings_text": "-67% ",
                  "percent_savings": 0,
                  "option_text":
                      "Horizon Zero Dawn - <span class=\"discount_original_price\">\$49.99</span> \$16.49",
                  "option_description": "",
                  "can_get_free_license": "0",
                  "is_free_license": false,
                  "price_in_cents_with_discount": 1649
                },
                {
                  "packageid": 654387,
                  "percent_savings_text": " ",
                  "percent_savings": 0,
                  "option_text":
                      "Horizon Zero Dawn - Commercial License - \$49.99",
                  "option_description": "",
                  "can_get_free_license": "0",
                  "is_free_license": false,
                  "price_in_cents_with_discount": 4999
                }
              ]
            }
          ],
          "platforms": {"windows": true, "mac": false, "linux": false},
          "categories": [
            {"id": 2, "description": "Un jugador"},
            {"id": 22, "description": "Logros de Steam"},
            {"id": 28, "description": "Compat. total con control"},
            {"id": 23, "description": "Steam Cloud"},
            {"id": 42, "description": "Remote Play para tabletas"}
          ],
          "genres": [
            {"id": "1", "description": "Acción"},
            {"id": "25", "description": "Aventura"},
            {"id": "3", "description": "Rol"}
          ],
          "screenshots": [
            {
              "id": 0,
              "path_thumbnail":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1151640/ss_d09106060fb7de8bf342c23df18b14debc8a15a3.600x338.jpg?t=1667297464",
              "path_full":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1151640/ss_d09106060fb7de8bf342c23df18b14debc8a15a3.1920x1080.jpg?t=1667297464"
            },
            {
              "id": 1,
              "path_thumbnail":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1151640/ss_271f850eec3f96b22aa17be35b948268e0771c7f.600x338.jpg?t=1667297464",
              "path_full":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1151640/ss_271f850eec3f96b22aa17be35b948268e0771c7f.1920x1080.jpg?t=1667297464"
            },
            {
              "id": 2,
              "path_thumbnail":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1151640/ss_15f5759c441e4e5f51e1a8ee333e4ab9df9aa783.600x338.jpg?t=1667297464",
              "path_full":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1151640/ss_15f5759c441e4e5f51e1a8ee333e4ab9df9aa783.1920x1080.jpg?t=1667297464"
            },
            {
              "id": 3,
              "path_thumbnail":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1151640/ss_f7cf51f1ccd909264f2c5814f328e3f72e7b62bd.600x338.jpg?t=1667297464",
              "path_full":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1151640/ss_f7cf51f1ccd909264f2c5814f328e3f72e7b62bd.1920x1080.jpg?t=1667297464"
            },
            {
              "id": 4,
              "path_thumbnail":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1151640/ss_9db45aa04e8c8b5043b479f42ed36296bfc3a918.600x338.jpg?t=1667297464",
              "path_full":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1151640/ss_9db45aa04e8c8b5043b479f42ed36296bfc3a918.1920x1080.jpg?t=1667297464"
            }
          ],
          "movies": [
            {
              "id": 256899640,
              "name": "2nd Anniversary Trailer",
              "thumbnail":
                  "https://cdn.akamai.steamstatic.com/steam/apps/256899640/movie.293x165.jpg?t=1659711061",
              "webm": {
                "480":
                    "http://cdn.akamai.steamstatic.com/steam/apps/256899640/movie480_vp9.webm?t=1659711061",
                "max":
                    "http://cdn.akamai.steamstatic.com/steam/apps/256899640/movie_max_vp9.webm?t=1659711061"
              },
              "mp4": {
                "480":
                    "http://cdn.akamai.steamstatic.com/steam/apps/256899640/movie480.mp4?t=1659711061",
                "max":
                    "http://cdn.akamai.steamstatic.com/steam/apps/256899640/movie_max.mp4?t=1659711061"
              },
              "highlight": true
            },
            {
              "id": 256795571,
              "name": "PC Launch Trailer #2 (ESRB/US)",
              "thumbnail":
                  "https://cdn.akamai.steamstatic.com/steam/apps/256795571/movie.293x165.jpg?t=1596814657",
              "webm": {
                "480":
                    "http://cdn.akamai.steamstatic.com/steam/apps/256795571/movie480_vp9.webm?t=1596814657",
                "max":
                    "http://cdn.akamai.steamstatic.com/steam/apps/256795571/movie_max_vp9.webm?t=1596814657"
              },
              "mp4": {
                "480":
                    "http://cdn.akamai.steamstatic.com/steam/apps/256795571/movie480.mp4?t=1596814657",
                "max":
                    "http://cdn.akamai.steamstatic.com/steam/apps/256795571/movie_max.mp4?t=1596814657"
              },
              "highlight": true
            },
            {
              "id": 256794480,
              "name": "PC Post-Launch Launch Trailer (US)",
              "thumbnail":
                  "https://cdn.akamai.steamstatic.com/steam/apps/256794480/movie.293x165.jpg?t=1596816664",
              "webm": {
                "480":
                    "http://cdn.akamai.steamstatic.com/steam/apps/256794480/movie480_vp9.webm?t=1596816664",
                "max":
                    "http://cdn.akamai.steamstatic.com/steam/apps/256794480/movie_max_vp9.webm?t=1596816664"
              },
              "mp4": {
                "480":
                    "http://cdn.akamai.steamstatic.com/steam/apps/256794480/movie480.mp4?t=1596816664",
                "max":
                    "http://cdn.akamai.steamstatic.com/steam/apps/256794480/movie_max.mp4?t=1596816664"
              },
              "highlight": true
            },
            {
              "id": 256777357,
              "name": "Story Trailer",
              "thumbnail":
                  "https://cdn.akamai.steamstatic.com/steam/apps/256777357/movie.293x165.jpg?t=1583852856",
              "webm": {
                "480":
                    "http://cdn.akamai.steamstatic.com/steam/apps/256777357/movie480.webm?t=1583852856",
                "max":
                    "http://cdn.akamai.steamstatic.com/steam/apps/256777357/movie_max.webm?t=1583852856"
              },
              "mp4": {
                "480":
                    "http://cdn.akamai.steamstatic.com/steam/apps/256777357/movie480.mp4?t=1583852856",
                "max":
                    "http://cdn.akamai.steamstatic.com/steam/apps/256777357/movie_max.mp4?t=1583852856"
              },
              "highlight": true
            }
          ],
          "recommendations": {"total": 69690},
          "achievements": {
            "total": 79,
            "highlighted": [
              {
                "name": "Todos los logros obtenidos",
                "path":
                    "https://cdn.akamai.steamstatic.com/steamcommunity/public/images/apps/1151640/90105bcb9db3651e3830bf56a45834eab69ac01d.jpg"
              },
              {
                "name": "Muerte sigilosa de 10 máquinas",
                "path":
                    "https://cdn.akamai.steamstatic.com/steamcommunity/public/images/apps/1151640/5d65440e26762aacc11dd98ff61691061120921a.jpg"
              },
              {
                "name": "3 Ataques aéreos",
                "path":
                    "https://cdn.akamai.steamstatic.com/steamcommunity/public/images/apps/1151640/e6899af06e731bbe898de9814113a712997589cf.jpg"
              },
              {
                "name": "Extracción de 10 componentes",
                "path":
                    "https://cdn.akamai.steamstatic.com/steamcommunity/public/images/apps/1151640/31f8f4469a483bf8f27110f186d88797ca7e6d98.jpg"
              },
              {
                "name": "10 máquinas vulnerables muertas",
                "path":
                    "https://cdn.akamai.steamstatic.com/steamcommunity/public/images/apps/1151640/9a61ea9030720bd4c7e24ef317fdd4e27c4aa426.jpg"
              },
              {
                "name": "Extracción de 5 armas pesadas",
                "path":
                    "https://cdn.akamai.steamstatic.com/steamcommunity/public/images/apps/1151640/443817224273003cab44ba5540785b5d118a8bf9.jpg"
              },
              {
                "name": "7 tipos de máquinas controladas",
                "path":
                    "https://cdn.akamai.steamstatic.com/steamcommunity/public/images/apps/1151640/be1cd82b540a778a0468625b2b09f066107e87db.jpg"
              },
              {
                "name": "30 muertes humanas por disparos a la cabeza",
                "path":
                    "https://cdn.akamai.steamstatic.com/steamcommunity/public/images/apps/1151640/7c5dceffcbc21028a87bfe146e9499c6a54cb220.jpg"
              },
              {
                "name": "Derribaste 23 muñecos de Pastadores",
                "path":
                    "https://cdn.akamai.steamstatic.com/steamcommunity/public/images/apps/1151640/f8f70f59168f72f9674bb8504af309753a454323.jpg"
              },
              {
                "name": "Primera modificación",
                "path":
                    "https://cdn.akamai.steamstatic.com/steamcommunity/public/images/apps/1151640/c84b5025e82c7d35e10422fda00526d8584bb0fa.jpg"
              }
            ]
          },
          "release_date": {"coming_soon": false, "date": "7 AGO 2020"},
          "support_info": {
            "url": "https://www.guerrilla-games.com/play/horizon/faq",
            "email": "customersupport@guerrilla-games.com"
          },
          "background":
              "https://cdn.akamai.steamstatic.com/steam/apps/1151640/page_bg_generated_v6b.jpg?t=1667297464",
          "background_raw":
              "https://cdn.akamai.steamstatic.com/steam/apps/1151640/page.bg.jpg?t=1667297464",
          "content_descriptors": {"ids": [], "notes": null}
        }
      }
    };

    final data = resp["1151640"];

    final DataDetails despues = dataDetailsFromJson(data!);

    currentData = despues.data;

    if (currentData.movies.isNotEmpty) {
      currentpathImgVideo = currentData.movies.first.mp4.max;
      isVideo = true;
    } else {
      currentpathImgVideo = currentData.screenshots.first.pathFull;
      isVideo = false;
    }

    return true;
  }

  cambiarPathImgVideo({required bool isVideo, required String pathImgVideo}) {
    this.isVideo = isVideo;
    currentpathImgVideo = pathImgVideo;
    notifyListeners();
  }
}
