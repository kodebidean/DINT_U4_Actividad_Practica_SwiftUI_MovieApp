//
//  Film.swift
//  Actividad_DINT_U4_SwiftUI
//
//  Created by José Antonio Lara Sánchez on 14/10/24.
//
//  Edited by Imanol Mugueta Unsain on 25/01/25.
//

import Foundation

// Modelo de Datos Individual (Estructura para representar una película)
struct Film: Identifiable {
    let id = UUID()
    let titulo: String
    let descripcion: String
    let cartel: String
    let duracion: String
    let anho: String
    let nacionalidad: String
    let estrellas: Int
}



