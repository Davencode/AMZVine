//
//  PageSingleItem.swift
//  AmazonPrimeVideoNanoChallenge
//
//  Created by Davide Belardi on 06/12/21.
//

import SwiftUI
import AVKit

struct PageSingleItem: View {
    
    var film : AmazonPrimeVideo
    
    @ObservedObject private var postListVM = PostListViewModel()
    
    @State private var showingAlert = false
    
    @State var number_like : Int = 0
    @State var number_dislike : Int = 0
    @State var action_reaction : Bool = false
    @State var action_reaction2 : Bool = false
    
    let screen = UIScreen.main.bounds
    
    @State var showmodal : Bool = false
  
    var body: some View {
        
        ScrollView{
            VStack{
                VStack{
                    ZStack{
                        Image(film.Image_cover)
                            .resizable()
                            .scaledToFit()
                        Circle()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.white.opacity(0.6))
                        Image(systemName: "play.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.primary)
                            .frame(width: 20, height: 20)
                        
                    }
                    VStack{
                        Button(action: {
                            showingAlert = true
                        }) {
                            Text("ADD")
                                .frame(width: screen.width/1.1, height: 40)
                            
                        }.background(Color(uiColor: .systemGray3))
                            .foregroundColor(.primary)
                            .cornerRadius(10)
                            .frame(width: screen.width, height: 40)
                            .padding()
                            .alert(isPresented: $showingAlert) {
                                Alert(title: Text("Info Message"), message: Text("Work in progress dude!"), dismissButton: .default(Text("Got it!")))
                            }
                        
                        VStack{
                        if film.STV_F == "Film" {
                            
                            Text("Trailer")
                                .font(.title2)
                                .fontWeight(.medium)
                                .foregroundColor(.primary)
                                .padding(.horizontal,20)
                                .frame(width: screen.width, alignment: .leading)
                            
                            ScrollView(.horizontal){
                                
                                ZStack{
                                    Image(film.Scene_film)
                                        .resizable()
                                        .cornerRadius(15)
                                    
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 15)
                                                .stroke(Color.primary.opacity(0.5), lineWidth: 5)
                                        )
                                        .frame(width: 180, height: 100)
                                        .padding()
                                    Circle()
                                        .frame(width: 50, height: 50)
                                        .foregroundColor(.white.opacity(0.6))
                                    Image(systemName: "play.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .foregroundColor(.primary)
                                        .frame(width: 20, height: 20)
                                }
                                .padding(.horizontal, 20)
                                .onTapGesture {
                                    showmodal = true
                                }
                                .popover(isPresented: $showmodal){
                                    VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: film.trailer, withExtension: "mov")!))
                                        .frame(width: screen.width/1, height: screen.height)
                                        
                                }
                            }
                            
                        } else {
                            Text("Seasons")
                                .font(.title2)
                                .fontWeight(.medium)
                                .foregroundColor(.primary)
                                .padding(.horizontal,20)
                                .frame(width: screen.width, alignment: .leading)
                            ScrollView(.horizontal){
                                VStack{
                                    ZStack{
                                        Image(film.Scene_film)
                                            .resizable()
                                            .cornerRadius(15)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 15)
                                                    .stroke(Color.primary.opacity(0.5), lineWidth: 5)
                                            )
                                            .frame(width: 180, height: 100)
                                            .padding()
                                        Circle()
                                            .frame(width: 50, height: 50)
                                            .foregroundColor(.white.opacity(0.6))
                                        Image(systemName: "play.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .foregroundColor(.primary)
                                            .frame(width: 20, height: 20)
                                        
                                        
                                    }.padding(.horizontal, 20)
                                    
                                    Text("Episode 1x01")
                                }
                            }
                        }
                        }
                        
                        Text("Crew and troupe")
                            .font(.title2)
                            .fontWeight(.medium)
                            .foregroundColor(.primary)
                            .padding()
                            .frame(width: screen.width, alignment: .leading)
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ForEach(1...5, id: \.self){ i in
                                    ZStack{
                                        Circle()
                                            .frame(width: 80, height: 80)
                                            .foregroundColor(Color(uiColor: .systemGray3))
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 40)
                                                    .stroke(Color.primary, lineWidth: 2)
                                            )
                                            
                                        Image(systemName: "star.fill")
                                        
                                    }
                                }.padding(20)
                                
                            }
                        }
                        
                        Text("More Details")
                            .font(.title2)
                            .fontWeight(.medium)
                            .foregroundColor(.primary)
                            .padding()
                            .frame(width: screen.width, alignment: .leading)
                        
                        VStack(alignment: .leading, spacing: 6){
                            Text("Genre: ")
                                .font(.headline)
                            Text(film.Genre)
                                .font(.body)
                            Text("Description:")
                                .font(.headline)
                            Text(film.Description)
                                .font(.body)
                            Text("Rating: " + film.ratings).font(.system(size:25))
                                .bold()
                        }.padding(.horizontal, 30)
                        
                        HStack {
                            Text("Reviews")
                                .font(.title2)
                                .fontWeight(.medium)
                                .foregroundColor(.primary)
                                .padding()
                            Spacer()
                            Text("Add your review")
                            Image(systemName: "plus.bubble")
                                .padding(.trailing, 20)
                        }.frame(width: screen.width, alignment: .leading)
                        
                        
                        ForEach(self.postListVM.posts.prefix(10), id: \.name) { post in
                            Divider()
                            
                            VStack{
                                
                                ZStack{
                                    Rectangle()
                                        .frame(width: screen.width)
                                        .foregroundColor(Color(uiColor: .systemGray5))
                                    HStack{
                                        
                                        Image(systemName: "person.circle")
                                            .resizable()
                                            .frame(width: 32, height: 32)
                                            .foregroundColor(.primary)
                                            .padding()
                                        Text(post.email)
                                        Text("says:")
                                            .bold()
                                    }.frame(width: screen.width, alignment: .leading)
                                    
                                }.frame(width: screen.width, alignment: .leading)
                                Text(post.body)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 30)
                            }
                        }
                        
                    }
                    
                }
            }
        }.navigationBarTitle(film.Title)
            
        
            .toolbar {
                HStack{
                    Image(systemName: "arrow.down.square")
                        .onTapGesture {
                            showingAlert = true
                        }
                    
                    Image(systemName: "square.and.arrow.up")
                        .padding(.leading, 10)
                        .onTapGesture {
                            showingAlert = true
                        }
                   
                }.alert(isPresented: $showingAlert) {
                    Alert(title: Text("Info Message"), message: Text("Work in progress dude!"), dismissButton: .default(Text("Got it!")))
                }
            }
        
        
        
    }
}

//struct PageSingleItem_Previews: PreviewProvider {
//    static var previews: some View {
//        PageSingleItem()
//    }
//}
