//
//  AddButtonView.swift
//  Collection
//
//  Created by Frédéric Fréville on 19/12/2022.
//

import SwiftUI

struct AddButtonView: View {
    
    var text: String
    var body: some View {
        Text(text)
    }
}

struct AddButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddButtonView(text: "Test")
    }
}
