//
//  ZStackPadding.swift
//  GamesSocialNetwork
//
//  Created by Eduardo Ramirez on 28/03/22.
//

import SwiftUI

struct ZStackPadding: View {
    
    var body: some View {
        //Acomoda las vistas de atras hacia delante
        ZStack {
            //La vista de color se encuentra detras de la vista texto
            Color.yellow
            
            VStack{
                
                Text("Bienvenidos")
                    .padding(.bottom,6.0)
                
                imagenes()
                
                formu()
                    
                retos()
            
            }
            
        }.ignoresSafeArea()
        
        //Con ignoreSafeArea() nos ayuda a rellenar completamente la pantall, es decir la safeArea es auqella zona donde intereactua el usuario como la zona del reloj y hora, y la parte inferior donde esta la barra para ir a inicio
    }
}



struct imagenes: View {
    var body: some View{
        
        VStack {
            Image("itachi")
                .resizable()
                .scaledToFit()
            .frame(width: 100, height: 100, alignment: .center)
            Image("itachi")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .center)
            
            Image("itachi")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .center)
        }
        
    }
}

struct formu: View {
    
    @State var curso : String = "iOS"
    
    var body: some View{
        ZStack {
            if curso.isEmpty{
                Text("Curso").foregroundColor(Color.blue)
            }
            
            TextField("", text: $curso)
                .frame(width: 300, alignment: .leading)
                .padding(.leading,8)
        }
    }
}

struct retos: View {
    var body: some View{
        VStack{
            VStack(alignment: .trailing) {
                Text("1").border(.black)
                Text("2").border(.black)
                Text("3").border(.black)
                
                HStack(alignment: .top) {
                    Text("A")
                        .frame(width: 100, height: 100, alignment: .center)
                        .border(.black)
                    Text("B").border(.black)
                    Text("C").border(.black)
                }.background(Color.red)
            }.background(Color.blue)
            
            VStack(alignment: .trailing) {
                Text("1").border(.black)
                Text("2").border(.black)
                Text("3").border(.black)
                
                HStack(alignment: .top) {
                    Text("A")
                        .frame(width: 100, height: 100, alignment: .center)
                        .border(.black)
                    Text("B").border(.black)
                    Text("C").border(.black)
                }.background(Color.red)
            }.background(Color.blue)
        }
    }
}

struct ZStackPadding_Previews: PreviewProvider {
    static var previews: some View {
        ZStackPadding()
    }
}
