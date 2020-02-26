//
//  ContentView.swift
//  swiftUIPlayGround
//
//  Created by Amar Bank on 20/02/20.
//  Copyright © 2020 Amar Bank. All rights reserved.
//

import SwiftUI

struct CardLoan: View {
    @State var show : Bool = false
    var body: some View {
        VStack {
            VStack() {
                Text("Learning SwiftUi")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.red)
                    .padding(4)
                    .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0.5))
                
                Image("test")
                    .frame(width: show ? 414 : 300, height: show ? 600 : 300)
                    .clipped()
                    .cornerRadius(show ? 0 : 30)
                    .shadow(radius: 30)
                    .blur(radius: show ? 0 : 30)
                    .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0.5))
                
                
                Text("Hellow Mellow")
                    .font(.subheadline)
                    .fontWeight(.light)
                    .foregroundColor(Color.gray)
                    .scaleEffect(show ? 2 : 1)
                    .padding(4)
                    .animation(.spring(response: 0.5, dampingFraction: 0.5 , blendDuration: 0.5))
                    
            }
            Button(action: {
                withAnimation{
                    self.show.toggle()
                }
            }) {
                Text("Animate ")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack(alignment: .topTrailing){
            CardLoan()
        }.frame(minWidth: 0, maxWidth: .infinity)
    }
}

