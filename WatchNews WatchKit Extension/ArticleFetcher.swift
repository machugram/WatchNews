//
//  ArticleFetcher.swift
//  WatchNews WatchKit Extension
//
//  Created by Rexford Machu on 8/12/21.
//

import Foundation
import Combine

class NewsViewModel: ObservableObject {
    
    init() {
        getNews()
    }
    @Published var articles = [Article]()
    let urlString = "https://newsapi.org/v2"
    let authKey = "366c89fcec124eecbbad90236c7dd18f"
    let parameter = "top-headlines?country=us"
    
    
    private func getNews() {
        
        guard let url = URL(string: "\(urlString)/\(parameter)&apiKey=\(authKey)") else {
            return
        }
        
        print("URL : \(url)")
        NetworkManager.loadData(url: url) { articles in
            
            if let articles = articles {
                self.articles = articles
//                print(articles)
            }
//            print("articles, \(articles)")

            
        }
        
    }
    
}


class NetworkManager {
    
    static func loadData(url: URL, completion: @escaping ([Article]?) -> ()) {
        URLSession.shared.dataTask(with: url){ data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            let response = try? JSONDecoder().decode(News.self, from: data)
                DispatchQueue.main.async {
                     completion(response?.articles)

                }
            }
        .resume()
        
    }
}

