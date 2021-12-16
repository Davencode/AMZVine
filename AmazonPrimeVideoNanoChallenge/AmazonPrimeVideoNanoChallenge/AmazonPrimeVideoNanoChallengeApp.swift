//
//  AmazonPrimeVideoNanoChallengeApp.swift
//  AmazonPrimeVideoNanoChallenge
//
//  Created by Davide Belardi on 06/12/21.
//

import SwiftUI

@main
struct AmazonPrimeVideoNanoChallengeApp: App {
    
//    @State var amazonv = AppData.amazonvideo
    
//    @State var section = AppData.amazon_section
    var body: some Scene {
        WindowGroup {
            let appData = AppData()
            MainScreen().environmentObject(appData)
        }
    }
}
