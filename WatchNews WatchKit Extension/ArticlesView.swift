//
//  ArticlesView.swift
//  WatchNews WatchKit Extension
//
//  Created by Rexford Machu on 8/12/21.
//

import SwiftUI

struct ArticlesView: View {
    @ObservedObject var articleModel = NewsViewModel()
    var body: some View {
        List(articleModel.articles, id:\.id){ article in
            NavigationLink(destination: ArticleDetailView(article: article),
                label: {
                    VStack{
                        Text(article.title!)
                            .font(.caption)
                            .fontWeight(.ultraLight)
                            .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    }
})
            
            //Fix Image Here
        }
        
    }

}

struct ArticlesView_Previews: PreviewProvider {
    static var previews: some View {
        ArticlesView()
    }
}
