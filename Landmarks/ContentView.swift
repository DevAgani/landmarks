//
//  ContentView.swift
//  Landmarks
//
//  Created by George Nyakundi on 29/09/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            CircleImage().offset(y: -130).padding(.bottom,-130)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("John Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("park's state")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
