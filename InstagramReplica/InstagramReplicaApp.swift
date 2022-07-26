//
//  InstagramReplicaApp.swift
//  InstagramReplica
//
//  Created by Надежда on 2022-07-25.
//

import SwiftUI

@main
struct InstagramReplicaApp: App {
    var body: some Scene {
        WindowGroup {

            TabView {
                FeedView()
                    .tabItem {
                        Image(systemName: "house")
                            .padding(4)
                    }
                
                ContentView()
                    .tabItem {
                        Image(systemName: "person")
                            .padding(4)
                    }
            }
        }
    }
}
