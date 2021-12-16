//
//  MainScreen.swift
//  AmazonPrimeVideoNanoChallenge
//
//  Created by Davide Belardi on 06/12/21.
//

import SwiftUI

struct Home: View {
    
    var filmList : [AmazonPrimeVideo]
    var sectionList : [AmazonPrimeMenuSection]
    
    @State private var showingAlert = false
    
    let screen = UIScreen.main.bounds
    
    @Environment(\.colorScheme) var colorScheme
    
    
    var body: some View {
        NavigationView{
            
            ScrollView(showsIndicators: false){
                VStack{
                    ZStack{
                        TabView{
                            ForEach(filmList.filter({$0.isHome})) { films in
                                ZStack{
                                    VStack{
                                        FilmCover(film: films)
                                    }
                                    NavigationLink(destination: PageSingleItem(film: films)) {
                                        FilmCard(film: films)
                                    }.buttonStyle(FlatLinkStyle())
                                }
                            }
                        }.tabViewStyle(.page)
                            .indexViewStyle(.page(backgroundDisplayMode: .always))
                            .frame(height: screen.height/1.6, alignment: .center)
                    }
                }
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(sectionList){ indice in
                            MenuArea(area_testo: indice)
                            
                        }
                    }
                }.padding(.leading,5)
                    .padding(.top, 10)
                
                Text("Watch now")
                    .padding(.leading, 20)
                    .padding(.top, 20)
                    .font(.system(size: 30, weight: .bold))
                    .frame(width: screen.width, alignment: .leading)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(filmList.filter({$0.isWatchNow})){ indice in
                            NavigationLink(destination: PageSingleItem(film: indice)) {
                                FilmCard2(film: indice)
                            }.buttonStyle(FlatLinkStyle())
                            
                        }
                    }
                }.padding(.leading,5)
                
                Text("Top Movies")
                    .padding(.leading, 20)
                    .padding(.top, 20)
                    .font(.system(size: 30, weight: .bold))
                    .frame(width: screen.width, alignment: .leading)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(filmList.filter({$0.isWatchNow})){ indice in
                            NavigationLink(destination: PageSingleItem(film: indice)) {
                                FilmCard2(film: indice)
                            }.buttonStyle(FlatLinkStyle())
                            
                        }
                    }
                }.padding(.leading,5)
            }
            .navigationBarHidden(true)
        }
    }
}


struct FlatLinkStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
    }
}
//struct MainScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        MainScreen()
//    }
//}
