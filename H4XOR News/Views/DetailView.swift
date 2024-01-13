//
//  DetailView.swift
//  H4XOR News
//
//  Created by elsayed mansour mahfouz on 1/1/24.
//  Copyright © 2024 elsayed mansour mahfouz. All rights reserved.
//

import SwiftUI
import WebKit
struct DetailView: View {
    let url : String?
    var body: some View {
     WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
