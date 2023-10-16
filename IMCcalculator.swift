//
//  IMCcalculator.swift
//  Vasco
//
//  Created by Student04 on 10/10/23.
//

import SwiftUI

struct CalculatorView: View {
    @State var altura: Float = 0.0
    @State var peso: Float = 0.0
    @State var imc: Float = 0.0
    @State var corBg: String = "Color_1"
    @State var textinho: String = "normal"
    @State private var numberFormatter: NumberFormatter = {
        var nf = NumberFormatter()
        nf.numberStyle = .decimal
        return nf
    }()

    var body: some View {
        VStack {
            Text("Calculadora de IMC")
            TextField("Altura" ,value: $altura,  formatter: numberFormatter)
                .frame(width: 240,height: 5)
                .padding()
                .background(.white)
                .multilineTextAlignment(.center)
                
            TextField("Peso" ,value: $peso,  formatter: numberFormatter)
                .frame(width: 240,height: 5)
                .padding()
                .background(.white)
                .multilineTextAlignment(.center)
            Button(action: {
                imc = peso/(altura * altura)
                if(imc < 18.5){
                    print("baixo peso")
                    corBg = "Color_1"
                    textinho = "baixo peso"
                }
                else if(imc >= 18.5 && imc < 25.0){
                    print("normal")
                    corBg = "Color_2"
                    textinho = "normal"
                }
                else if(imc >= 25 && imc < 30.0){
                    print("sobrepeso")
                    corBg = "Color"
                    textinho = "sobrepeso"
                }
                else if(imc >= 30){
                    print("obesidade")
                    corBg = "Color_3"
                    textinho = "obesidade"
                }
            }) {
                Text("Calcular")
                    .padding()
                    .background(.blue)
            }
            .foregroundColor(.white)
            .background(.pink)
            .cornerRadius(10)
            Text(textinho)
            Spacer()
            Image("Image").resizable().scaledToFit()
        }.background(SwiftUI.Color(corBg))
    }
}

                                                                    
                                           
struct ContentVie_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            CalculatorView()
        }
    }
}
