//
//  SearchView.swift
//  AmazonPrimeVideoNanoChallenge
//
//  Created by Davide Belardi on 15/12/21.
//

import SwiftUI

struct SearchView: View {
    //    var anime : Anime
    @EnvironmentObject var appData : AppData
    @State var testoRicerca = ""
    @State var isShowingProduct = false
    @State private var selectedAmazonItem : AmazonPrimeVideo? = nil
    
    @Environment(\.presentationMode) var presentationMode

    var arrayRicerca: [AmazonPrimeVideo] {
        if testoRicerca.isEmpty{
            return []
        } else {
            return appData.amazonvideo.filter{$0.Title.lowercased().contains(testoRicerca.lowercased())}
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    VStack {
                        ForEach(arrayRicerca) { search in
                            NavigationLink(destination: PageSingleItem(film: search)){
                                AmazonRow(primevideo: search)
                            }
                        }
                }.searchable(text: $testoRicerca, placement: .automatic)
                Spacer()
            }
            }.navigationTitle("Search")
    }
}
}

struct DismissingView1: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Button("Dismiss Me") {
            presentationMode.wrappedValue.dismiss()
        }
    }
}
