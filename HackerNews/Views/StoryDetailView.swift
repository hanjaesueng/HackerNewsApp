//
//  StoryDetailView.swift
//  HackerNews
//
//  Created by jaeseung han on 2022/05/03.
//

import SwiftUI

struct StoryDetailView: View {
    
    
    @ObservedObject private var storyDetailVM : StoryDetailViewModel
    var storyId : Int
    init(storyId : Int){
        self.storyId = storyId
        storyDetailVM = StoryDetailViewModel()
    }
    
    var body: some View {
        VStack {
            Text(storyDetailVM.title)
            WebView(url: storyDetailVM.url)
            
        }.navigationTitle(Text("Detail View"))
            .onAppear{
                self.storyDetailVM.fetchStoryDetails(storyId: self.storyId)
            }
    }
}

struct StoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StoryDetailView(storyId: 8863)
    }
}
