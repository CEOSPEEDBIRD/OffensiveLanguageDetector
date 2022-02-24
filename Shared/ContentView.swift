//
//  ContentView.swift
//  Shared
//
//  Created by Luca on 21/02/2022.
//

import SwiftUI

struct ContentView: View {
    @State var textInput = String()
    var body: some View {
        NavigationView {
            List {
                ForEach(1..<8) { Message in
                    Label("Message", systemImage: "xmark.octagon.fill")
                        .symbolRenderingMode(.multicolor)
                    Label("Message", systemImage: "checkmark.seal.fill")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.white, .green)
                }
            }.listStyle(SidebarListStyle())
                .safeAreaInset(edge: .bottom) {
                    inputBar
                }
        }
    }
    var inputBar: some View {
        HStack {
            TextField("Your Message",text: $textInput)
                .padding(2)
                .textFieldStyle(.roundedBorder)
            Button {
                
            } label: {
                Image(systemName: "paperplane.circle.fill")
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 30)
                    .padding(5)
            }
        }.padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
