//
//  ItemDetailView.swift
//  store
//
//  Created by Giovanna Moeller on 24/03/21.
//

import SwiftUI

struct ItemDetailView: View {
    let itemName: String
    let imageString: String
    @State var quantity: Int = Int.random(in: 1...10)
    var body: some View {
        let color = Color(red: 112/255, green: 55/255, blue: 232/255)
        VStack {
            Spacer()
            Text("\(itemName)").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
            Spacer()
            Image("\(imageString)").resizable().scaledToFit().padding()
            Text("Quantity Remaining: \(quantity)").font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
            Spacer()
            Button {
                if quantity > 0 {
                    quantity -= 1
                }
                print("Button tapped")
            } label: {
                Text("Add one to your cart").bold()
            }.padding().foregroundColor(.white).background(color).cornerRadius(12.0).shadow(radius: 10, x: 5, y:5)
            Spacer()
            // .background() runs the view below in the background (it's not a visible layer)
        }.background(
            // The navigation link is not active until the quantity is 0
            NavigationLink(destination: Text("You bought all the \(itemName)!"),
                           isActive: .constant(quantity == 0),
                           label: { EmptyView() }) // EmptyView since the user doesn't need to tap a button
            // isActive: the condition that determines if the transition should happen
          )
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(itemName: "", imageString: "")
    }
}
