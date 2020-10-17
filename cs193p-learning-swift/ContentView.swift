//
//  ContentView.swift
//  cs193p-learning-swift
//
//  Created by Yaroslav Smalko on 17.10.20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView()
            }
        }
        .foregroundColor(Color.orange)
        .padding()
        .font(Font.largeTitle)
    }
}

struct CardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(Color.white)
            RoundedRectangle(cornerRadius: 10.0)
                .stroke(lineWidth: 3.0)
            Text("👻")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
