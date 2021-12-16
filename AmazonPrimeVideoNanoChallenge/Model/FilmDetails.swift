//
//  FilmDetails.swift
//  AmazonPrimeVideoNanoChallenge
//
//  Created by Davide Belardi on 06/12/21.
//

import Foundation

struct AmazonPrimeVideo : Identifiable {
    var id = UUID()
     var Title : String
     var Description : String
     var Genre : String
     var ratings : String
     var image : String
     var Image_cover : String
     var STV_F : String //SerieTV _ or _ Film
     var Scene_film : String
     var isHome : Bool
     var isWatchNow : Bool
     var trailer : String
}

struct AmazonPrimeMenuSection : Identifiable {
    var id = UUID()
    var name : String
    var icon : String
}

class AppData : ObservableObject {
    
    @Published var amazonvideo : [AmazonPrimeVideo] = [
        AmazonPrimeVideo(Title: "Interstellar", Description: "Interstellar is a 2014 epic science fiction film co-written, directed and produced by Christopher Nolan. ... Set in a dystopian future where humanity is struggling to survive, the film follows a group of astronauts who travel through a wormhole near Saturn in search of a new home for mankind.", Genre: "Sci-fi/Adventure", ratings: "4.5", image: "interstellar", Image_cover: "interstellar_cover", STV_F: "Film", Scene_film: "interstellar_scene", isHome: false, isWatchNow: true, trailer: "interstellar_video"),
        AmazonPrimeVideo(Title: "Tenet", Description: "A secret agent receives a single word as a weapon and is sent to prevent the start of World War III. He must travel through time and bend the laws of nature to be successful in his mission.", Genre: "Action/Sci-fi", ratings: "3.8", image: "tenet", Image_cover: "tenet_cover", STV_F: "Film", Scene_film: "tenet_scene", isHome: true, isWatchNow: false, trailer: "tenet_video"),
        AmazonPrimeVideo(Title: "The boys", Description: "The Boys is set in a universe where superpowered individuals are recognized as heroes by the general public and work for the powerful corporation Vought International, which markets and monetizes them. Outside of their heroic personas, most are arrogant and corrupt.", Genre: "Action", ratings: "3.8", image: "theboys", Image_cover: "theboyscover2", STV_F: "TV Series", Scene_film: "theboys_scene", isHome: true, isWatchNow: false, trailer: ""),
        AmazonPrimeVideo(Title: "Bohemian Rhapsody", Description: "Freddie Mercury, Brian May, Roger Taylor and John Deacon formed Queen in 1970, and with the unique style that distinguishes them, they climb the heights of the world charts and become a legend of rock music.", Genre: "Musical/Dramatic", ratings: "4.3", image: "queen", Image_cover: "queen_cover", STV_F: "Film", Scene_film: "bohemian_scene", isHome: true, isWatchNow: false, trailer: ""),
        AmazonPrimeVideo(Title: "Vikings", Description: "Vikings is a historical drama television series created and written by Michael Hirst for the History channel, a Canadian network. ... The show portrays Ragnar as a farmer who rises to fame by raiding England and eventually becomes a Scandinavian king, with the support of his family and fellow warriors.", Genre: "Drama", ratings: "4.1", image: "vikings", Image_cover: "vikings_cover", STV_F: "TV Series", Scene_film: "vikings_scene", isHome: false, isWatchNow: true, trailer: ""),
        AmazonPrimeVideo(Title: "Medici", Description: "The series premiered in Italy on Rai 1 on 18 October 2016. The series follows the Medici family, bankers of the Pope, during Renaissance Florence. Each season follows the events of a particular moment of the family history exploring the political and artistic landscape of Renaissance Italy.", Genre: "Historical drama", ratings: "4", image: "medici", Image_cover: "imedici_cover", STV_F: "TV Series", Scene_film: "imedici_scene", isHome: false, isWatchNow: true, trailer: ""),
        AmazonPrimeVideo(Title: "Io sono Babbo Natale", Description: "Io sono Babbo Natale (I'm Santa Claus), a film directed by Edoardo Falcone, is the story of a former prisoner named Ettore (Marco Giallini), who leads a desperate existence, devoid of stimuli and restless. Finished in prison due to a robbery, the man never betrayed his accomplices, keeping the names to himself.", Genre: "Comedy", ratings: "3", image: "babbonatale", Image_cover: "iosonobabbonatale_cover", STV_F: "Film", Scene_film: "iosonobabbonatale_scene", isHome: false, isWatchNow: true, trailer: ""),
        AmazonPrimeVideo(Title: "Now you see me 2", Description: "Taking place about a year after the first film, Now You See Me 2 reunites Atlas (Eisenberg), McKinney (Woody Harrelson) and Wilder (Dave Franco), a group of world-famous magicians known as the Horsemen who stage high-profile illusions to expose corrupt magnates and millionaires.", Genre: "Action, Adventure", ratings: "3.5", image: "nowyouseeme2", Image_cover: "nowyouseeme2_cover", STV_F: "Film", Scene_film: "nowyouseeme2_scene", isHome: false, isWatchNow: true, trailer: "")
        ]
    
   @Published var amazon_section : [AmazonPrimeMenuSection] = [
        AmazonPrimeMenuSection(name: "Movies", icon: "film"),
        AmazonPrimeMenuSection(name: "Serie TV", icon: "sparkles.tv"),
        AmazonPrimeMenuSection(name: "Kids", icon: "face.smiling"),
        AmazonPrimeMenuSection(name: "Sport", icon: "sportscourt")

    ]
    
}
