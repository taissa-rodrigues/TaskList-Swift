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
        "Curso 18h"
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
        .navigationTitle("Tarefas do dia")
        .navigationBarItems(
            leading: EditButton(),
            trailing: Button(action: {
                isAddViewPresented = true
            }) {
                Image(systemName: "plus")
            }
        )
    }
        
}

struct AddView: View {
    @Binding var items: [String]
    @State private var newItem = ""
    
    var body: some View {
        VStack {
            TextField("Nova tarefa", text: $newItem)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                items.append(newItem)
                newItem = ""
            }) {
                Text("Adicionar")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}

