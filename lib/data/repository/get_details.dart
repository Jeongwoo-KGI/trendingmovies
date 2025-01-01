String getDetails(String moive_id) {//영화 상세 정보 받아오기

  return "https://api.themoviedb.org/3/movie/${moive_id}?language=ko-KR";

}