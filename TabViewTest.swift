//
//  IMCcalculator.swift
//  Vasco
//
//  Created by Student04 on 10/10/23.
//

import SwiftUI

struct Paginazinha: View {
    var body: some View {
            List {
                ForEach(1..<20){
                    i in Text("Item \(i)")
                }
            }
    }
}

struct Pesquisazinha: View {
    var body: some View {
        VStack {
            Text("Hello, Hackatruck!").background(.blue)
                .padding()
                .foregroundColor(.black)
                .padding()
        }
    }
}

struct Fotoszinha: View {
    
    var body: some View {
        ScrollView{
            VStack {
                ForEach(1..<20){
                    i in Image(systemName:"teddybear").padding()
                }
                
            }
        }
    }
}

struct Mensagemzinha: View {
    var body: some View {
        VStack {
            
        }
    }
}

struct Perfilzinho: View {
    var body: some View {
        VStack {
            
        }
    }
}





                                                                    
                                           
struct Paginazinha_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            TabView{
                    Paginazinha()
                    .badge(2)
                    .tabItem {
                        Label("Menu", systemImage: "list.dash")
                        
                    }
                    Pesquisazinha()
                    .tabItem{
                        Label("Search",systemImage: "magnifyingglass")
                    }
                Fotoszinha()
                .tabItem{
                    Label("Photos",systemImage: "photo.fill")
                }
                Mensagemzinha()
                .badge("!")
                .tabItem{
                    Label("Messages",systemImage: "message.fill")
                }
                
                Perfilzinho()
                .tabItem{
                    Label("Profile",systemImage: "person.circle.fill")
                }
            }
        }
    }
}
