//
//  WebService.swift
//  AmazonPrimeVideoNanoChallenge
//
//  Created by Davide Belardi on 11/12/21.
//

import Foundation

class Webservice {
    
    func getPosts(completion: @escaping (([Post]?) -> ())){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/comments") else { fatalError("Invalid Url")}
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            let posts = try? JSONDecoder().decode([Post].self, from: data)
            
            DispatchQueue.main.async {
                completion(posts)

            }
            
        }.resume()
    }
}
