//
//  Navigations.swift
//  GamesSocialNetwork
//
//  Created by Eduardo Ramirez on 29/03/22.
//

import SwiftUI

struct Navigations: View {
    @State var isDividerActive:Bool = false
    
    var body: some View {
        
        /*
         El NavigationView nos sirve para presentar una pila de vistas teniendo una jerarquia,es decir es una manera de navegar entre vistas en la app
         un ejemplo de ello es la opcion de ajustes en whatsapp que podemos observar:
         
            Starred Messages
            Linked Devices
            Account
            Chats
            Notificacitons
            Storage and Dta
            Help
            Tell a Friend
         
         */
        
        NavigationView {
            
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.inline/*@END_MENU_TOKEN@*/) //este modificador sirve para poder posicionar el titulo del navigation en el toolbar
                    .toolbar(content: { //para establecer el contenido del tollbar, diciendo el que agregamos un toolbaritem, su posicion en el toolbar y que vista sera(un boton en este caso)
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: {isDividerActive.toggle()}, label: {
                                Text("+")
                            })
                        }
                })
                
                /*
                 El NavigationLink va de la mano del navigationView, es decir, sirve para paritendo de un texto, imagen, boton, poder ir ahcia un enlace (una vista)
                 */
                
                NavigationLink("Navegar a la vista de TabViews", destination: TabViews()
                )
                
                //aqui le decimos que el destino sera la vista Dividers()
                //isActive espera de regreso una respuesta booleana, entonces le pasamos la varaible que en la cual guardamos y podemos modificar el valor del estatus, es decir, que como cuando toquemos el boton + cambie el estado de false a true
                //Al final nos pide que devolvamos una vista, entonces ya devolviendo una emptyView podemos regresar una vista vacia
                
                NavigationLink(
                    destination: Dividers(),
                    isActive: $isDividerActive,
                    label:  {
                        EmptyView()
                    })
            }
            
        }
    
    }
}

struct Navigations_Previews: PreviewProvider {
    static var previews: some View {
        Navigations()
    }
}
