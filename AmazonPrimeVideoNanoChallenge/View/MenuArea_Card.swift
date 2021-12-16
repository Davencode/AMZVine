//
//  MenuArea.swift
//  AmazonPrimeVideoNanoChallenge
//
//  Created by Davide Belardi on 09/12/21.
//

import SwiftUI

struct MenuArea: View {
    
    @State var area_testo : AmazonPrimeMenuSection
    
    @State var showingAlert : Bool = false
    
    var body: some View {
        VStack{
            ZStack{
            Rectangle()
                .frame(width: 160, height: 50)
                .foregroundColor(Color(uiColor: .systemGray4))
                .cornerRadius(10)
                .onTapGesture {
                    showingAlert = true
                }
                HStack{
                    Image(systemName: area_testo.icon)
                    Text(area_testo.name)
                        .bold()
                } .onTapGesture {
                    showingAlert = true
                }
            }
        }.padding(.leading,5)
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Info Message"), message: Text("Work in progress dude!"), dismissButton: .default(Text("Got it!")))
            }
            
            
        
    }
}

//struct MenuArea_Previews: PreviewProvider {
//    static var previews: some View {
//        MenuArea()
//    }
//}
