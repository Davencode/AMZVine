//
//  AnimeRow.swift
//  AmazonPrimeVideoNanoChallenge
//
//  Created by Davide Belardi on 15/12/21.
//

import Foundation
import SwiftUI

struct AmazonRow: View {
    var primevideo: AmazonPrimeVideo
    @EnvironmentObject var appData: AppData
    

    let screen = UIScreen.main.bounds
    var body: some View {
        
        HStack{
            Image(primevideo.image)
                .resizable()
                .frame(width: 100, height: 150)
                .cornerRadius(15)
            VStack(alignment: .leading){
                Text(primevideo.Title)
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                Text(primevideo.STV_F)
                    .font(.body)
                    .fontWeight(.semibold)
                Text(primevideo.Genre)
                    .fontWeight(.light)
                Spacer()
                
            }.padding(.leading,5)
            Spacer()
            
            ZStack{
                Rectangle()
                    .frame(width: 80, height: 80)
                    .cornerRadius(20)
                    .foregroundColor(.clear)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.primary, lineWidth: 2)
                    )
                    .padding()
                VStack{
                    Text("Ratings:")
                        .fontWeight(.medium)
                    Text(primevideo.ratings)
                        .fontWeight(.bold)
                }
            }
        }.frame(width: screen.width)
            .padding(5)
        
    }
}
