//
//  ContentView.swift
//  WatchNews WatchKit Extension
//
//  Created by Rexford Machu on 8/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            Text("Wrist News")
                .fontWeight(.bold)
                .padding()
                .font(.title2)
            
            Text("Daily News delivered on your wrist ")
                .fontWeight(.thin)
            
            Spacer()
            NavigationLink(
                destination: ArticlesView(),
                label: {
                    Text("Read News")
                })
               
            }

        }
        
        
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
