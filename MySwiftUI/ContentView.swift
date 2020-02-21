//
//  ContentView.swift
//  MySwiftUI
//
//  Created by Yuangang Sheng on 21.02.20.
//  Copyright © 2020 Yuangang Sheng. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   @State var selection: Int? = nil
   
   var body: some View {
       NavigationView {
           VStack {
               NavigationLink(destination: Details(), tag: 1, selection: $selection) {
                   Button("Press me") {
                       self.selection = 1
                   }
               }
            
            Button("Button 1") {}
            .buttonStyle(ButtonStyle_FilledButton())
            
            ActionSheetView()
           }
       }
   }
}

struct Details: View {
    @Environment(\.presentationMode) var presentation

    var body: some View {
        Group {
            Text("Details")
            Button("pop back") {
                self.presentation.wrappedValue.dismiss()
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
