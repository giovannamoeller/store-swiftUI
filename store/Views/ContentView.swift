//
//  ContentView.swift
//  store
//
//  Created by Giovanna Moeller on 24/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Navigation view acts a container for navigable views and content
        NavigationView {
            VStack {
                Spacer()
                Text("Items in Stock").font(.title)
                Spacer()
                NavigationLink(
                    destination: ItemDetailView(itemName: "Blitzwolf KB1", imageString: "kb1"),
                          label: {
                            Text("Mechanical KeyBoard").font(.title3)
                          })
                Spacer().frame(height: 20.0)
                NavigationLink(
                    destination: ItemDetailView(itemName: "Nutella", imageString: "nutella"),
                          label: {
                            Text("Nutella").font(.title3)
                          })
                Spacer()
            }// Sets a navigation title of "Gi's Store"
            .navigationTitle(Text("Gi's Store"))
            // Sets the styling of the navigation title to inline
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
