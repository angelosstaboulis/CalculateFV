//
//  ContentView.swift
//  CalculateFV
//
//  Created by Angelos Staboulis on 7/5/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = FVViewModel()
    private let adaptiveColumn = [
        GridItem(.adaptive(minimum: 300))
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: adaptiveColumn, content: {
                HStack{
                    HStack{
                        Text("Year").padding(1)
                    }
                    VStack{
                        Text("Annual")
                        Text("Interest-Rate")
                    }.padding(20)
                    Text("FV")
                }.frame(width:600,height:45,alignment: .center)
                ForEach(viewModel.finalResult){result in
                    HStack{
                        Text(String(describing:result.year)).frame(width:100,height:60,alignment: .center)
                        Text(String(format:"%4.2f",result.interestRate)).frame(width:100,height:60,alignment: .center)
                        Text(String(format:"%4.2f",result.price)).frame(width:75,height:60,alignment: .center)
                        }.frame(width:600,height:60,alignment: .center)
                }
            }).frame(width:600,height:900,alignment: .center)
            .padding(315)
            
        }.onAppear(perform: {
            viewModel.anatokismosArray(kefalaio: 10000, epitokio: "10/100", years: 20)
        })
        
    }
}

#Preview {
    ContentView()
}
