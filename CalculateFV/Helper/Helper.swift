//
//  Helper.swift
//  CalculateFV
//
//  Created by Angelos Staboulis on 7/5/24.
//

import Foundation
class Helper{
    static let shared = Helper()
    private init(){}
    func createFormat()->NumberFormatter{
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.minimumFractionDigits = 2
        numberFormatter.maximumFractionDigits = 2
        return numberFormatter
    }
    func createFraction(epitokio:String)->(Decimal,Decimal){
        let components = epitokio.components(separatedBy: "/")
        return (createFormat().number(from: components[0])!.decimalValue, createFormat().number(from: components[1])!.decimalValue)
    }
    func anatokismos(kefalaio:Double,epitokio:String,years:Int)->NSNumber{
        return Decimal(kefalaio)*pow((1+(createFraction(epitokio: epitokio).0/createFraction(epitokio: epitokio).1)),years) as NSNumber
     
    }
}
