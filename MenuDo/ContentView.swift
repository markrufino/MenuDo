//
//  ContentView.swift
//  MenuDo
//
//  Created by Mark on 3/7/21.
//

import SwiftUI
import WebKit

struct WebView: NSViewRepresentable {

    let view: WKWebView = WKWebView()
    let urlString = "https://markrufino.github.io/#/"

    var request: URLRequest {
        get{
            let url: URL = URL(string: urlString)!
            let request: URLRequest = URLRequest(url: url)
            return request
        }
    }

    func makeNSView(context: Context) -> WKWebView {
        view.load(request)
        return view
    }

    func updateNSView(_ view: WKWebView, context: Context) {
    }

}

struct ContentView: View {

    var body: some View {
        GeometryReader { g in
            ScrollView {
                WebView()
                .frame(height: g.size.height)
            }.frame(height: g.size.height)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
