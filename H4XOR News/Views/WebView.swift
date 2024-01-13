//
//  WebView.swift
//  H4XOR News
//
//  Created by elsayed mansour mahfouz on 1/1/24.
//  Copyright © 2024 elsayed mansour mahfouz. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit
struct WebView:UIViewRepresentable{
       let urlString :String?
    func makeUIView(context: Context) -> WebView.UIViewType {
     
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView , context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
