//
//  myWebPage.swift
//  ImageButtons
//
//  Created by 이용석 on 2021/06/21.
//

import SwiftUI
import WebKit

struct myWebPage: UIViewRepresentable {
    var url: String?
    //@Binding var webName: String?
    
//    init(webName: Binding<String?> = .constant("")) {
//        _webName = webName
//    }
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.url!) else {
            return WKWebView()
        }
        
        let urlRequest = URLRequest(url: url)
        let wkWebView = WKWebView()
        wkWebView.load(urlRequest)
        return wkWebView
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<myWebPage>) {
            
    }
    

}

struct myWebPage_Previews: PreviewProvider {
    static var previews: some View {
        myWebPage()
    }
}
