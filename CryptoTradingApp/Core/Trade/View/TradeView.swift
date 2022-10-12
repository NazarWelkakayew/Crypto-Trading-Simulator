//
//  TradeView.swift
//  CryptoTradingApp
//
//  Created by Belli's MacBook on 12/10/2022.
//

import SwiftUI

struct TradeView: View {
    @StateObject private var vm_tradeview = VM_TradeView()
    
    var body: some View {
        VStack{
            headerTradeTypeView
            
            selectCoinView()
            
            coinName()
            
            liveMarketSimulator()

                

            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
      //  .padding(.horizontal, 10)

    }
    
}

struct TradeView_Previews: PreviewProvider {
    static var previews: some View {
        TradeView()
    }
}


extension TradeView{
    //MARK: top header, spot trading
    @ViewBuilder private var headerTradeTypeView: some View{
        ZStack(alignment: .bottom){
            Color.gray.opacity(0.2)
            Text("Spot")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .font(.system(size: 17, weight: .bold))
            
        }
        .frame(height: 80)
        .frame(width: UIScreen.main.bounds.width)
    }
    
    //MARK: select coin view
    @ViewBuilder private func selectCoinView()-> some View{
        HStack{
            Image(systemName: "list.triangle")
                .font(.system(size: 20, weight: .medium))

            
            Button {
                vm_tradeview.showCoinList = true
            } label: {
                Text("BTC/USDT")
                    .font(.system(size: 20, weight: .medium))
                    .foregroundColor(.black)

            }
            
            Text("+23%")
                .foregroundColor(.green)
                .font(.subheadline)
            
            
            Spacer()
            
            
            //fake buttons
            HStack{
                ZStack{
                    Color.gray.opacity(0.2)
                    Text("200x")
                        .font(.caption)
                }
                .frame(width: 40, height: 20)
                
                Image(systemName: "chart.line.uptrend.xyaxis")
                    .font(.subheadline)
                
                Image(systemName: "ellipsis")
                    .font(.subheadline)
            }
            

        }
        .padding(.horizontal, 10)
    }
    
    //MARK: coin name
    @ViewBuilder private func coinName()-> some View{
        VStack{
            Text("2342.24")
                .foregroundColor(.green)
                .font(.system(size: 25, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top)
                .padding(.leading, 10)
        }

    }
    
    
    //MARK: active market simulator
    @ViewBuilder private func liveMarketSimulator()-> some View{
        VStack{
            HStack(spacing: 0){
                HStack{
                    VStack(alignment: .leading, spacing: 3){
                        
                        Text("Buy")
                            .foregroundColor(.gray)
                        
                        ForEach(1..<6){i in
                            Text("\(i)")
                                .foregroundColor(.gray)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 3){
                        
                        Text("Amount")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        ForEach(1..<6){_ in
                            Text("\(Float.random(in: 0..<2))")
                                .frame(alignment: .leading)
                        }
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .trailing, spacing: 3){

                        Text("Price")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        ForEach(1..<6){_ in
                            let random = String(format: "%.2f", Double.random(in: 19200..<20000)) //Double.random(in: 19200..<20000)

                            Text(random)
                                .frame(alignment: .leading)
                        }
                    }
                }
                .font(.caption)
                .foregroundColor(.black.opacity(0.5))
                .padding(10)
                .background(.green.opacity(0.15))
                
                
                                        
                
                HStack{
                    VStack(alignment: .leading, spacing: 3){

                        Text("Price")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        ForEach(1..<6){_ in
                            let random = String(format: "%.2f", Double.random(in: 19200..<20000)) //Double.random(in: 19200..<20000)

                            Text(random)
                                .frame(alignment: .leading)
                        }
                    }

                    

                    
                    VStack(alignment: .trailing, spacing: 3){
                        
                        Text("Amount")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        ForEach(1..<6){_ in
                            Text("\(Float.random(in: 0..<2))")
                                .frame(alignment: .leading)
                        }
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .trailing, spacing: 2){
                        
                        Text("Sell")
                            .foregroundColor(.gray)
                        
                        ForEach(1..<6){i in
                            Text("\(i)")
                                .foregroundColor(.gray)
                        }
                    }
                }
                .font(.caption)
                .foregroundColor(.black.opacity(0.5))
                .padding(10)
                .background(.red.opacity(0.15))
            }
        }

    }
    
}
