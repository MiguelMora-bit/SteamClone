import 'package:flutter/material.dart';
import 'package:steam/models/featured_categories_response.dart';
import 'package:steam/models/featured_responses.dart';

class FeatureProvider extends ChangeNotifier {
  final List<Featured> featuredsWin = [];
  final List<Featured> featuredsMac = [];
  final List<Featured> featuredsLinux = [];

  final List<Item> specials = [];
  final List<Item> coominsoon = [];
  final List<Item> topSellers = [];
  final List<Item> newReleases = [];

  Future<bool> getFeatured() async {
    if (featuredsWin.isEmpty &&
        featuredsLinux.isEmpty &&
        featuredsMac.isEmpty) {
      featuredsWin.clear();
      featuredsMac.clear();
      featuredsLinux.clear();

      await Future.delayed(const Duration(seconds: 3));

      // final resp = await Api.httpGet("/featured");
      // final resp2 = await Api.httpGet("/featured");

      final resp = {
        "large_capsules": [
          {
            "id": 1586130,
            "type": 0,
            "name": "Square Enix Publisher Sale",
            "discounted": true,
            "discount_percent": 50,
            "original_price": 3999,
            "final_price": 1999,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1586130/capsule_616x353_spanish.jpg?t=1679589522",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1586130/capsule_184x69.jpg?t=1679589522",
            "windows_available": true,
            "mac_available": true,
            "linux_available": true,
            "streamingvideo_available": false,
            "discount_expiration": 1679936400,
            "url":
                "https://store.steampowered.com/sale/squareenix_publishersale23",
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1586130/header.jpg?t=1679589522"
          },
          {
            "id": 1740720,
            "type": 0,
            "name": "Have a Nice Death",
            "discounted": true,
            "discount_percent": 10,
            "original_price": 2499,
            "final_price": 2249,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1740720/capsule_616x353_alt_assets_0.jpg?t=1679595533",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1740720/capsule_184x69_alt_assets_0.jpg?t=1679595533",
            "windows_available": true,
            "mac_available": false,
            "linux_available": false,
            "streamingvideo_available": false,
            "discount_expiration": 1680195600,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1740720/header_alt_assets_0.jpg?t=1679595533",
            "controller_support": "full"
          }
        ],
        "featured_win": [
          {
            "id": 1937480,
            "type": 0,
            "name": "Out of the Park Baseball 24",
            "discounted": true,
            "discount_percent": 10,
            "original_price": 3999,
            "final_price": 3599,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1937480/capsule_616x353.jpg?t=1679662826",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1937480/capsule_184x69.jpg?t=1679662826",
            "windows_available": true,
            "mac_available": true,
            "linux_available": true,
            "streamingvideo_available": false,
            "discount_expiration": 1680282024,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1937480/header.jpg?t=1679662826"
          },
          {
            "id": 2050650,
            "type": 0,
            "name": "Resident Evil 4",
            "discounted": false,
            "discount_percent": 0,
            "original_price": 5999,
            "final_price": 5999,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/2050650/capsule_616x353.jpg?t=1679674814",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/2050650/capsule_184x69.jpg?t=1679674814",
            "windows_available": true,
            "mac_available": false,
            "linux_available": false,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/2050650/header.jpg?t=1679674814",
            "controller_support": "full"
          },
          {
            "id": 2050650,
            "type": 0,
            "name": "Resident Evil 4",
            "discounted": false,
            "discount_percent": 0,
            "original_price": 5999,
            "final_price": 5999,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/2050650/capsule_616x353.jpg?t=1679674814",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/2050650/capsule_184x69.jpg?t=1679674814",
            "windows_available": true,
            "mac_available": false,
            "linux_available": false,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/2050650/header.jpg?t=1679674814",
            "controller_support": "full"
          },
          {
            "id": 2050650,
            "type": 0,
            "name": "Resident Evil 4",
            "discounted": false,
            "discount_percent": 0,
            "original_price": 5999,
            "final_price": 5999,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/2050650/capsule_616x353.jpg?t=1679674814",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/2050650/capsule_184x69.jpg?t=1679674814",
            "windows_available": true,
            "mac_available": false,
            "linux_available": false,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/2050650/header.jpg?t=1679674814",
            "controller_support": "full"
          },
          {
            "id": 2050650,
            "type": 0,
            "name": "Resident Evil 4",
            "discounted": false,
            "discount_percent": 0,
            "original_price": 5999,
            "final_price": 5999,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/2050650/capsule_616x353.jpg?t=1679674814",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/2050650/capsule_184x69.jpg?t=1679674814",
            "windows_available": true,
            "mac_available": false,
            "linux_available": false,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/2050650/header.jpg?t=1679674814",
            "controller_support": "full"
          },
          {
            "id": 1740720,
            "type": 0,
            "name": "Have a Nice Death",
            "discounted": true,
            "discount_percent": 10,
            "original_price": 2499,
            "final_price": 2249,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1740720/capsule_616x353_alt_assets_0.jpg?t=1679595533",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1740720/capsule_184x69_alt_assets_0.jpg?t=1679595533",
            "windows_available": true,
            "mac_available": false,
            "linux_available": false,
            "streamingvideo_available": false,
            "discount_expiration": 1680195600,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1740720/header_alt_assets_0.jpg?t=1679595533",
            "controller_support": "full"
          },
          {
            "id": 1947500,
            "type": 0,
            "name":
                "The Walking Dead: Saints & Sinners - Chapter 2: Retribution",
            "discounted": false,
            "discount_percent": 0,
            "original_price": 3999,
            "final_price": 3999,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1947500/capsule_616x353.jpg?t=1679607231",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1947500/capsule_184x69.jpg?t=1679607231",
            "windows_available": true,
            "mac_available": false,
            "linux_available": false,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1947500/header.jpg?t=1679607231"
          },
          {
            "id": 820520,
            "type": 0,
            "name": "Deceive Inc.",
            "discounted": false,
            "discount_percent": 0,
            "original_price": 1999,
            "final_price": 1999,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/820520/capsule_616x353.jpg?t=1679411025",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/820520/capsule_184x69.jpg?t=1679411025",
            "windows_available": true,
            "mac_available": false,
            "linux_available": false,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/820520/header.jpg?t=1679411025",
            "controller_support": "full"
          },
          {
            "id": 2177750,
            "type": 0,
            "name": "Half-Life 2: VR Mod - Episode One",
            "discounted": false,
            "discount_percent": 0,
            "original_price": null,
            "final_price": 0,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/2177750/capsule_616x353.jpg?t=1677657211",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/2177750/capsule_184x69.jpg?t=1677657211",
            "windows_available": true,
            "mac_available": false,
            "linux_available": false,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/2177750/header.jpg?t=1677657211"
          },
          {
            "id": 1942660,
            "type": 0,
            "name": "WWE 2K23",
            "discounted": false,
            "discount_percent": 0,
            "original_price": 5999,
            "final_price": 5999,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1942660/capsule_616x353.jpg?t=1679026333",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1942660/capsule_184x69.jpg?t=1679026333",
            "windows_available": true,
            "mac_available": false,
            "linux_available": false,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1942660/header.jpg?t=1679026333"
          }
        ],
        "featured_mac": [
          {
            "id": 1937480,
            "type": 0,
            "name": "Out of the Park Baseball 24",
            "discounted": true,
            "discount_percent": 10,
            "original_price": 3999,
            "final_price": 3599,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1937480/capsule_616x353.jpg?t=1679662826",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1937480/capsule_184x69.jpg?t=1679662826",
            "windows_available": true,
            "mac_available": true,
            "linux_available": true,
            "streamingvideo_available": false,
            "discount_expiration": 1680282024,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1937480/header.jpg?t=1679662826"
          },
          {
            "id": 602960,
            "type": 0,
            "name": "Barotrauma",
            "discounted": false,
            "discount_percent": 0,
            "original_price": 3499,
            "final_price": 3499,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/602960/capsule_616x353_alt_assets_17.jpg?t=1679062168",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/602960/capsule_184x69_alt_assets_17.jpg?t=1679062168",
            "windows_available": true,
            "mac_available": true,
            "linux_available": true,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/602960/header_alt_assets_17.jpg?t=1679062168"
          },
          {
            "id": 1432860,
            "type": 0,
            "name": "Sun Haven",
            "discounted": false,
            "discount_percent": 0,
            "original_price": 2499,
            "final_price": 2499,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1432860/capsule_616x353.jpg?t=1679633634",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1432860/capsule_184x69.jpg?t=1679633634",
            "windows_available": true,
            "mac_available": true,
            "linux_available": false,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1432860/header.jpg?t=1679633634"
          },
          {
            "id": 1331550,
            "type": 0,
            "name": "Big Ambitions",
            "discounted": false,
            "discount_percent": 0,
            "original_price": 2299,
            "final_price": 2299,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1331550/capsule_616x353.jpg?t=1679559083",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1331550/capsule_184x69.jpg?t=1679559083",
            "windows_available": true,
            "mac_available": true,
            "linux_available": false,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1331550/header.jpg?t=1679559083"
          },
          {
            "id": 1398210,
            "type": 0,
            "name": "Selene ~Apoptosis~",
            "discounted": false,
            "discount_percent": 0,
            "original_price": null,
            "final_price": 0,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1398210/capsule_616x353.jpg?t=1677275741",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1398210/capsule_184x69.jpg?t=1677275741",
            "windows_available": true,
            "mac_available": true,
            "linux_available": true,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1398210/header.jpg?t=1677275741"
          },
          {
            "id": 1878910,
            "type": 0,
            "name": "BoucleLana",
            "discounted": false,
            "discount_percent": 0,
            "original_price": null,
            "final_price": 0,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1878910/capsule_616x353_spanish.jpg?t=1677668010",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1878910/capsule_184x69_spanish.jpg?t=1677668010",
            "windows_available": true,
            "mac_available": true,
            "linux_available": true,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1878910/header_spanish.jpg?t=1677668010"
          },
          {
            "id": 2167580,
            "type": 0,
            "name": "Summoners' War: Chronicles",
            "discounted": false,
            "discount_percent": 0,
            "original_price": null,
            "final_price": 0,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/2167580/capsule_616x353.jpg?t=1678369249",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/2167580/capsule_184x69.jpg?t=1678369249",
            "windows_available": true,
            "mac_available": true,
            "linux_available": false,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/2167580/header.jpg?t=1678369249"
          },
          {
            "id": 1629520,
            "type": 0,
            "name": "A Little to the Left",
            "discounted": true,
            "discount_percent": 25,
            "original_price": 1499,
            "final_price": 1124,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1629520/capsule_616x353.jpg?t=1676057691",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1629520/capsule_184x69.jpg?t=1676057691",
            "windows_available": true,
            "mac_available": true,
            "linux_available": false,
            "streamingvideo_available": false,
            "discount_expiration": 1680022800,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1629520/header.jpg?t=1676057691",
            "controller_support": "full"
          },
          {
            "id": 1904540,
            "type": 0,
            "name": "Football Manager 2023",
            "discounted": false,
            "discount_percent": 0,
            "original_price": 5999,
            "final_price": 5999,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1904540/capsule_616x353.jpg?t=1677520647",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1904540/capsule_184x69.jpg?t=1677520647",
            "windows_available": true,
            "mac_available": true,
            "linux_available": false,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1904540/header.jpg?t=1677520647"
          },
          {
            "id": 1868140,
            "type": 0,
            "name": "DAVE THE DIVER",
            "discounted": false,
            "discount_percent": 0,
            "original_price": 1999,
            "final_price": 1999,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1868140/capsule_616x353.jpg?t=1678794959",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1868140/capsule_184x69.jpg?t=1678794959",
            "windows_available": true,
            "mac_available": true,
            "linux_available": false,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1868140/header.jpg?t=1678794959",
            "controller_support": "full"
          }
        ],
        "featured_linux": [
          {
            "id": 1937480,
            "type": 0,
            "name": "Out of the Park Baseball 24",
            "discounted": true,
            "discount_percent": 10,
            "original_price": 3999,
            "final_price": 3599,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1937480/capsule_616x353.jpg?t=1679662826",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1937480/capsule_184x69.jpg?t=1679662826",
            "windows_available": true,
            "mac_available": true,
            "linux_available": true,
            "streamingvideo_available": false,
            "discount_expiration": 1680282024,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1937480/header.jpg?t=1679662826"
          },
          {
            "id": 602960,
            "type": 0,
            "name": "Barotrauma",
            "discounted": false,
            "discount_percent": 0,
            "original_price": 3499,
            "final_price": 3499,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/602960/capsule_616x353_alt_assets_17.jpg?t=1679062168",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/602960/capsule_184x69_alt_assets_17.jpg?t=1679062168",
            "windows_available": true,
            "mac_available": true,
            "linux_available": true,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/602960/header_alt_assets_17.jpg?t=1679062168"
          },
          {
            "id": 1398210,
            "type": 0,
            "name": "Selene ~Apoptosis~",
            "discounted": false,
            "discount_percent": 0,
            "original_price": null,
            "final_price": 0,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1398210/capsule_616x353.jpg?t=1677275741",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1398210/capsule_184x69.jpg?t=1677275741",
            "windows_available": true,
            "mac_available": true,
            "linux_available": true,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1398210/header.jpg?t=1677275741"
          },
          {
            "id": 1878910,
            "type": 0,
            "name": "BoucleLana",
            "discounted": false,
            "discount_percent": 0,
            "original_price": null,
            "final_price": 0,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1878910/capsule_616x353_spanish.jpg?t=1677668010",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1878910/capsule_184x69_spanish.jpg?t=1677668010",
            "windows_available": true,
            "mac_available": true,
            "linux_available": true,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1878910/header_spanish.jpg?t=1677668010"
          },
          {
            "id": 2157110,
            "type": 0,
            "name": "FUCK HITLER",
            "discounted": false,
            "discount_percent": 0,
            "original_price": null,
            "final_price": 0,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/2157110/capsule_616x353.jpg?t=1674320941",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/2157110/capsule_184x69.jpg?t=1674320941",
            "windows_available": true,
            "mac_available": false,
            "linux_available": true,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/2157110/header.jpg?t=1674320941",
            "controller_support": "full"
          },
          {
            "id": 1850960,
            "type": 0,
            "name": "The Jackbox Party Pack 9",
            "discounted": false,
            "discount_percent": 0,
            "original_price": 2999,
            "final_price": 2999,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1850960/capsule_616x353.jpg?t=1671120274",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1850960/capsule_184x69.jpg?t=1671120274",
            "windows_available": true,
            "mac_available": true,
            "linux_available": true,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1850960/header.jpg?t=1671120274"
          },
          {
            "id": 1696780,
            "type": 0,
            "name": "Steam Deck Docking Station",
            "discounted": false,
            "discount_percent": 0,
            "original_price": 8900,
            "final_price": 8900,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1696780/capsule_616x353.jpg?t=1665098568",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1696780/capsule_184x69.jpg?t=1665098568",
            "windows_available": true,
            "mac_available": true,
            "linux_available": true,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1696780/header.jpg?t=1665098568"
          },
          {
            "id": 1637320,
            "type": 0,
            "name": "Dome Keeper",
            "discounted": false,
            "discount_percent": 0,
            "original_price": 1799,
            "final_price": 1799,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1637320/capsule_616x353_alt_assets_0.jpg?t=1679559859",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1637320/capsule_184x69_alt_assets_0.jpg?t=1679559859",
            "windows_available": true,
            "mac_available": true,
            "linux_available": true,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1637320/header_alt_assets_0.jpg?t=1679559859",
            "controller_support": "full"
          },
          {
            "id": 1442670,
            "type": 0,
            "name": "Hamster Playground",
            "discounted": false,
            "discount_percent": 0,
            "original_price": null,
            "final_price": 0,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1442670/capsule_616x353.jpg?t=1679314535",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1442670/capsule_184x69.jpg?t=1679314535",
            "windows_available": true,
            "mac_available": true,
            "linux_available": true,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1442670/header.jpg?t=1679314535",
            "controller_support": "full"
          },
          {
            "id": 1118310,
            "type": 0,
            "name": "RetroArch",
            "discounted": false,
            "discount_percent": 0,
            "original_price": null,
            "final_price": 0,
            "currency": "USD",
            "large_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1118310/capsule_616x353.jpg?t=1679067864",
            "small_capsule_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1118310/capsule_184x69.jpg?t=1679067864",
            "windows_available": true,
            "mac_available": true,
            "linux_available": true,
            "streamingvideo_available": false,
            "header_image":
                "https://cdn.akamai.steamstatic.com/steam/apps/1118310/header.jpg?t=1679067864",
            "controller_support": "full"
          }
        ],
        "layout": "defcon1",
        "status": 1
      };

      final resp2 = {
        "0": {
          "id": "cat_spotlight",
          "name": "Spotlights",
          "items": [
            {
              "name": "Oferta de fin de semana",
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/spotlights/7b3e8b39cd01aa4114b73af4/spotlight_image_english.jpg?t=1679083314",
              "body": "La oferta termina el %1.",
              "url": "https://store.steampowered.com/app/504230"
            }
          ]
        },
        "1": {
          "id": "cat_spotlight",
          "name": "Spotlights",
          "items": [
            {
              "name": "Oferta de fin de semana",
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/spotlights/e6fe029c9906410cfc10594d/spotlight_image_english.jpg?t=1679524065",
              "body": "La oferta termina el %1.",
              "url": "https://store.steampowered.com/app/477160"
            }
          ]
        },
        "2": {
          "id": "cat_spotlight",
          "name": "Spotlights",
          "items": [
            {
              "name": "Oferta de fin de semana",
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/spotlights/6eb8d246eaaac1fbacc71a08/spotlight_image_english.jpg?t=1679427849",
              "body": "La oferta termina el %1.",
              "url": "https://store.steampowered.com/app/1172380"
            }
          ]
        },
        "3": {
          "id": "cat_spotlight",
          "name": "Spotlights",
          "items": [
            {
              "name": "Oferta de fin de semana",
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/spotlights/a7da275ff71a7d770fc98641/spotlight_image_latam.jpg?t=1679348472",
              "body": "Oferta de fin de semana",
              "url": "https://store.steampowered.com/sale/tabletopfest"
            }
          ]
        },
        "4": {
          "id": "cat_dailydeal",
          "name": "Daily Deal",
          "items": [
            {
              "id": 871980,
              "type": 0,
              "discounted": true,
              "currency": "USD",
              "original_price": 5999,
              "final_price": 4199,
              "discount_percent": 30,
              "name": "Digimon Survive",
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/871980/header.jpg?t=1674601276",
              "purchase_package": 275599
            }
          ]
        },
        "specials": {
          "id": "cat_specials",
          "name": "Promociones",
          "items": [
            {
              "id": 311210,
              "type": 0,
              "name": "Call of Duty®: Black Ops III",
              "discounted": true,
              "discount_percent": 67,
              "original_price": 5999,
              "final_price": 1979,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/311210/capsule_616x353.jpg?t=1646763462",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/311210/capsule_184x69.jpg?t=1646763462",
              "windows_available": true,
              "mac_available": true,
              "linux_available": false,
              "streamingvideo_available": false,
              "discount_expiration": 1680195600,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/311210/header.jpg?t=1646763462",
              "controller_support": "full"
            },
            {
              "id": 1462040,
              "type": 0,
              "name": "FINAL FANTASY VII REMAKE INTERGRADE",
              "discounted": true,
              "discount_percent": 43,
              "original_price": 6999,
              "final_price": 3989,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1462040/capsule_616x353.jpg?t=1663767129",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1462040/capsule_184x69.jpg?t=1663767129",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "discount_expiration": 1679936400,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1462040/header.jpg?t=1663767129",
              "controller_support": "full"
            },
            {
              "id": 401587,
              "type": 1,
              "name": "STAR WARS Jedi: Fallen Order Deluxe Edition",
              "discounted": true,
              "discount_percent": 90,
              "original_price": 4999,
              "final_price": 499,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/subs/401587/capsule_616x353.jpg?t=1574100600",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/subs/401587/capsule_184x69.jpg?t=1574100600",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "discount_expiration": 1680195600,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/subs/401587/header_ratio.jpg?t=1574100600",
              "controller_support": "full"
            },
            {
              "id": 524220,
              "type": 0,
              "name": "NieR:Automata™",
              "discounted": true,
              "discount_percent": 50,
              "original_price": 3999,
              "final_price": 1999,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/524220/capsule_616x353.jpg?t=1679442456",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/524220/capsule_184x69.jpg?t=1679442456",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "discount_expiration": 1679936400,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/524220/header.jpg?t=1679442456"
            },
            {
              "id": 814380,
              "type": 0,
              "name": "Sekiro™: Shadows Die Twice - GOTY Edition",
              "discounted": true,
              "discount_percent": 50,
              "original_price": 5999,
              "final_price": 2999,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/814380/capsule_616x353.jpg?t=1678991267",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/814380/capsule_184x69.jpg?t=1678991267",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "discount_expiration": 1680195600,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/814380/header.jpg?t=1678991267",
              "controller_support": "full"
            },
            {
              "id": 449944,
              "type": 1,
              "name": "PowerWash Simulator",
              "discounted": true,
              "discount_percent": 20,
              "original_price": 2499,
              "final_price": 1999,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/subs/449944/capsule_616x353.jpg?t=1677776419",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/subs/449944/capsule_184x69.jpg?t=1677776419",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "discount_expiration": 1679936400,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/subs/449944/header_ratio.jpg?t=1677776419",
              "controller_support": "full"
            },
            {
              "id": 1151640,
              "type": 0,
              "name": "Horizon Zero Dawn™ Complete Edition",
              "discounted": true,
              "discount_percent": 67,
              "original_price": 4999,
              "final_price": 1649,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1151640/capsule_616x353.jpg?t=1667297464",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1151640/capsule_184x69.jpg?t=1667297464",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "discount_expiration": 1680195600,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1151640/header.jpg?t=1667297464",
              "controller_support": "full"
            },
            {
              "id": 1172380,
              "type": 0,
              "name": "STAR WARS Jedi: La Orden caída™",
              "discounted": true,
              "discount_percent": 90,
              "original_price": 3999,
              "final_price": 399,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1172380/capsule_616x353.jpg?t=1677858483",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1172380/capsule_184x69.jpg?t=1677858483",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "discount_expiration": 1680195600,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1172380/header.jpg?t=1677858483",
              "controller_support": "full"
            },
            {
              "id": 311210,
              "type": 0,
              "name": "Call of Duty®: Black Ops III",
              "discounted": true,
              "discount_percent": 67,
              "original_price": 5999,
              "final_price": 1979,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/311210/capsule_616x353.jpg?t=1646763462",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/311210/capsule_184x69.jpg?t=1646763462",
              "windows_available": true,
              "mac_available": true,
              "linux_available": false,
              "streamingvideo_available": false,
              "discount_expiration": 1680195600,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/311210/header.jpg?t=1646763462",
              "controller_support": "full"
            },
            {
              "id": 1608070,
              "type": 0,
              "name": "CRISIS CORE –FINAL FANTASY VII– REUNION",
              "discounted": true,
              "discount_percent": 20,
              "original_price": 4999,
              "final_price": 3999,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1608070/capsule_616x353.jpg?t=1676610368",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1608070/capsule_184x69.jpg?t=1676610368",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "discount_expiration": 1679936400,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1608070/header.jpg?t=1676610368",
              "controller_support": "full"
            }
          ]
        },
        "coming_soon": {
          "id": "cat_comingsoon",
          "name": "Próximamente",
          "items": [
            {
              "id": 2354140,
              "type": 0,
              "name": "Tsetseg's Adventure Demo",
              "discounted": false,
              "discount_percent": 0,
              "original_price": null,
              "final_price": 0,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2354140/capsule_616x353.jpg?t=1679190846",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2354140/capsule_184x69.jpg?t=1679190846",
              "windows_available": true,
              "mac_available": false,
              "linux_available": true,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2354140/header.jpg?t=1679190846",
              "controller_support": "full"
            },
            {
              "id": 2226550,
              "type": 0,
              "name": "Redumption",
              "discounted": false,
              "discount_percent": 0,
              "original_price": null,
              "final_price": 0,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2226550/capsule_616x353.jpg?t=1670515578",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2226550/capsule_184x69.jpg?t=1670515578",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2226550/header.jpg?t=1670515578"
            },
            {
              "id": 2314160,
              "type": 0,
              "name": "Tactical Assault VR",
              "discounted": false,
              "discount_percent": 0,
              "original_price": null,
              "final_price": 0,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2314160/capsule_616x353.jpg?t=1679435934",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2314160/capsule_184x69.jpg?t=1679435934",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2314160/header.jpg?t=1679435934"
            },
            {
              "id": 2291560,
              "type": 0,
              "name": "Democracy 4 - Event Pack",
              "discounted": false,
              "discount_percent": 0,
              "original_price": null,
              "final_price": 0,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2291560/capsule_616x353.jpg?t=1678453047",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2291560/capsule_184x69.jpg?t=1678453047",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2291560/header.jpg?t=1678453047"
            },
            {
              "id": 1929610,
              "type": 0,
              "name": "Demonologist",
              "discounted": false,
              "discount_percent": 0,
              "original_price": null,
              "final_price": 0,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1929610/capsule_616x353.jpg?t=1679758766",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1929610/capsule_184x69.jpg?t=1679758766",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1929610/header.jpg?t=1679758766"
            },
            {
              "id": 1464220,
              "type": 0,
              "name": "Netherguild",
              "discounted": false,
              "discount_percent": 0,
              "original_price": null,
              "final_price": 0,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1464220/capsule_616x353.jpg?t=1679830784",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1464220/capsule_184x69.jpg?t=1679830784",
              "windows_available": true,
              "mac_available": false,
              "linux_available": true,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1464220/header.jpg?t=1679830784"
            },
            {
              "id": 2337500,
              "type": 0,
              "name": "GUARDIAN OF DYNAMITE : A BOMB PROTECTOR",
              "discounted": false,
              "discount_percent": 0,
              "original_price": null,
              "final_price": 0,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2337500/capsule_616x353.jpg?t=1678779786",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2337500/capsule_184x69.jpg?t=1678779786",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2337500/header.jpg?t=1678779786"
            },
            {
              "id": 1939200,
              "type": 0,
              "name": "Astro Adventures",
              "discounted": false,
              "discount_percent": 0,
              "original_price": null,
              "final_price": 0,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1939200/capsule_616x353.jpg?t=1678480898",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1939200/capsule_184x69.jpg?t=1678480898",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1939200/header.jpg?t=1678480898",
              "controller_support": "full"
            },
            {
              "id": 2355410,
              "type": 0,
              "name": "Little Monki",
              "discounted": false,
              "discount_percent": 0,
              "original_price": null,
              "final_price": 0,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2355410/capsule_616x353.jpg?t=1679537746",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2355410/capsule_184x69.jpg?t=1679537746",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2355410/header.jpg?t=1679537746"
            },
            {
              "id": 2353750,
              "type": 0,
              "name": "Frontline: ART Book vol.I USA",
              "discounted": false,
              "discount_percent": 0,
              "original_price": null,
              "final_price": 0,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2353750/capsule_616x353.jpg?t=1678813919",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2353750/capsule_184x69.jpg?t=1678813919",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2353750/header.jpg?t=1678813919"
            }
          ]
        },
        "top_sellers": {
          "id": "cat_topsellers",
          "name": "Lo más vendido",
          "items": [
            {
              "id": 2050650,
              "type": 0,
              "name": "Resident Evil 4",
              "discounted": false,
              "discount_percent": 0,
              "original_price": 5999,
              "final_price": 5999,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2050650/capsule_616x353.jpg?t=1679674814",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2050650/capsule_184x69.jpg?t=1679674814",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2050650/header.jpg?t=1679674814",
              "controller_support": "full"
            },
            {
              "id": 1675200,
              "type": 0,
              "name": "Steam Deck",
              "discounted": false,
              "discount_percent": 0,
              "original_price": 39900,
              "final_price": 39900,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1675200/capsule_616x353.jpg?t=1656364857",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1675200/capsule_184x69.jpg?t=1656364857",
              "windows_available": true,
              "mac_available": true,
              "linux_available": true,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1675200/header.jpg?t=1656364857",
              "headline": "Ya se está enviando"
            },
            {
              "id": 1675200,
              "type": 0,
              "name": "Steam Deck",
              "discounted": false,
              "discount_percent": 0,
              "original_price": 39900,
              "final_price": 39900,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1675200/capsule_616x353.jpg?t=1656364857",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1675200/capsule_184x69.jpg?t=1656364857",
              "windows_available": true,
              "mac_available": true,
              "linux_available": true,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1675200/header.jpg?t=1656364857",
              "headline": "Ya se está enviando"
            },
            {
              "id": 1675200,
              "type": 0,
              "name": "Steam Deck",
              "discounted": false,
              "discount_percent": 0,
              "original_price": 39900,
              "final_price": 39900,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1675200/capsule_616x353.jpg?t=1656364857",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1675200/capsule_184x69.jpg?t=1656364857",
              "windows_available": true,
              "mac_available": true,
              "linux_available": true,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1675200/header.jpg?t=1656364857",
              "headline": "Ya se está enviando"
            },
            {
              "id": 2050650,
              "type": 0,
              "name": "Resident Evil 4",
              "discounted": false,
              "discount_percent": 0,
              "original_price": 5999,
              "final_price": 5999,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2050650/capsule_616x353.jpg?t=1679674814",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2050650/capsule_184x69.jpg?t=1679674814",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2050650/header.jpg?t=1679674814",
              "controller_support": "full"
            },
            {
              "id": 1888930,
              "type": 0,
              "name": "The Last of Us™ Parte I",
              "discounted": false,
              "discount_percent": 0,
              "original_price": 5999,
              "final_price": 5999,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1888930/capsule_616x353.jpg?t=1679412516",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1888930/capsule_184x69.jpg?t=1679412516",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1888930/header.jpg?t=1679412516",
              "controller_support": "full"
            },
            {
              "id": 1326470,
              "type": 0,
              "name": "Sons Of The Forest",
              "discounted": false,
              "discount_percent": 0,
              "original_price": 2999,
              "final_price": 2999,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1326470/capsule_616x353.jpg?t=1679677298",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1326470/capsule_184x69.jpg?t=1679677298",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1326470/header.jpg?t=1679677298",
              "controller_support": "full"
            },
            {
              "id": 354231,
              "type": 1,
              "name": "Kit de RV de Valve Index",
              "discounted": false,
              "discount_percent": 0,
              "original_price": 99900,
              "final_price": 99900,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/subs/354231/capsule_616x353.jpg?t=1645044526",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/subs/354231/capsule_184x69.jpg?t=1645044526",
              "windows_available": true,
              "mac_available": false,
              "linux_available": true,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/subs/354231/header_ratio.jpg?t=1645044526",
              "headline": "Get it now!"
            },
            {
              "id": 29683,
              "type": 2,
              "name": "Edición Digital Deluxe de The Last of Us™ Part I",
              "discounted": false,
              "discount_percent": 0,
              "original_price": 6999,
              "final_price": 6999,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/bundles/29683/7dxsgddqd7d2g0el/capsule_616x353.jpg?t=1677605105",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/bundles/29683/7dxsgddqd7d2g0el/capsule_184x69.jpg?t=1677605105",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/bundles/29683/7dxsgddqd7d2g0el/header_ratio.jpg?t=1677605105",
              "controller_support": "full"
            },
            {
              "id": 311210,
              "type": 0,
              "name": "Call of Duty®: Black Ops III",
              "discounted": true,
              "discount_percent": 67,
              "original_price": 5999,
              "final_price": 1979,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/311210/capsule_616x353.jpg?t=1646763462",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/311210/capsule_184x69.jpg?t=1646763462",
              "windows_available": true,
              "mac_available": true,
              "linux_available": false,
              "streamingvideo_available": false,
              "discount_expiration": 1680195600,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/311210/header.jpg?t=1646763462",
              "controller_support": "full"
            }
          ]
        },
        "new_releases": {
          "id": "cat_newreleases",
          "name": "Novedades",
          "items": [
            {
              "id": 2307180,
              "type": 0,
              "name": "King Clicker League",
              "discounted": true,
              "discount_percent": 33,
              "original_price": 299,
              "final_price": 200,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2307180/capsule_616x353.jpg?t=1679842498",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2307180/capsule_184x69.jpg?t=1679842498",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "discount_expiration": 1680454856,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2307180/header.jpg?t=1679842498"
            },
            {
              "id": 2329980,
              "type": 0,
              "name": "Scavenger",
              "discounted": false,
              "discount_percent": 0,
              "original_price": null,
              "final_price": 0,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2329980/capsule_616x353.jpg?t=1679830084",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2329980/capsule_184x69.jpg?t=1679830084",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2329980/header.jpg?t=1679830084"
            },
            {
              "id": 2277960,
              "type": 0,
              "name": "B-Horror: Subway",
              "discounted": false,
              "discount_percent": 0,
              "original_price": null,
              "final_price": 0,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2277960/capsule_616x353.jpg?t=1679821681",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2277960/capsule_184x69.jpg?t=1679821681",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2277960/header.jpg?t=1679821681"
            },
            {
              "id": 2100040,
              "type": 0,
              "name": "Rune Break",
              "discounted": false,
              "discount_percent": 0,
              "original_price": null,
              "final_price": 0,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2100040/capsule_616x353.jpg?t=1679812310",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2100040/capsule_184x69.jpg?t=1679812310",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2100040/header.jpg?t=1679812310",
              "controller_support": "full"
            },
            {
              "id": 2342930,
              "type": 0,
              "name": "Evil Superhero VR",
              "discounted": false,
              "discount_percent": 0,
              "original_price": 499,
              "final_price": 499,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2342930/capsule_616x353.jpg?t=1679800768",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2342930/capsule_184x69.jpg?t=1679800768",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2342930/header.jpg?t=1679800768"
            },
            {
              "id": 2276960,
              "type": 0,
              "name": "a land Goo's crazy",
              "discounted": false,
              "discount_percent": 0,
              "original_price": 999,
              "final_price": 999,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2276960/capsule_616x353.jpg?t=1679784322",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2276960/capsule_184x69.jpg?t=1679784322",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2276960/header.jpg?t=1679784322"
            },
            {
              "id": 2145530,
              "type": 0,
              "name": "Moonflower",
              "discounted": true,
              "discount_percent": 15,
              "original_price": 1299,
              "final_price": 1104,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2145530/capsule_616x353.jpg?t=1679829980",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2145530/capsule_184x69.jpg?t=1679829980",
              "windows_available": true,
              "mac_available": true,
              "linux_available": true,
              "streamingvideo_available": false,
              "discount_expiration": 1680368441,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2145530/header.jpg?t=1679829980"
            },
            {
              "id": 2347950,
              "type": 0,
              "name": "Eloriasha",
              "discounted": true,
              "discount_percent": 15,
              "original_price": 229,
              "final_price": 194,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2347950/capsule_616x353.jpg?t=1679884767",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2347950/capsule_184x69.jpg?t=1679884767",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "discount_expiration": 1680368456,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2347950/header.jpg?t=1679884767",
              "controller_support": "full"
            },
            {
              "id": 1927270,
              "type": 0,
              "name": "Administradores",
              "discounted": true,
              "discount_percent": 40,
              "original_price": 999,
              "final_price": 599,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1927270/capsule_616x353.jpg?t=1679767580",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1927270/capsule_184x69.jpg?t=1679767580",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "discount_expiration": 1680368417,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1927270/header.jpg?t=1679767580"
            },
            {
              "id": 2310860,
              "type": 0,
              "name": "Radical Road",
              "discounted": false,
              "discount_percent": 0,
              "original_price": 199,
              "final_price": 199,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2310860/capsule_616x353.jpg?t=1679871555",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2310860/capsule_184x69.jpg?t=1679871555",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2310860/header.jpg?t=1679871555"
            },
            {
              "id": 2245850,
              "type": 0,
              "name": "Gverse",
              "discounted": false,
              "discount_percent": 0,
              "original_price": 199,
              "final_price": 199,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2245850/capsule_616x353.jpg?t=1679762205",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2245850/capsule_184x69.jpg?t=1679762205",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2245850/header.jpg?t=1679762205"
            },
            {
              "id": 2214260,
              "type": 0,
              "name": "Metal War",
              "discounted": false,
              "discount_percent": 0,
              "original_price": 99,
              "final_price": 99,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2214260/capsule_616x353.jpg?t=1679761271",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2214260/capsule_184x69.jpg?t=1679761271",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2214260/header.jpg?t=1679761271"
            },
            {
              "id": 2316410,
              "type": 0,
              "name": "Universe in Cum 💦 🌎",
              "discounted": true,
              "discount_percent": 18,
              "original_price": 399,
              "final_price": 327,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2316410/capsule_616x353.jpg?t=1679775054",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2316410/capsule_184x69.jpg?t=1679775054",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "discount_expiration": 1680368455,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2316410/header.jpg?t=1679775054"
            },
            {
              "id": 1706480,
              "type": 0,
              "name": "Alive Paint",
              "discounted": true,
              "discount_percent": 10,
              "original_price": 499,
              "final_price": 449,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1706480/capsule_616x353.jpg?t=1679756376",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1706480/capsule_184x69.jpg?t=1679756376",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "discount_expiration": 1680368433,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1706480/header.jpg?t=1679756376"
            },
            {
              "id": 2119210,
              "type": 0,
              "name": "VOYAGER",
              "discounted": true,
              "discount_percent": 61,
              "original_price": 119,
              "final_price": 47,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2119210/capsule_616x353.jpg?t=1679754734",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2119210/capsule_184x69.jpg?t=1679754734",
              "windows_available": true,
              "mac_available": true,
              "linux_available": true,
              "streamingvideo_available": false,
              "discount_expiration": 1680963894,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2119210/header.jpg?t=1679754734",
              "controller_support": "full"
            },
            {
              "id": 2321260,
              "type": 0,
              "name": "Within",
              "discounted": false,
              "discount_percent": 0,
              "original_price": 99,
              "final_price": 99,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2321260/capsule_616x353.jpg?t=1679744199",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2321260/capsule_184x69.jpg?t=1679744199",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2321260/header.jpg?t=1679744199"
            },
            {
              "id": 1739800,
              "type": 0,
              "name": "Damn Ropes",
              "discounted": false,
              "discount_percent": 0,
              "original_price": null,
              "final_price": 0,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1739800/capsule_616x353.jpg?t=1679742197",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1739800/capsule_184x69.jpg?t=1679742197",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1739800/header.jpg?t=1679742197"
            },
            {
              "id": 1747510,
              "type": 0,
              "name": "An Architect's Adventure",
              "discounted": true,
              "discount_percent": 10,
              "original_price": 999,
              "final_price": 899,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1747510/capsule_616x353.jpg?t=1679805113",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1747510/capsule_184x69.jpg?t=1679805113",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "discount_expiration": 1680368430,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1747510/header.jpg?t=1679805113",
              "controller_support": "full"
            },
            {
              "id": 1818370,
              "type": 0,
              "name": "My Furry Dragon 🐾",
              "discounted": true,
              "discount_percent": 20,
              "original_price": 399,
              "final_price": 319,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1818370/capsule_616x353.jpg?t=1679734937",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1818370/capsule_184x69.jpg?t=1679734937",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "discount_expiration": 1680368406,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1818370/header.jpg?t=1679734937"
            },
            {
              "id": 2285610,
              "type": 0,
              "name": "人形の傷跡：姉の謎を追うサイコホラー",
              "discounted": true,
              "discount_percent": 34,
              "original_price": 999,
              "final_price": 659,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2285610/capsule_616x353.jpg?t=1679728561",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2285610/capsule_184x69.jpg?t=1679728561",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "discount_expiration": 1680368458,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2285610/header.jpg?t=1679728561"
            },
            {
              "id": 2332200,
              "type": 0,
              "name": "The Virtual Illés Initiative",
              "discounted": false,
              "discount_percent": 0,
              "original_price": null,
              "final_price": 0,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2332200/capsule_616x353.jpg?t=1679800712",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2332200/capsule_184x69.jpg?t=1679800712",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2332200/header.jpg?t=1679800712"
            },
            {
              "id": 1426340,
              "type": 0,
              "name": "Super Dream-Weaver",
              "discounted": false,
              "discount_percent": 0,
              "original_price": 499,
              "final_price": 499,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1426340/capsule_616x353.jpg?t=1679727644",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1426340/capsule_184x69.jpg?t=1679727644",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/1426340/header.jpg?t=1679727644"
            },
            {
              "id": 2254350,
              "type": 0,
              "name": "Retro Short Game",
              "discounted": true,
              "discount_percent": 30,
              "original_price": 399,
              "final_price": 279,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2254350/capsule_616x353.jpg?t=1679719660",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2254350/capsule_184x69.jpg?t=1679719660",
              "windows_available": true,
              "mac_available": true,
              "linux_available": false,
              "streamingvideo_available": false,
              "discount_expiration": 1680282038,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2254350/header.jpg?t=1679719660"
            },
            {
              "id": 2227400,
              "type": 0,
              "name": "VR Dancer",
              "discounted": false,
              "discount_percent": 0,
              "original_price": null,
              "final_price": 0,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2227400/capsule_616x353.jpg?t=1679726153",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2227400/capsule_184x69.jpg?t=1679726153",
              "windows_available": true,
              "mac_available": true,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2227400/header.jpg?t=1679726153"
            },
            {
              "id": 2303800,
              "type": 0,
              "name": "My Life as a Cult Leader",
              "discounted": true,
              "discount_percent": 10,
              "original_price": 1499,
              "final_price": 1349,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2303800/capsule_616x353.jpg?t=1679723921",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2303800/capsule_184x69.jpg?t=1679723921",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "discount_expiration": 1680282007,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2303800/header.jpg?t=1679723921"
            },
            {
              "id": 2305480,
              "type": 0,
              "name": "觅光：第一章 - Seeking Light : Chapter 1",
              "discounted": false,
              "discount_percent": 0,
              "original_price": null,
              "final_price": 0,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2305480/capsule_616x353.jpg?t=1679717277",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2305480/capsule_184x69.jpg?t=1679717277",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2305480/header.jpg?t=1679717277"
            },
            {
              "id": 2162790,
              "type": 0,
              "name": "Pricia Defense",
              "discounted": true,
              "discount_percent": 10,
              "original_price": 1299,
              "final_price": 1169,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2162790/capsule_616x353.jpg?t=1679801571",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2162790/capsule_184x69.jpg?t=1679801571",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "discount_expiration": 1680282039,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2162790/header.jpg?t=1679801571"
            },
            {
              "id": 2237800,
              "type": 0,
              "name": "Dragon's Treasure",
              "discounted": true,
              "discount_percent": 30,
              "original_price": 299,
              "final_price": 209,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2237800/capsule_616x353.jpg?t=1679711063",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2237800/capsule_184x69.jpg?t=1679711063",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "discount_expiration": 1680282020,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2237800/header.jpg?t=1679711063"
            },
            {
              "id": 2287790,
              "type": 0,
              "name": "Tide Girl: Phenomena",
              "discounted": false,
              "discount_percent": 0,
              "original_price": 299,
              "final_price": 299,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2287790/capsule_616x353.jpg?t=1679709618",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2287790/capsule_184x69.jpg?t=1679709618",
              "windows_available": true,
              "mac_available": false,
              "linux_available": true,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2287790/header.jpg?t=1679709618",
              "controller_support": "full"
            },
            {
              "id": 2312190,
              "type": 0,
              "name": "Porndle",
              "discounted": false,
              "discount_percent": 0,
              "original_price": 399,
              "final_price": 399,
              "currency": "USD",
              "large_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2312190/capsule_616x353.jpg?t=1679785278",
              "small_capsule_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2312190/capsule_184x69.jpg?t=1679785278",
              "windows_available": true,
              "mac_available": false,
              "linux_available": false,
              "streamingvideo_available": false,
              "header_image":
                  "https://cdn.akamai.steamstatic.com/steam/apps/2312190/header.jpg?t=1679785278",
              "controller_support": "full"
            }
          ]
        },
        "genres": {"id": "cat_genres", "name": "Géneros"},
        "trailerslideshow": {
          "id": "cat_trailerslideshow",
          "name": "Tráiler TV"
        },
        "status": 1
      };

      final formatedData = searchResponseFromJson(resp);

      final formatedData2 = featuredCategoriesResponseFromJson(resp2);

      featuredsWin.addAll(formatedData.featuredWin);
      featuredsMac.addAll(formatedData.featuredMac);
      featuredsLinux.addAll(formatedData.featuredLinux);

      specials.addAll(formatedData2.specials.items);
      coominsoon.addAll(formatedData2.comingSoon.items);
      topSellers.addAll(formatedData2.topSellers.items);
      newReleases.addAll(formatedData2.newReleases.items);

      notifyListeners();
    }

    return true;
  }
}
