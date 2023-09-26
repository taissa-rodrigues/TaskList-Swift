//
//  ListView.swift
//  Tasks.swift
//
//  Created by User on 22/09/23.
//

import SwiftUI

struct ListView: View {
    
    @State private var isAddViewPresented = false
    @State var items: [String] = [
        "Prova Fisica 1",
        "Treino ",
        "Prova Calculo 18h"
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(items, id: \.self) { item in
                    ListRowView(title: item)
                    
                }
                .onDelete {indexSet in
                    items.remove(atOffsets: indexSet)
                }
            }
        }
            .listStyle(PlainListStyle())
            .navigationTitle("Minhas Tarefas 📝")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                    NavigationLink ("Add", destination: AddView())
                )
             
                    
                }
          
        }
        
       
        
    
    
    
    
    struct ListView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView{
                ListView()
            }
        }
    }

