List<SearchResponse> searchResponseFromJson(List str) => List<SearchResponse>.from(str.map((x) => SearchResponse.fromJson(x)));

class SearchResponse {
  
    SearchResponse({
        this.appId,
        required this.title,
        required this.imgUrl,
        required this.released,
        this.reviewSummary,
        required this.price,
    });

    String? appId;
    String title;
    String imgUrl;
    String released;
    String? reviewSummary;
    String price;


    factory SearchResponse.fromJson(Map<String, dynamic> json) => SearchResponse(
        appId: json["appId"],
        title: json["title"],
        imgUrl: json["imgUrl"],
        released: json["released"],
        reviewSummary: json["reviewSummary"],
        price: json["price"],
    );

}
