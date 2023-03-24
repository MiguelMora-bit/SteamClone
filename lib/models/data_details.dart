DataDetails dataDetailsFromJson(Map<String, dynamic> str) =>
    DataDetails.fromJson(str);

class DataDetails {
  DataDetails({
    required this.success,
    required this.data,
  });

  bool success;
  Data data;

  factory DataDetails.fromJson(Map<String, dynamic> json) => DataDetails(
        success: json["success"],
        data: Data.fromJson(json["data"]),
      );
}

class Data {
  Data({
    required this.type,
    required this.name,
    required this.steamAppid,
    required this.shortDescription,
    required this.headerImage,
    required this.developers,
    required this.publishers,
    required this.genres,
    required this.screenshots,
    required this.movies,
    required this.achievements,
    required this.releaseDate,
    required this.background,
  });

  String type;
  String name;
  int steamAppid;
  String shortDescription;
  String headerImage;
  List<String> developers;
  List<String> publishers;
  List<Genre> genres;
  List<Screenshot> screenshots;
  List<Movie> movies;
  Achievements achievements;
  ReleaseDate releaseDate;
  String background;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        type: json["type"],
        name: json["name"],
        steamAppid: json["steam_appid"],
        shortDescription: json["short_description"],
        headerImage: json["header_image"],
        developers: List<String>.from(json["developers"].map((x) => x)),
        publishers: List<String>.from(json["publishers"].map((x) => x)),
        genres: List<Genre>.from(json["genres"].map((x) => Genre.fromJson(x))),
        screenshots: List<Screenshot>.from(
            json["screenshots"].map((x) => Screenshot.fromJson(x))),
        movies: List<Movie>.from(json["movies"].map((x) => Movie.fromJson(x))),
        achievements: Achievements.fromJson(json["achievements"]),
        releaseDate: ReleaseDate.fromJson(json["release_date"]),
        background: json["background"],
      );
}

class Achievements {
  Achievements({
    required this.total,
    required this.highlighted,
  });

  int total;
  List<Highlighted> highlighted;

  factory Achievements.fromJson(Map<String, dynamic> json) => Achievements(
        total: json["total"],
        highlighted: List<Highlighted>.from(
            json["highlighted"].map((x) => Highlighted.fromJson(x))),
      );
}

class Highlighted {
  Highlighted({
    required this.name,
    required this.path,
  });

  String name;
  String path;

  factory Highlighted.fromJson(Map<String, dynamic> json) => Highlighted(
        name: json["name"],
        path: json["path"],
      );
}

class Genre {
  Genre({
    required this.id,
    required this.description,
  });

  String id;
  String description;

  factory Genre.fromJson(Map<String, dynamic> json) => Genre(
        id: json["id"],
        description: json["description"],
      );
}

class Movie {
  Movie({
    required this.id,
    required this.pathThumbnail,
    required this.mp4,
  });

  int id;
  String pathThumbnail;

  Mp4 mp4;

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        id: json["id"],
        pathThumbnail: json["thumbnail"],
        mp4: Mp4.fromJson(json["mp4"]),
      );
}

class Mp4 {
  Mp4({
    required this.the480,
    required this.max,
  });

  String the480;
  String max;

  factory Mp4.fromJson(Map<String, dynamic> json) => Mp4(
        the480: json["480"],
        max: json["max"],
      );
}

class ReleaseDate {
  ReleaseDate({
    required this.comingSoon,
    required this.date,
  });

  bool comingSoon;
  String date;

  factory ReleaseDate.fromJson(Map<String, dynamic> json) => ReleaseDate(
        comingSoon: json["coming_soon"],
        date: json["date"],
      );
}

class Screenshot {
  Screenshot({
    required this.id,
    required this.pathThumbnail,
    required this.pathFull,
  });

  int id;
  String pathThumbnail;
  String pathFull;

  factory Screenshot.fromJson(Map<String, dynamic> json) => Screenshot(
        id: json["id"],
        pathThumbnail: json["path_thumbnail"],
        pathFull: json["path_full"],
      );
}
