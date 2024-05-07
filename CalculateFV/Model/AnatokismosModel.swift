//
//  AnatokismosModel.swift
//  CalculateFV
//
//  Created by Angelos Staboulis on 7/5/24.
//

import Foundation
struct AnatokismosModel:Identifiable{
    let id: UUID
    
    var year:Int
    var interestRate:Double
    var price:Double
}
