//
//  Article.swift
//  WatchNews WatchKit Extension
//
//  Created by Rexford Machu on 8/12/21.
//

import Foundation
struct News : Codable{
    let status: String?
    let totalResults: Int?
    let articles: [Article]?
}
struct url : Codable{
    let next: String
    let prev: String
    let _self: String
    
    private enum CodingKeys: String, CodingKey {
        case next, prev,_self = "self"
  }
}

struct Article : Codable,Identifiable{
    let id = UUID()
    let source: Source?
    let author: String?
    let title: String?
    let description: String?
    let url : String?
    let content: String?
    let publishedAt: String?
    let urlToImage : String?
}


struct Source : Codable,Identifiable{
    let id: String?
    let name: String?
}
