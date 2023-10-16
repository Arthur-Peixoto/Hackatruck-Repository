//
//  ContentView.swift
//  Vasco
//
//  Created by Student04 on 09/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    @State var showingAlert = false
    var body: some View {
        ZStack {
            Image("vish")
                .resizable()
                .opacity(0.2)
                .scaledToFill()
                .ignoresSafeArea()
                .blur(radius:0.5)
                .saturation(0.5)
            VStack{
                Text("Olá, Bem vindo, \(name)!")
                TextField("Insira seu nome:", text:$name).multilineTextAlignment(.center)
                Spacer()
                Image("palmeiras")
                    .resizable()
                    .scaledToFill()
                    .frame(width:120, height:120)
                Image("curintia")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100,height: 100)
                Spacer()
                Button("Entrar") {
                    showingAlert = true
                }
                .alert(isPresented:$showingAlert) {
                    Alert(
                        title: Text("Você irá iniciar o projeto agora?"),
                        dismissButton: .default(Text("EITAAAAA"))
                    )
                }
            }
        }
      }
    }
           



struct viewMaisAcima: View {
    var body: some View {
        VStack {
            Image("vish").resizable().scaledToFit()
            Spacer()
            ZStack{
                Image("vish").resizable().scaledToFit().clipShape(Circle())
                Text("Hackatruck").foregroundColor(.blue).font(.title).frame(
                    maxWidth: 150,
                    maxHeight: 200,
                    alignment: .leading)
            }
            Spacer()
            HStack{
                Text("Maker").foregroundColor(.yellow).font(.title)
                Text("Space").foregroundColor(.red).font(.title)
            }.frame(width: 240 ,height: 120).background(Color.black)
        }
    }
}

struct viewMaisEmbaixo: View {
    var body: some View {
        VStack {
            Image("vish").resizable().scaledToFit()
            Text("HackaTruck").foregroundColor(.blue).fontWeight(.bold).font(.title)
            HStack{
                Text("Maker").foregroundColor(.yellow).fontWeight(.bold).font(.title3)
                Text("Space").foregroundColor(.red).fontWeight(.bold).font(.title3)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            ContentView()
        }
    }
}
