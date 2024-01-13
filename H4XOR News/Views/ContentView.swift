//
//  ContentView.swift
//  H4XOR News
//
//  Created by elsayed mansour mahfouz on 12/31/23.
//  Copyright © 2023 elsayed mansour mahfouz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                       Text(post.title)
                }
               
            }
        .navigationBarTitle("H4X0R NEWS")
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

