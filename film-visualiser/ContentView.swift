//
//  ContentView.swift
//  film-visualiser
//
//  Created by Giorgio Mazzei on 03/07/23.
//

var films = [
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

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
