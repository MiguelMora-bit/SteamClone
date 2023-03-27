SearchResponse searchResponseFromJson(Map<String, dynamic> str) =>
    SearchResponse.fromJson(str);

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
}
