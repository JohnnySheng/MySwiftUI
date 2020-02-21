//
//  AlertView.swift
//  MySwiftUI
//
//  Created by Yuangang Sheng on 21.02.20.
//  Copyright © 2020 Yuangang Sheng. All rights reserved.
//

import SwiftUI


struct Message: Identifiable {
    let id = UUID()
    let text: String
}

struct AlertView: View {
    @State private var message: Message? = nil

    var body: some View {
        VStack {
            Button("Show alert") {
                self.message = Message(text: "Hi!")
            }
        }.alert(item: $message) { message in
            Alert(
                title: Text(message.text),
                dismissButton: .cancel()
            )
        }
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
