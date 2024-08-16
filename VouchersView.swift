//
//  VouchersView.swift
//  eBuy
//
//  Created by mac on 03/08/2024.
//

import SwiftUI

struct VouchersView: View {
    @State private var activeVouchers: [String] = []
    @State private var inactiveVouchers: [String] = []
    @EnvironmentObject var tabSelection: TabSelection
    
    var body: some View {
        VStack {
            if activeVouchers.isEmpty && inactiveVouchers.isEmpty {
                VStack {
                    Image(systemName: "gift.fill") // Placeholder for round gift voucher image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .padding()
                    Text("You currently have no available voucher")
                        .font(.headline)
                        .padding(.bottom, 10)
                    Text("All your vouchers will be displayed here")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.bottom, 20)
                    Button(action: {
                        tabSelection.selectedTab = 1 // Assuming the product tab is at index 1
                    }) {
                        Text("Continue Shopping")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
            } else {
                List {
                    Section(header: Text("Active Vouchers")) {
                        ForEach(activeVouchers, id: \.self) { voucher in
                            Text(voucher)
                        }
                    }
                    Section(header: Text("Inactive Vouchers")) {
                        ForEach(inactiveVouchers, id: \.self) { voucher in
                            Text(voucher)
                        }
                    }
                }
            }
        }
        .navigationTitle("Vouchers")
    }
}

struct VouchersView_Previews: PreviewProvider {
    static var previews: some View {
        VouchersView()
            .environmentObject(TabSelection())
    }
}
