//
//  StoryListViewModel.swift
//  HackerNews
//
//  Created by jaeseung han on 2022/05/03.
//

import Foundation
import Combine

class StoryListViewModel : ObservableObject {
    
    @Published var stories = [StoryViewModel]()
    private var cancellable : AnyCancellable?
    
    init(){
        fetchTopStories()
    }
    
    private func fetchTopStories() {
        self.cancellable = WebServices().getAllTopStories().map { storys in
            print(storys.count)
            return storys.map {StoryViewModel(story: $0)}
        }.sink(receiveCompletion: { _ in}) { storyViewModels in
            self.stories = storyViewModels
        }
    }
}

struct StoryViewModel {
    
    let story : Story
    var id : Int {
        story.id
    }
    
    var title : String {
        story.title
    }
    var url : String {
        story.url
    }
}
