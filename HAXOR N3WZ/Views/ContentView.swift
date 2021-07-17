//
//  ContentView.swift
//  HAXOR N3WZ
//
//  Created by Abdelrahman Adel on 11/5/20.
//  Copyright © 2020 Abdelrahman Adel. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                if post.url != nil{
                    NavigationLink(destination: DetailView(url: post.url)) {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    }
                }
                else{
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                    
                }
                
                
            }
            .navigationBarTitle("HAXOR N3WZ")
        }
            
        .onAppear {
            self.networkManager.fetchData()
        }
        
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


