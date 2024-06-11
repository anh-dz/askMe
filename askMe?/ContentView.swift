//
//  ContentView.swift
//  askMe?
//
//  Created by Alex on 6/11/24.
//

import SwiftUI
import WebKit

struct GifImage: UIViewRepresentable {
    private let name: String
    
//initialize a name
    init(_ name: String){
        self.name = name
    }
   
    func makeUIView(context: Context) -> some WKWebView {
        let webView = WKWebView()
        
        let url = Bundle.main.url(forResource: name, withExtension: "gif")!
       
        let data = try! Data(contentsOf: url)
       
        webView.load(
            data,
            mimeType: "image/gif",
            characterEncodingName: "UTF-8",
            baseURL: url.deletingLastPathComponent()
        )
 
        webView.scrollView.isScrollEnabled = false
        
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.reload()
    }
}

struct ContentView: View {
    @State private var hacked = false
    @State private var yessir = false
    
    var body: some View {
        if !hacked && !yessir {
            VStack {
                Text("Do you love me?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                GifImage("shycat")
                    .frame(width: 300, height: 300)
                HStack(spacing: 20) {
                    Button(action: {
                        print("Yes button tapped")
                        yessir = true
                    }) {
                        Text("❤️ Yes")
                            .font(.title)
                            .padding()
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()

                    Button(action: {
                        print("No button tapped")
                        hacked = true
                    }) {
                        Text("💔 No")
                            .font(.title)
                            .padding()
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                }
                
            }
        }
        else if hacked {
            hackedView()
        }
        else {
            sheSaidYesView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
