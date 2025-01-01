String getPurposeURL(String purpose) {
  switch (purpose) {
    case "onDemand": //현재 상영중
      return "https://api.themoviedb.org/3/movie/now_playing?language=ko-KR&page=1";
    case "favorites": //인기순 
      return "https://api.themoviedb.org/3/movie/popular?language=ko-KR&page=1";
    case "highVotes"://평점 높은 순
      return "https://api.themoviedb.org/3/movie/top_rated?language=ko-KR&page=1";
    case "releaseSoon": //개봉예정
      return "https://api.themoviedb.org/3/movie/upcoming?language=ko-KR&page=1";
   }
  return "error: unknown Category";
}