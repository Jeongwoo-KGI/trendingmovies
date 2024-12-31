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
    case "details": //영화 상세 정보
      return "https://api.themoviedb.org/3/movie/영화아이디?language=ko-KR";
  }
  return "error: unknown Category";
}