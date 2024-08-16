//
//  Flash Sale Section.swift
//  eBuy
//
//  Created by mac on 08/08/2024.
//

//import SwiftUI
//
//struct FlashSaleItem: Identifiable {
//    var id = UUID()
//    var imageName: String
//    var title: String
//    var price: String
//    var discount: String
//}
//
//struct FlashSaleView: View {
//    let flashSaleItems: [FlashSaleItem] = [
//        FlashSaleItem(imageName: "fan", title: "Ox Spacetek 18 Inch...", price: "₦ 19,887", discount: "-20%"),
//        FlashSaleItem(imageName: "headphones", title: "Oraimo FreePods Lit...", price: "₦ 18,900", discount: "-37%"),
//        // Add more flash sale items as needed
//    ]
//    
//    var body: some View {
//        VStack(alignment: .leading) {
//            HStack {
//                Text("Flash Sale")
//                    .font(.headline)
//                Spacer()
//                Text("SEE ALL")
//                    .font(.subheadline)
//                    .foregroundColor(.red)
//            }
//            .padding(.horizontal)
//            
//            ScrollView(.horizontal, showsIndicators: false) {
//                HStack(spacing: 20) {
//                    ForEach(flashSaleItems) { item in
//                        VStack(alignment: .leading) {
//                            Image(systemName: item.imageName)
//                                .resizable()
//                                .frame(width: 100, height: 100)
//                                .cornerRadius(8)
//                            Text(item.title)
//                                .font(.caption)
//                            HStack {
//                                Text(item.price)
//                                    .font(.caption)
//                                    .fontWeight(.bold)
//                                Spacer()
//                                Text(item.discount)
//                                    .font(.caption)
//                                    .foregroundColor(.red)
//                            }
//                        }
//                        .padding()
//                        .background(Color.white)
//                        .cornerRadius(8)
//                        .shadow(radius: 2)
//                    }
//                }
//                .padding(.horizontal)
//            }
//        }
//    }
//}
