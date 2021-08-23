//
//  ContentView.swift
//  I Am Rich
//
//  Created by shm on 2021/08/23.
//

import SwiftUI

// Defining what ther user interface is going to look like and how it's going to behave
struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.systemTeal)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("I Am Rich")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                
                Image("diamond")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
            }
        }
    }
}

// How the preview should be created and how it should behave
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
