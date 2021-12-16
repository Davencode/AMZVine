//
//  FilmCover.swift
//  AmazonPrimeVideoNanoChallenge
//
//  Created by Davide Belardi on 08/12/21.
//

import SwiftUI

struct FilmCover: View {
    
    var film: AmazonPrimeVideo
    
    var body: some View {
      
        ZStack {
            
            Image(film.image)
                .resizable()
                .scaledToFill()
                .mask(
                    LinearGradient(gradient: Gradient(colors: [Color.black, Color.black, Color.black, Color.black.opacity(0)]), startPoint: .top, endPoint: .bottom)
                )
                .mask(
                    LinearGradient(gradient: Gradient(colors: [Color.black, Color.black, Color.black.opacity(0)]), startPoint: .bottom, endPoint: .top)
                )
                .frame(height: 550)
            
            
            
        }
    }
}

//struct FilmCover_Previews: PreviewProvider {
//    static var previews: some View {
//        FilmCover()
//    }
//}
