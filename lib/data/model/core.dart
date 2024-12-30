//this is the data fetched from the TMDB database 

class Core {
  bool adult;
  String imageURL;
  String originallanguage;
  String overview;
  String title;
  double voteaverage;
  String releasedate;

  Core({
    required this.adult,
    required this.imageURL,
    required this.originallanguage,
    required this.overview,
    required this.title,
    required this.voteaverage,
    required this.releasedate,
  });

  //from json method constructor
  Core.fromJson(Map<String, dynamic> map) : this(
    adult: map['adult'],
    imageURL: map['imageURL'],
    originallanguage: map['originallanguage'],
    overview: map['overview'],
    title: map['title'],
    voteaverage: map['voteaverage'],
    releasedate: map['releasedate'],
  );

  //toJson method (we don't need this tho...)
  Map<String, dynamic> toJson(){
    return{
      'adult': adult,
      'imageURL':imageURL,
      'originallanguage':originallanguage,
      'overview':overview,
      'title':title,
      'voteaverage':voteaverage,
      'releasedate': releasedate,
    };
  }


}

