//
//  WebView.swift
//  HackerNews
//
//  Created by jaeseung han on 2022/05/03.
//

import Foundation
import SwiftUI
import WebKit

struct WebView : UIViewRepresentable {
    
    var url : String
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url = URL(string: self.url) else {
            return
        }
        
        let request = URLRequest(url: url)
        uiView.load(request)
    }
    
    func makeUIView(context: Context) -> WKWebView{
        guard let url = URL(string: self.url) else {
            return WKWebView.pageNotFoundView()
        }
        
        let request = URLRequest(url: url)
        
        let wkWebView = WKWebView()
        wkWebView.load(request)
        
        return wkWebView
    }
    
}
