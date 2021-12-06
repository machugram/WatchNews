//
//  ArticleDetailView.swift
//  WatchNews WatchKit Extension
//
//  Created by Rexford Machu on 8/12/21.
//

import SwiftUI

struct ArticleDetailView: View {
    var article : Article
    
    var body: some View {
        ScrollView{
          VStack(alignment: .leading){
              Text(article.title!)
            .font(.headline)
            .fixedSize(horizontal: false, vertical: true)
                        
           Text("By \(article.author!)")
            .fontWeight(.ultraLight)
                        
           Image(systemName: "star.fill")
                        
           Divider()
                        
            Text(article.content!)
            .font(.caption)
            .fontWeight(.ultraLight)
            .fixedSize(horizontal: false, vertical: true)
                        
            Text(article.url!)
            .font(.caption)
            .fontWeight(.ultraLight)
            .fixedSize(horizontal: false, vertical: true)
                        
           Divider()
                        
              Text("Published at \(article.publishedAt!)")
            .font(.caption)
            .fontWeight(.ultraLight)
            .fixedSize(horizontal: false, vertical: true)
                        
           Text("Read the full story in: \(article.url!)")
            .font(.caption)
            .fontWeight(.ultraLight)
            .fixedSize(horizontal: false, vertical: true)
            .padding(.top)
            }
          }    }
}

struct ArticleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleDetailView(article: Article(source: Source(id: "", name: ""), author: "", title: "", description: "", url: "", content: "", publishedAt: "", urlToImage: ""))
    }
}
