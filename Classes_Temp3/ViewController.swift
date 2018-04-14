//
//  ViewController.swift
//  Classes_Temp3
//
//  Created by Fausto Checa on 11/4/18.
//  Copyright © 2018 Fausto Checa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        let carBMW = Car(brandModel: "BMW", velocidadAl80pc: 250)
        let carPeugeot = Car(brandModel: "Peugeot", velocidadAl80pc: 220)
        let carRedBull = Car(brandModel: "Red Bull", velocidadAl80pc: 215)
        
        let resultados = Helper.parseResults()
        
        
        var puntosTotalesBMW = 0
        var puntosTotalesPeugeot = 0
        var puntosTotalesRedBull = 0
        
        for item in 0..<resultados.count {
            let pointsBMW = Helper.puntuacionesCarrera(carrera: resultados[item]["gp"]!, car: carBMW)
            let pointsPeugeot = Helper.puntuacionesCarrera(carrera: resultados[item]["gp"]!, car: carPeugeot)
            let pointsRedBull = Helper.puntuacionesCarrera(carrera: resultados[item]["gp"]!, car: carRedBull)
            
            puntosTotalesBMW += pointsBMW
            puntosTotalesPeugeot += pointsPeugeot
            puntosTotalesRedBull += pointsRedBull
        }
        
        print(">>>> Puntos totales BMW: \(puntosTotalesBMW)")
        print(">>>> Puntos totales Peugeot: \(puntosTotalesPeugeot)")
        print(">>>> Puntos totales RedBull: \(puntosTotalesRedBull)")
    
    }
    
    }
 
   



