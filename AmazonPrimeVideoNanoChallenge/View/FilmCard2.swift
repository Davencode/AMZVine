//
//  FilmCard2.swift
//  AmazonPrimeVideoNanoChallenge
//
//  Created by Davide Belardi on 09/12/21.
//

import SwiftUI

struct FilmCard2: View {
    
    var film : AmazonPrimeVideo
    
    var body: some View {

            VStack{

                VStack{
                    Image(film.image)
                        .resizable()
                        .cornerRadius(16)
                        .scaledToFit()
                        .frame(width: 150, height: 200)
                        .padding(.bottom,20)
                    
                    Text(film.Title)
                        .fontWeight(.bold)
                        .accentColor(.primary)
                        
                    Text(film.STV_F)
                        .fontWeight(.light)
                        .accentColor(.primary)
                      
                  
                }.padding(11)
            }
    }
}

//struct FilmCard_Previews: PreviewProvider {
//    static var previews: some View {
//        FilmCard()
//    }
//}

