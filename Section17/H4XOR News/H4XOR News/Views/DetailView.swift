//
//  DetailView.swift
//  H4XOR News
//
//  Created by shm on 2021/08/24.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https:www.google.com")
    }
}
