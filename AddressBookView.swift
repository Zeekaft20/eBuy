//
//  AddressBookView.swift
//  eBuy
//
//  Created by mac on 03/08/2024.
//

import SwiftUI

struct AddressBookView: View {
    @State private var addresses: [String] = []

    var body: some View {
        VStack {
            if addresses.isEmpty {
                VStack {
                    Image(systemName: "book") // Placeholder for notebook image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .padding()
                    Text("You have not added any address yet!")
                        .font(.headline)
                        .padding(.bottom, 10)
                    Text("Add your shipping addresses here for a fast purchase experience! You will be able to add, modify or delete them at any time.")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .padding(.bottom, 20)
                    Button(action: {
                        // Handle add new address action
                    }) {
                        Text("ADD NEW ADDRESS")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
            } else {
                List {
                    ForEach(addresses, id: \.self) { address in
                        Text(address)
                    }
                    .onDelete(perform: deleteAddress)
                }
            }
        }
        .navigationTitle("Address Book")
    }

    private func deleteAddress(at offsets: IndexSet) {
        addresses.remove(atOffsets: offsets)
    }
}

struct AddressBookView_Previews: PreviewProvider {
    static var previews: some View {
        AddressBookView()
    }
}
