//
//  Images.swift
//  GamesSocialNetwork
//
//  Created by Eduardo Ramirez on 25/03/22.
//

import SwiftUI

struct Images: View {
    var body: some View {
        
        VStack{
            Text("Imagenes")
            
            //Para poder poner una imagen es necesario usar Image("nombre de la imagen")
            /*
             resizable = se utiliza para redimencionar y que la imagen entre en la pantalla
             aspectRatio = Con resizable nos pone la imagen dentro de la pantalla pero la deja a los limites, con aspectratio nos ayuda ha hacer que no se ponga hasta los limites de la pantalla
             scaledToFit = es similar al anterior sin necesidad de utilizar el (.fit) como en el anterior
             frame = con frame le vamos a dar el tamaño que queremos tanto en alto como en ancho, por pixeles y la alineacion que le vamos a dar
             
             Algunos otros modificadores:
             
             blur = para desenfocar la imagen, con mas alto es mas desenfoque
             opacity = si otra cosa esta detras de esta opacidad podremos observarla
             
             */
            
            Image("itachi").resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .center)
            
            Image("itachi").resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .center)
                .blur(radius: /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            
            Image("itachi").resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .center)
                .opacity(0.8)
            
            //aqui podemos ver que metimos una imagen como un boton
            Button(action: {print("Itachi")}) {
                Image("itachi").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100, alignment: .center)
            }
            
            //aqui traemos un icono de sistema (moon) donde la tratamos como imagen de un boton.
            //Siempre para traer un icono del sistema deberemos de usar: systemName: "nombre_del_icono"
            Button(action: {}, label: {
                Image(systemName:"moon.fill").resizable()
                    .scaledToFit()
                    .foregroundColor(.red)
                    .frame(width: 100, height: 100, alignment: .center)
            })
            
        }
    }
}

struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}
