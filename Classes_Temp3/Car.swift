//
//  Car.swift
//  Classes_Temp3
//
//  Created by Fausto Checa on 11/4/18.
//  Copyright © 2018 Fausto Checa. All rights reserved.
//

import UIKit

struct Car {
    var brandModel: String   
    var broken: Bool = false
    var velocidadAl80pc: Double
    var puntuacion: Int = 0

    
    init (brandModel: String, velocidadAl80pc: Double) {
        self.brandModel = brandModel
        self.velocidadAl80pc = velocidadAl80pc
    }
    
}

