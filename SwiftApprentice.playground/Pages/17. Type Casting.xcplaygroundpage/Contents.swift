import Foundation

// Type casting in Swift is implemented with the is and as operators
// These two operators provide a simple and expressive way to check the **type of a value (is)** or **cast a value to a different type (as? || as!)**.


class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}


class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [ // No error because both have same superclass, so type becomes MediaItem
    Movie(name: "Casablanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
    Movie(name: "Citizen Kane", director: "Orson Welles"),
    Song(name: "The One And Only", artist: "Chesney Hawkes"),
    Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
]
// the type of "library" is inferred to be [MediaItem]

// These items in library are of type MediaItem

// Now to check from this if they are Movie or Song we can use **is**

var movieCount = 0
var songCount = 0


for item in library {
    if item is Movie { // Here no type returns we just match it like check it
        movieCount += 1
    } else if item is Song {
        songCount += 1
    }
}


print("Media library contains \(movieCount) movies and \(songCount) songs")
// Prints "Media library contains 2 movies and 3 songs"

// To downcast them to their original type we can use **as? || as!**

for item in library {
    if let movie = item as? Movie { // Here let movie is of type Movie bca item as? Movie returns that
        print("Movie: \(movie.name), dir. \(movie.director)")
    } else if let song = item as? Song {
        print("Song: \(song.name), by \(song.artist)")
    }
}


var things: [Any] = [] // This is any type which mean we can add any type into it
var things2: [AnyObject] = [] // Here we can add any class type

// If we want to add optional into or any other type which gives error when adding can do
// someVar as Any
