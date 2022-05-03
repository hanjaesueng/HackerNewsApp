//
//  HackerNewsApp.swift
//  HackerNews
//
//  Created by jaeseung han on 2022/05/03.
//

import SwiftUI

@main
struct HackerNewsApp: App {
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor(displayP3Red: 1, green: 102/255, blue: 0, alpha: 1.0)
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().barTintColor = .white
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor.white]
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.white]
    }
    var body: some Scene {
        WindowGroup {
            StoryListView()
        }
    }
}
