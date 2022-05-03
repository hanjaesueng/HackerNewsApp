//
//  Story.swift
//  HackerNews
//
//  Created by jaeseung han on 2022/05/03.
//

import Foundation

struct Story : Codable{
    let id : Int
    let title : String
    let url : String
    
}

extension Story {
    static func placeholder() -> Story {
        return Story(id: 0, title: "N/A", url: "")
    }
}
