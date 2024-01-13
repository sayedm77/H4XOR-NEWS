//
//  NetworkManager.swift
//  H4XOR News
//
//  Created by elsayed mansour mahfouz on 12/31/23.
//  Copyright © 2023 elsayed mansour mahfouz. All rights reserved.
//

import Foundation
class NetworkManager : ObservableObject {
  @Published var posts = [Post]()

func fetchData(){
    if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page#"){
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { (data, urlResponse, error) in
            if error == nil{
                let decoder = JSONDecoder()
                if let safeData = data{
                    do{
             let results = try decoder.decode( Results.self, from: safeData)
                        DispatchQueue.main.async {
                            self.posts = results.hits
                        }
                        
                    } catch{
                        print(error)
                    }
                }
            }
        }
        task.resume()
    }
    
}

}
