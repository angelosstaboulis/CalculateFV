//
//  FVViewModel.swift
//  CalculateFV
//
//  Created by Angelos Staboulis on 7/5/24.
//

import Foundation
class FVViewModel:ObservableObject{
    @Published var finalResult:[AnatokismosModel] = []
    @Published var tokos:[Double] = []
    func anatokismosArray(kefalaio:Double,epitokio:String,years:Int){
        for item in 0..<years+1{
            tokos.append(kefalaio - Helper.shared.anatokismos(kefalaio: kefalaio, epitokio: epitokio, years:item).doubleValue)
            finalResult.append(AnatokismosModel(id: UUID(), year:item,interestRate:tokos[item],price:kefalaio + abs(tokos[item])))
        }
    }
}

