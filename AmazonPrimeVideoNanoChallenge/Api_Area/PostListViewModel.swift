//
//  PostListViewModel.swift
//  AmazonPrimeVideoNanoChallenge
//
//  Created by Davide Belardi on 11/12/21.
//

import Foundation

class PostListViewModel : ObservableObject {
    
    @Published var posts = [PostViewModel]()
    
    init(){
        Webservice().getPosts { posts in
            
            if let posts = posts {
                self.posts = posts.map(PostViewModel.init)
            }
            
        }
    }
}

struct PostViewModel {

    var post : Post
    
    init(post: Post){
        self.post = post
    }
    
    var name : String {
        return self.post.name
    }
    
    var email : String {
        return self.post.email
    }
    
    var body : String {
        return self.post.body
    }
}

