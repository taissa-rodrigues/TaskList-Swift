//
//  SmallAddButton.swift
//  Tasks.swift
//
//  Created by User on 26/09/23.
//

import SwiftUI

struct SmallAddButton: View {
    var body: some View {
        ZStack {
            Circle ()
                .frame(width: 50)
                .foregroundColor(Color(.green))
                
            Text ("+")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.white)
        }
        
    }
}

struct SmallAddButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallAddButton()
    }
}
