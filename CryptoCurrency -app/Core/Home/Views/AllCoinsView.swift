//
//  AllCoinsView.swift
//  CryptoCurrency -app
//
//  Created by ipeerless on 06/03/2023.
//

import SwiftUI

struct AllCoinsView: View {
    @StateObject var viewModel: HomeViewModel
    var body: some View {
        VStack(alignment: .leading ) {
            Text("All Coins")
                .font(.headline)
                .padding()
            HStack {
                Text("Coin")
                Spacer()
                Text("Prices")
                
            }.font(.caption)
                .foregroundColor(.green)
                .padding(.horizontal)
            ScrollView {
                VStack {
                    ForEach(viewModel.coins) {coin in
                        CoinRowView(coin: coin)
                    }
                }
            }
        }
    }
}

//struct AllCoinsView_Previews: PreviewProvider {
//    static var previews: some View {
//        AllCoinsView()
//    }
//}
