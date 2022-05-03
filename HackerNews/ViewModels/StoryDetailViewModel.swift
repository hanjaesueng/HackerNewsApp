//
//  StoryDetailViewModel.swift
//  HackerNews
//
//  Created by jaeseung han on 2022/05/03.
//

import Foundation
import Combine

class StoryDetailViewModel : ObservableObject {

    private var cancellable : AnyCancellable?
    
    @Published var story = Story.placeholder()
    
    init() {

    }
    
    func fetchStoryDetails(storyId : Int) {
        print("about to make a network request")
       
        
        self.cancellable = WebServices().getStoryById(storyId: storyId)
            .catch({ _ in Just(Story.placeholder())})
            .sink { _ in } receiveValue: { story in
                self.story = story
            }

    }
}

extension StoryDetailViewModel {
    var title : String {
        return self.story.title
    }
    
    var url : String {
        return self.story.url
    }
}
 
