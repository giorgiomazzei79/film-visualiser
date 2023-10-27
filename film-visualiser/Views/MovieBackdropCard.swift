//
//  MovieBackdropCard.swift
//  film-visualiser
//
//  Created by Giorgio Mazzei on 27/10/23.
//

import SwiftUI

struct MovieBackdropCard: View {
    var body: some View {
        VStack(alignment: .leading){
            ZStack(){
                Rectangle()
                    .fill(Color.gray.opacity(0.3))
            }
            .aspectRatio(16/9,contentMode: .fit)
            .cornerRadius(8)
            .shadow(radius:4)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        
    }
}

#Preview {
    MovieBackdropCard()
}
