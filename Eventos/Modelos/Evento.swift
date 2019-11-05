//
//  Evento.swift
//  Eventos
//
//  Created by Alumno on 11/1/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation

class Evento {
    
    var nombre : String
    var fecha : String
    var urlFlyer : String
    
    var lugar : String?
    var tipoEvento : String?
    
    init(nombre : String, fecha : String, urlFlyer : String) {
        self.nombre = nombre
        self.fecha = fecha
        self.urlFlyer = urlFlyer
    }
    
    init(diccionario : NSDictionary) {
        self.nombre = ""
        self.fecha = ""
        self.urlFlyer = ""
        if let title = diccionario.value(forKey: "title") as? NSDictionary {
            if let rendered = title.value(forKey: "rendered") as? String {
                self.nombre = rendered
            }
        }
        if let acf = diccionario.value(forKey: "acf") as? NSDictionary {
            if let fefechacha = acf.value(forKey: "fefechacha") as? String {
                self.fecha = fefechacha
            }
            if let flyer = acf.value(forKey: "flyer") as? String {
                self.urlFlyer = flyer
            }
        }
    }
}
