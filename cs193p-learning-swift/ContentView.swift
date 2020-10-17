//
//  ContentView.swift
//  cs193p-learning-swift
//
//  Created by Yaroslav Smalko on 17.10.20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return HStack(content: {
            return ForEach(0..<4, content: { index in
                return ZStack(content: {
                    RoundedRectangle(cornerRadius: 10.0)
                        .fill(Color.white)
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(lineWidth: 3.0)
                    Text("👻")
                })
            })
        })
        .foregroundColor(Color.orange)
        .padding()
        .font(Font.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
