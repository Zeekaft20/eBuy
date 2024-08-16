//
//  NewsletterView.swift
//  eBuy
//
//  Created by mac on 03/08/2024.
//

import SwiftUI

struct NewsletterView: View {
    @State private var selectedNewsletter: NewsletterOption = .none
    @State private var agreeToPrivacyPolicy = false
    
    enum NewsletterOption: String, CaseIterable, Identifiable {
        
        case her = "Daily newsletter for her"
        case him = "Daily newsletter for him"
        case none = "I don't want to receive daily newsletter"
        
        var id: String { self.rawValue }
    }
    
    var body: some View {
        Form {
            Section(header: Text("SUBSCRIBE TO OUR COMMUNICATION")) {
                ForEach(NewsletterOption.allCases) { option in
                    HStack {
                        Text(option.rawValue)
                        Spacer()
                        if selectedNewsletter == option {
                            Image(systemName: "largecircle.fill.circle")
                                .foregroundColor(.blue)
                        } else {
                            Image(systemName: "circle")
                                .foregroundColor(.gray)
                        }
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        selectedNewsletter = option
                    }
                }
            }
            
            Section {
                Toggle(isOn: $agreeToPrivacyPolicy) {
                    Text("I agree to eBuy privacy and cookie Policy. You can unsubcribe from newsletters at any time")
                }
            }
            
            Section {
                Button(action: {
                    // Handle save action
                }) {
                    Text("SAVE")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
                
                Button(action: {
                    // Handle unsubscribe action
                    selectedNewsletter = .none
                    agreeToPrivacyPolicy = false
                }) {
                    Text("UNSUBSCRIBE FROM ALL")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.blue)
                        .cornerRadius(10)
                }
            }
        }
        .navigationTitle("Newsletter Prefrence")
    }
}

struct NewsletterView_Previews: PreviewProvider {
    static var previews: some View {
        NewsletterView()
    }
}
