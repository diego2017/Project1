# Pub Compass

## Summary
- Pub Compass is an application to find pubs, bars, nightclubs and other venues in Sydney. Users can see the features found in these places and review the features. Therefore, can also confirm how good the features are based on other users' reviews.
- This is front-end project created by Diego Villanueva - Project 1 / WDi20 General Assembly.
- The application was created with Ruby on Rails

### Online version
An online version of the game can be accessed using this  [Link  :link:](https://dry-fjord-15547.herokuapp.com/)

### Background and objective of the application:
- Google Maps, yelp and other websites let users find bars and other venues close to a location. It is possible to find whether some features can be found in the venues, such as live music, snacks, good prices, craft beers and the type of venue. Users who have visited these places can rate them based on their experience. This helps other users to choose the best option.
- A way to improve the rating system is to let users rate the features instead of the whole experience. Every person gives a different priority to each feature. For example, some people might love craft beers and if they find a place which has great ratings and offer craft beers they will assume they will like it. However, the other users could have rated their experience based on their food so if the user is only interested in the beers and not the food, their experience won't be as satisfactory.     
- What I built is similar to current websites, except it allows users to rate the features found in the locations they have visited. When other users are looking at the place's page, they will be able to find the location, image and features of it, as well as how many people liked or disliked each feature.
- In fact, the place owners are the ones who specify the features of their place, not a site admin. The owners are also users so they can rate other sites.

### Description of the app:
* The home page shows a list of places added to the application. The current places are in Sydney. A map is also shown with markers in all the locations shown on the right column of the page.
* To go to a specific place's page, click on the photo or name of the place on the right hand list.
* The place's page show the address and details of the user who create the page, the list of features found in the location and to buttons to either like or dislike each feature, counter of likes and dislikes, a photo and a map showing the location of the venue.
* The navigation bar show the app icon and name which can be used to go to the home page, Sign up and Sign in buttons when the user has not signed in, and Add venue and Sign out buttons once the user signs in.


## Comments on the project and its development:
* The application is currently working with basic functionalities. Users can signup, signin and signout. Users can add, edit and delete places.
* Some improvements that can be done to the application include: a filter in the home page that allows users find venues based only on the features they are interest in, a filter to show venues close to the current location and selecting the map's pointer of the venue when the photo or name of the place on the home page's list is clicked.
* The application looks ok in the computer's browser but it does not look good using a mobile phone. I need to redesign it to show correctly on all devices.
* During the development process I was able to practise what we have learned in the last 3 weeks about back-end and Ruby on Rails
* The biggest problem I had was to understand the routes and in which files I should be adding the information.
