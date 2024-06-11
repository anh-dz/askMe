//
//  sheSaidYes.swift
//  askMe?
//
//  Created by Alex on 6/11/24.
//

import SwiftUI

struct sheSaidYesView: View {
    var body: some View {
        VStack {
            Text("Let's go out tonight")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            GifImage("yes")
                .frame(width: 300, height: 300)
                .padding()
        }
    }
}

struct sheSaidYes_Previews: PreviewProvider {
    static var previews: some View {
        sheSaidYesView()
    }
}
