//
//  PickerView.swift
//  MySwiftUI
//
//  Created by Yuangang Sheng on 21.02.20.
//  Copyright © 2020 Yuangang Sheng. All rights reserved.
//

import SwiftUI

struct PickerView: View {
    @State private var countryIndex = 0
    
    var countries = ["US", "China", "Japan", "Germany", "Canada"]
    var body: some View {
        NavigationView{
            Form{
                Section{
                    Picker(selection: $countryIndex, label: Text("Country")){
                        ForEach(0 ..< countries.count) {
                                Text(self.countries[$0]).tag($0)
                                       }
                    }
                }
            }.navigationBarTitle(Text("Country"))
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
