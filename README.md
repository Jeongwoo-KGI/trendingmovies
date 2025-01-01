# trendingmovies

A new Flutter project to show the trending movies at the moment in Korean language using the TMDB database. The TMDB Data API can be fetched from here[]

Here are some basic informations about the application
- It is based with dark mode (no light-mode support). But if you feel like it, just change the apptheme.dart to enable such support. 
- Each movies are contained in a size of hight 180 in the ListView. 
- There are 4 Categories for the movie: onDemand, favorites, highVotes, and releaseSoon. These are the data labels that I have used to change the URLs to request the data from the TMDB API. 
- Each movies with the favorites will contain the rank of each movie from the first place to the last. 
- In the detail page, the information that it contains are
    - Title
    - Date of Release
    - Tag Line
    - Running Time
    - Categories
    - Movie Details (Explanation of the movie)
    - List view of Budget, Ratings, Rating Votes, Earnings
    - List view of Production Companies and Distributors (white background, 0.9 opacity). 
- Basic Functionalities also include Pull-to-Refresh. 
- A potential add-on to try would be to add a search through LLM support. This may mean to browse through the potential movies that the user may like by inputting their mood or the description of a movie that they would like to watch. However, it is deprecated in this version as the running time seems to be too long to contain an LLM to find the highest matching movie that contains the detail that the individual want while the movie id is yet another thing to add in the data repository to fetch the wanted outcome. 

## Getting Started

- As I understand that this is an API that people freely use, I am uploading the finalized version of the application to be public rather than having to show the full process of branch, merge, commits, and etc to avoid the faulty usage of API keys. 
- API keys have been obfusticated through the ENVied library for the safe usage of this project


