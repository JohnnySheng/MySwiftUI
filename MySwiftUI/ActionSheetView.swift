//
//  ActionSheetView.swift
//  MySwiftUI
//
//  Created by Yuangang Sheng on 21.02.20.
//  Copyright © 2020 Yuangang Sheng. All rights reserved.
//

import Foundation
import SwiftUI

struct ActionSheetView: View {
    @State private var showActionSheet = false

    var body: some View {
        VStack {
            Button("Show action sheet") {
                self.showActionSheet = true
            }
        }.actionSheet(isPresented: $showActionSheet) {
            ActionSheet(
                title: Text("Actions"),
                message: Text("Available actions"),
                buttons: [
                    .cancel { print(self.showActionSheet) },
                    .default(Text("Action")),
                    .destructive(Text("Delete"))
                ]
            )
        }
    }
}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
