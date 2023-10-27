//
//  ContentView.swift
//  film-visualiser
//
//  Created by Giorgio Mazzei on 03/07/23.
//

import SwiftUI
import Foundation

struct Film: Identifiable {
     let id = UUID()
     var title: String
     var year: Int
    var poster: String
    var photo_width: Int
    var photo_height: Int
 }
let string = "[{title: \"Avatar: The Way of Water\",\n    year: 2022,\n    poster: \"1.jpg\",\n    photo_width: 900,\n    photo_height: 1289},{title: \"A Beautiful Life\",\n    year: 2023,\n    poster: \"2.jpg\",\n    photo_width: 450,\n    photo_height: 630}]"

let data = string.data(using: .utf8)!

struct Form: Codable {
    let id: Int
    let name: String
    let description: String?

    private enum CodingKeys: String, CodingKey {
        case id = "form_id"
        case name = "form_name"
        case description = "form_desc"
    }
}

let f = try! JSONDecoder().decode([Form].self, from: data)



var filmsData: Array<Dictionary<String, Any>> = [
  [
    "title": "Avatar: The Way of Water",
    "year": 2022,
    "poster": "1.jpg",
    "photo_width": 900,
    "photo_height": 1289
  ],
  [
    "title": "A Beautiful Life",
    "year": 2023,
    "poster": "2.jpg",
    "photo_width": 450,
    "photo_height": 630
  ],
  [
    "title": "Everything Everywhere All at Once",
    "year": 2022,
    "poster": "3.jpg",
    "photo_width": 8699,
    "photo_height": 12599
  ],
  [
    "title": "The Idol",
    "year": 2023,
    "poster": "4.jpg",
    "photo_width": 768,
    "photo_height": 1138
  ],
  [
    "title": "Indiana Jones and the Raiders of the Lost Ark",
    "year": 1981,
    "poster": "5.jpg",
    "photo_width": 942,
    "photo_height": 1386
  ],
  [
    "title": "Spider-Man: Across the Spider-Verse",
    "year": 2023,
    "poster": "6.jpg",
    "photo_width": 600,
    "photo_height": 889
  ],
  [
    "title": "U Turn",
    "year": 1997,
    "poster": "7.jpg",
    "photo_width": 1280,
    "photo_height": 1905
  ],
  [
    "title": "The Hate U Give",
    "year": 2018,
    "poster": "8.jpg",
    "photo_width": 1200,
    "photo_height": 1777
  ]
]

var films = filmsData.map { (film) -> Film in
    Film(
        title: film["title"] as! String,
        year: film["year"] as! Int,
        poster: film["poster"] as! String,
        photo_width: film["photo_width"] as! Int,
        photo_height: film["photo_height"] as! Int  
    )
}



struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            List {
                ForEach(films) { film in
                    Text(film.title)
                    //comment test
                    let _ = Swift.print(film)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
