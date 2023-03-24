import 'dart:convert';

SearchResponse searchResponseFromJson(String str) =>
    SearchResponse.fromJson(json.decode(str));

String searchResponseToJson(SearchResponse data) => json.encode(data.toJson());

class SearchResponse {
  SearchResponse({
    required this.featuredWin,
    required this.featuredMac,
    required this.featuredLinux,
  });

  List<Featured> featuredWin;
  List<Featured> featuredMac;
  List<Featured> featuredLinux;

  factory SearchResponse.fromJson(Map<String, dynamic> json) => SearchResponse(
        featuredWin: List<Featured>.from(
            json["featured_win"].map((x) => Featured.fromJson(x))),
        featuredMac: List<Featured>.from(
            json["featured_mac"].map((x) => Featured.fromJson(x))),
        featuredLinux: List<Featured>.from(
            json["featured_linux"].map((x) => Featured.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "featured_win": List<dynamic>.from(featuredWin.map((x) => x.toJson())),
        "featured_mac": List<dynamic>.from(featuredMac.map((x) => x.toJson())),
        "featured_linux":
            List<dynamic>.from(featuredLinux.map((x) => x.toJson())),
      };
}

class Featured {
  Featured({
    required this.id,
    required this.type,
    required this.name,
    required this.discounted,
    required this.discountPercent,
    this.originalPrice,
    required this.finalPrice,
    required this.largeCapsuleImage,
    required this.smallCapsuleImage,
    required this.windowsAvailable,
    required this.macAvailable,
    required this.linuxAvailable,
    required this.streamingvideoAvailable,
    this.discountExpiration,
    required this.headerImage,
    this.controllerSupport,
  });

  int id;
  int type;
  String name;
  bool discounted;
  int discountPercent;
  int? originalPrice;
  int finalPrice;
  String largeCapsuleImage;
  String smallCapsuleImage;
  bool windowsAvailable;
  bool macAvailable;
  bool linuxAvailable;
  bool streamingvideoAvailable;
  int? discountExpiration;
  String headerImage;
  String? controllerSupport;

  factory Featured.fromJson(Map<String, dynamic> json) => Featured(
        id: json["id"],
        type: json["type"],
        name: json["name"],
        discounted: json["discounted"],
        discountPercent: json["discount_percent"],
        originalPrice: json["original_price"],
        finalPrice: json["final_price"],
        largeCapsuleImage: json["large_capsule_image"],
        smallCapsuleImage: json["small_capsule_image"],
        windowsAvailable: json["windows_available"],
        macAvailable: json["mac_available"],
        linuxAvailable: json["linux_available"],
        streamingvideoAvailable: json["streamingvideo_available"],
        discountExpiration: json["discount_expiration"],
        headerImage: json["header_image"],
        controllerSupport: json["controller_support"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "name": name,
        "discounted": discounted,
        "discount_percent": discountPercent,
        "original_price": originalPrice,
        "final_price": finalPrice,
        "large_capsule_image": largeCapsuleImage,
        "small_capsule_image": smallCapsuleImage,
        "windows_available": windowsAvailable,
        "mac_available": macAvailable,
        "linux_available": linuxAvailable,
        "streamingvideo_available": streamingvideoAvailable,
        "discount_expiration": discountExpiration,
        "header_image": headerImage,
        "controller_support": controllerSupport,
      };
}
