//this is the data fetched from the TMDB database 

class Core {
  bool adult;
  String? backdropPath;
  String originallanguage;
  String overview;
  String title;
  double voteaverage;
  String releasedate;

  Core({
    required this.adult,
    required this.backdropPath,
    required this.originallanguage,
    required this.overview,
    required this.title,
    required this.voteaverage,
    required this.releasedate,
  });

  //from json method constructor
  Core.fromJson(Map<String, dynamic> map) : this(
    adult: map['adult'],
    backdropPath: map['backdrop_path'],
    originallanguage: map['original_language'],
    overview: map['overview'],
    title: map['original_title'],
    voteaverage: map['vote_average'],
    releasedate: map['release_date'],
  );

  //toJson method (we don't need this tho...)
  Map<String, dynamic> toJson(){
    return{
      'adult': adult,
      'backdrop_Path':backdropPath,
      'original_language':originallanguage,
      'overview':overview,
      'original_title':title,
      'vote_average':voteaverage,
      'release_date': releasedate,
    };
  }


}

