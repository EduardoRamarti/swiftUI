//
//  Buttons.swift
//  GamesSocialNetwork
//
//  Created by Eduardo Ramirez on 25/03/22.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        /*Vstack es como un contenedor de vistas, las cuales tendran un orden en forma vertical, de esta manera:
            Item 1
            Item 2
            Item 3
         
         Ejemplo:
            VStack{
                Text("Hello")
                Text("Hello")
                Text("Hello")
                Text("Hello")
            }
            
         */
        VStack{
            //Diferentes formas de crear botones:
            
            //En este boton nos pide primero establecer el nombre (label) y la accion que realizara
            Button("Mi primer boton", action: {
                print("Pulse el boton")
            })
            
            //En este boton nos pide primero el lable y por medio de un closure nos permite decirle como realizar la accion
            Button("Mi segundo Boton") {
                print("Presione mi segundo boton")
            }
            
            //Este es el tipo de boton RECOMENDADO pues primero establecemos la accion que realizara y posteriormente establecemos el labal que puede ser texto o una imagen
            Button(action: {saludo()}) {
                Text("Boton con lable como argumento").foregroundColor(.white).background(Color.blue)
            }
            
        }
        
    
    
    }
    
    func saludo(){
        print("Hola desde un metodo externo")
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
