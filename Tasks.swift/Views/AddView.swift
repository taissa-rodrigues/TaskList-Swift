



import SwiftUI
    struct AddView: View {
   @State var textFieldText: String = ""
       var body: some View {
       ScrollView {
           VStack{
               TextField("Digite a sua tarefa", text: $textFieldText)
                    .padding(.horizontal)                .frame(height: 55)
                    .background(Color(.gray) .opacity(0.2))
                  .cornerRadius(10)
               Button(action: {
                  
               }, label: {
                   Text("Salvar".uppercased())
                       .foregroundColor(.white)
                       .font(.headline)
                       .frame(height:45)
                       .frame(maxWidth: . infinity)
                     .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(16)
            }
            .navigationTitle("Adicione um item")
        }
    }
    struct AddView_Previes: PreviewProvider{
        static var previews: some View {
        NavigationView{
                AddView()
            }
        }
   }
