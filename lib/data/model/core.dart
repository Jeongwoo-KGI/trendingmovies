//this is the data fetched from the TMDB database 
//issue is that there are cases where the data may not have certain values
//one example of such is backdrop_path
//Under such circumstances, we can add DTO(Dtat Transfer Object) 
// API -(JSON)-> Map Object -> DTO -(mapper)-> Model Class objects
// final class objects are to be passed in for business logic


//this Core class is to take care of the Json that we recieve from the API
//this will act as a dto 
//truncated to perform faster
//original version of Core can be hinted from core_details.dart
class Core {
  bool adult;
  String? backdropPath;
  String originallanguage;
  String? overview;
  String title;
  double? voteaverage;
  String releasedate;
  int id;

  Core({
    required this.adult,
    required this.backdropPath,
    required this.originallanguage,
    required this.overview,
    required this.title,
    required this.voteaverage,
    required this.releasedate,

    required this.id,
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
    id: map['id']
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
      'id':id,
    };
  }


}

