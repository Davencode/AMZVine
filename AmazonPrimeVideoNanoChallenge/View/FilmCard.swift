//
//  FilmCard.swift
//  AmazonPrimeVideoNanoChallenge
//
//  Created by Davide Belardi on 06/12/21.
//

import SwiftUI

struct FilmCard: View {
    
    var film: AmazonPrimeVideo

    func getPercentage(geo: GeometryProxy) -> Double {
        let maxDistance = UIScreen.main.bounds.width/2
        let currentX = geo.frame(in: .global).midX
        return Double(1 - (currentX / maxDistance))
    }
    
    var body: some View {

        let screen = UIScreen.main.bounds
        
            VStack{
            
            GeometryReader { geometry in
                
                VStack{
                    Image(film.image)
                        .resizable()
                        .cornerRadius(16)
                        .frame(width: 200, height: 300)
                        .aspectRatio(contentMode: .fill)
                        .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color.white.opacity(0.6), lineWidth: 8)
                        )
//                        .rotation3DEffect(
//                            Angle(degrees : getPercentage(geo: geometry) * 20), axis: (x:80.0 , y: 1.0, z: -100.0))
                        .padding(.bottom,20)
                    
                    VStack{
                    Text(film.Title)
                        .font(.system(size:20))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .lineLimit(1)
                        .fixedSize()
                        .shadow(color: .black, radius: 5, x: 3, y: 2)

                    
                    }
                    
                }
            }.padding(25)
            
                
            }.frame(width: 250, height: 400)
        .padding(.vertical, 40)
        .cornerRadius(20)
        
        

    }
}

//struct FilmCard_Previews: PreviewProvider {
//    static var previews: some View {
//        FilmCard()
//    }
//}
