String getDetails(int id) {//영화 상세 정보 받아오기

  return "https://api.themoviedb.org/3/movie/${id.toString()}?language=ko-KR";

}