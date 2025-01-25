//
//  FilmCardView.swift
//  Actividad_DINT_U4_SwiftUI
//
//  Created by Imanol Mugueta Unsain on 1/25/25.
//

import SwiftUI

struct FilmCardView: View {
    let film:Film
    
    var body: some View {
        VStack{
            Image(film.cartel)
                .resizable()
                .scaledToFill()
                .frame(width:150, height:200)
                .cornerRadius(10)
                .shadow(radius: 5)
            
            Text(film.titulo)
                .font(.headline)
                .foregroundColor(Color("gold"))
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.top, 5)
        }
        .frame(width:150) // Ancho total tarjeta
    }
}

struct FilmCardView_Previews: PreviewProvider {
    static var previews: some View {
        FilmCardView(film: Film(titulo: "Cadena perpetua", descripcion: "Dos hombres encarcelados establecen una fuerte amistad a lo largo de los años, encontrando consuelo y redención eventual a través de actos de decencia común.", cartel: "cadena_perpetua", duracion:"142", anho: "1994", nacionalidad: "Estados Unidos",estrellas: 5))
    }
}
