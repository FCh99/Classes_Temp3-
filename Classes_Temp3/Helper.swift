//
//  Parser.swift
//  Classes_Temp3
//
//  Created by Fausto Checa on 13/4/18.
//  Copyright © 2018 Fausto Checa. All rights reserved.
//

import Foundation

class Helper {
    
    // De fichero de texto .json a Array de Diccionarios
    static func parseResults() -> [[String: String]] {
        var resultados = [[String : String]]()
        
        if let path = Bundle.main.path(forResource: "ResultadosGP", ofType: "json") {
            do {
                let data = try? Data(contentsOf: URL(fileURLWithPath: path))
                let jsonResult = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! [String: Any]
                
                let resultadosCarreras = jsonResult["resultados"] as! [[String : String]]
               resultados = resultadosCarreras
            } catch {
                print("-----> \(error.localizedDescription)")
            }
        }
        //print("\(resultados)")
        return resultados
    }
    
    
    // calcular los puntos para un coche y una carrera en la tabla de resultados
    static func puntuacionesCarrera (carrera: String, car: Car) -> Int {
        let carrerasResultados =  Helper.parseResults()
        var points = 0
        
        // recorrer carrerasResultados, si gp == carrera, leer los puntos de car
        
        for item in 0..<carrerasResultados.count {
            if carrerasResultados[item]["gp"] == carrera {
                if carrerasResultados[item]["1"] == car.brandModel {
                    points = 10
                } else if carrerasResultados[item]["2"] == car.brandModel{
                    points = 5
                } else if carrerasResultados[item]["3"] == car.brandModel {
                    points = 2
                } else {
                    points = 0
                }
            }
        }
        print("---> En la carrera de \(carrera) El coche \(car.brandModel) ha ganado \(points) puntos")
        return points
    }
    
    
}
