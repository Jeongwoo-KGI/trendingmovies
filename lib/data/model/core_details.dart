//DTO for details of the movie
//This is generated through app.quicktype.io 
//in this manner, I have made Core and Core Details.
//However, Core has been truncated to perform faster, as it contains lists of movies
//While, Core Details only contains information about the single movie queried through movie_id

class CoreDetails {
    bool? adult;
    String? backdropPath;
    BelongsToCollection? belongsToCollection;
    int? budget;
    List<Genre>? genres;
    String? homepage;
    int id;
    String? imdbId;
    List<String>? originCountry;
    String? originalLanguage;
    String? originalTitle;
    String? overview;
    double? popularity;
    String? posterPath;
    List<ProductionCompany>? productionCompanies;
    List<ProductionCountry>? productionCountries;
    DateTime? releaseDate;
    int? revenue;
    int? runtime;
    List<SpokenLanguage>? spokenLanguages;
    String? status;
    String? tagline;
    String? title;
    bool? video;
    double? voteAverage;
    int? voteCount;

    CoreDetails({
        required this.adult,
        required this.backdropPath,
        required this.belongsToCollection,
        required this.budget,
        required this.genres,
        required this.homepage,
        required this.id,
        required this.imdbId,
        required this.originCountry,
        required this.originalLanguage,
        required this.originalTitle,
        required this.overview,
        required this.popularity,
        required this.posterPath,
        required this.productionCompanies,
        required this.productionCountries,
        required this.releaseDate,
        required this.revenue,
        required this.runtime,
        required this.spokenLanguages,
        required this.status,
        required this.tagline,
        required this.title,
        required this.video,
        required this.voteAverage,
        required this.voteCount,
    });

}

class BelongsToCollection {
    int id;
    String name;
    String posterPath;
    String backdropPath;

    BelongsToCollection({
        required this.id,
        required this.name,
        required this.posterPath,
        required this.backdropPath,
    });

}

class Genre {
    int id;
    String name;

    Genre({
        required this.id,
        required this.name,
    });

}

class ProductionCompany {
    int id;
    String logoPath;
    String name;
    String originCountry;

    ProductionCompany({
        required this.id,
        required this.logoPath,
        required this.name,
        required this.originCountry,
    });

}

class ProductionCountry {
    String iso31661;
    String name;

    ProductionCountry({
        required this.iso31661,
        required this.name,
    });

}

class SpokenLanguage {
    String englishName;
    String iso6391;
    String name;

    SpokenLanguage({
        required this.englishName,
        required this.iso6391,
        required this.name,
    });

}