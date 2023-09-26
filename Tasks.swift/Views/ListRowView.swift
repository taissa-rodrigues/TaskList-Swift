//
//  ListRowView.swift
//  Tasks.swift
//
//  Created by User on 22/09/23.
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    @State private var isHeartFilled = false
    
    var body: some View {
        HStack {
            Text (title)
            Spacer()
            Image(systemName: isHeartFilled ? "heart.fill": "heart")
                .foregroundColor( isHeartFilled ? .red : .gray)
                .onTapGesture {
                    isHeartFilled.toggle ()
                }
            
            
            
        }
    }
}
    
    struct ListRowView_Previews: PreviewProvider {
        static var previews: some View {
            ListRowView(title: "this is the first title")
        }
    }
    
