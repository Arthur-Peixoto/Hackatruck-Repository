//
//  IMCcalculator.swift
//  Vasco
//
//  Created by Student04 on 10/10/23.
//

import SwiftUI

struct Navigation: View {
    @State var showSheet = false
    
    var body: some View {
        NavigationStack{
            VStack(){
                NavigationLink(destination: Modo1()){
                    Text("Modo 1")
                }
                NavigationLink(destination: Modo2(nome: "vasco")){
                    Text("Modo 2")
                }
                Button("Modo 3",action: {
                    showSheet.toggle()
                }).sheet(isPresented: $showSheet){
                    Modo1()
                }
            }
        }
    }
}

struct Modo1: View {
    var body: some View {
        VStack(){
            Text("Vamos todos cantar de coração")
            Text("A cruz de malta é o meu pendão")
            Text("Tu tens o nome do heroíco português")
            Text("Vasco da gama, sua fama assim se fez")
        }
    }
}

struct Modo2: View {
    @State var nome: String
    var body: some View {
        VStack(){
            TextField("Eita", text: $nome)
            Text("Olá, Bem vindo, \(nome)!")
            NavigationLink(destination: Modo2Parametro(nome: $nome)){
                Text("Acessar Tela")
            }
        }
    }
}

struct Modo2Parametro: View {
    @Binding var nome: String
    var body: some View {
        VStack(){
            Text("Olá, Bem vindo, \(nome)!")
        }
    }
}



                                                                    
                                           
struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            Navigation()
        }
    }
}
