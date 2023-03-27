FeaturedCategoriesResponse featuredCategoriesResponseFromJson(
        Map<String, dynamic> str) =>
    FeaturedCategoriesResponse.fromJson(str);

class FeaturedCategoriesResponse {
  FeaturedCategoriesResponse({
    required this.specials,
    required this.comingSoon,
    required this.topSellers,
    required this.newReleases,
  });

  BodyResponse specials;
  BodyResponse comingSoon;
  BodyResponse topSellers;
  BodyResponse newReleases;

  factory FeaturedCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      FeaturedCategoriesResponse(
        specials: BodyResponse.fromJson(json["specials"]),
        comingSoon: BodyResponse.fromJson(json["coming_soon"]),
        topSellers: BodyResponse.fromJson(json["top_sellers"]),
        newReleases: BodyResponse.fromJson(json["new_releases"]),
      );
}

class BodyResponse {
  BodyResponse({
    required this.id,
    required this.name,
    required this.items,
  });

  String id;
  String name;
  List<Item> items;

  factory BodyResponse.fromJson(Map<String, dynamic> json) => BodyResponse(
        id: json["id"],
        name: json["name"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );
}

class Item {
  Item({
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
    required this.headerImage,
    this.discountExpiration,
    this.headline,
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
  String headerImage;
  int? discountExpiration;
  String? headline;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
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
        headerImage: json["header_image"],
        discountExpiration: json["discount_expiration"],
        headline: json["headline"],
      );
}
