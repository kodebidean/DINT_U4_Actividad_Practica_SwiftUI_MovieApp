//
//  FilmDetailView.swift
//  Actividad_DINT_U4_SwiftUI
//
//  Created by Imanol Mugueta Unsain on 25/01/25.
//

import SwiftUI

// Vista para los Detalles de la película
struct FilmDetailView: View {
    let film:Film
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 16) {
                // Portada
                Image(film.cartel)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 400)
                    .clipped()
                    .border(Color.gold)
                    .cornerRadius(20)
                
                // Título
                VStack(alignment: .leading, spacing: 4) {
                    Text(film.titulo)
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                    
                    // Año y estrellas
                    HStack {
                        Text("\(film.anho)")
                            .font(.subheadline)
                            .foregroundColor(Color("Gray"))
                            .bold()
                        
                        Spacer()
                        
                        HStack {
                            ForEach(0..<film.estrellas, id: \.self) { _ in
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                            }
                            ForEach(film.estrellas..<5, id: \.self) { _ in
                                Image(systemName: "star")
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
                VStack(alignment: .leading, spacing: 6){
                    // Descripción
                    Text("Descripción")
                        .padding(.top)
                        .font(.headline)
                        .foregroundColor(Color("gold"))
                    Text(film.descripcion)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                }
                // Duración y Nacionalidad
                HStack {
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Duración")
                            .padding(.top)
                            .font(.caption)
                            .bold()
                            .foregroundColor(Color("gold"))
                        Text("\(film.duracion) min")
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                        
                    
                    .frame(maxWidth: .infinity)
                    
                    VStack(alignment: .leading, spacing: 2)  {
                        Text("Nacionalidad")
                            .padding(.top)
                            .font(.caption)
                            .bold()
                            .foregroundColor(Color("gold"))
                        Text(film.nacionalidad)
                            
                            .foregroundColor(.white)
                            .font(.headline)
                    }
                    .frame(maxWidth: .infinity)
                }
                .padding(.vertical, 10)
                
                Spacer()
            }
            .padding(.horizontal)
            
        }
        .background(Color("redCarpet").edgesIgnoringSafeArea(.all))
    }
}

struct FilmDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FilmDetailView(film: Film(
            titulo: "La lista de Schindler",
            descripcion: "En la Polonia ocupada por los alemanes durante la Segunda Guerra Mundial, Oskar Schindler se preocupa gradualmente por su fuerza laboral judía después de presenciar su persecución por parte de los nazis.",
            cartel: "la_lista_de_schindler",
            duracion: "195",
            anho: "1993",
            nacionalidad: "Estados Unidos",
            estrellas: 5
        ))
    }
}
