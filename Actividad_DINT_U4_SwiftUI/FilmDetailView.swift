//
//  FilmDetailView.swift
//  Actividad_DINT_U4_SwiftUI
//
//  Created by Imanol Mugueta Unsain on 1/25/25.
//

import SwiftUI

// Vista para los Detalles de la película
struct FilmDetailView: View {
    let film:Film
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Image(film.cartel)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .shadow(radius: 5)
                
                Text(film.titulo)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("redCarpet"))
                    .multilineTextAlignment(.center)
                
                Text("Sinopsis:")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("gold"))
                
                Text(film.descripcion)
                    .foregroundColor(Color("gold"))
                    .lineLimit(nil)
                    
            }
            .padding(32)
        }
        .navigationTitle("Detalle")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FilmDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FilmDetailView(film: Film(titulo: "Cadena perpetua", descripcion: "Dos hombres encarcelados establecen una fuerte amistad a lo largo de los años, encontrando consuelo y redención eventual a través de actos de decencia común.", cartel: "cadena_perpetua", duracion:"142", anho: "1994", nacionalidad: "Estados Unidos",estrellas: 5))
    }
}
