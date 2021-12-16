//
//  TabView.swift
//  AmazonPrimeVideoNanoChallenge
//
//  Created by Davide Belardi on 09/12/21.
//

import SwiftUI

struct MainScreen: View {
    
    @EnvironmentObject var appData: AppData
    @State private var selectedTab = "home"
    
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Home(filmList: appData.amazonvideo, sectionList: appData.amazon_section)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag("home")
            
            VStack{
                Image(systemName: "exclamationmark.triangle")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.primary)
                    .frame(width: 64, height: 64)
                Text("That's the Store")
                Text("(Work in progress)")
            }.tabItem {
                    Image(systemName: "cart.fill")
                    Text("Store")
                }
                .tag("Store")
            
            VStack{
                SearchView()
            }.tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
                .tag("Search")
            
            VStack{
                Image(systemName: "exclamationmark.triangle")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.primary)
                    .frame(width: 64, height: 64)
                Text("That's the Download")
                Text("(Work in progress)")
            }.tabItem {
                    Image(systemName: "arrow.down.square.fill")
                    Text("Download")
                }
                .tag("Download")
            
            VStack{
                Image(systemName: "exclamationmark.triangle")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.primary)
                    .frame(width: 64, height: 64) 
                Text("That's the Personal Area")
                Text("(Work in progress)")
            }.tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Personal Area")
                }
                .tag("PersonalArea")
            
        }.accentColor(.primary)
    }
}

