//
//  ProfileView.swift
//  eBuy
//
//  Created by mac on 03/08/2024.
//

import SwiftUI
import FirebaseAuth

struct ProfileView: View {
    @EnvironmentObject var authManager: AuthManager
    @ObservedObject var userProfile: UserProfile
    //    @ObservedObject var userSession = UserSession.shared
    
    
    
    var body: some View {
        NavigationView {
            VStack {
                // Blue box with welcome message
                HStack {
                    VStack(alignment: .leading) {
                        Text("Welcome, \(userProfile.username)")
                            .font(.headline)
                            .foregroundColor(.white)
                        Text(userProfile.email)
                            .font(.subheadline)
                        .foregroundColor(.white)                    }
                }
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
                .padding(.horizontal)
                .padding(.top, 20)
                
                List {
                   
                        NavigationLink(destination: OrdersView()) {
                            Text("Orders")
                        }
                        NavigationLink(destination: InboxView()) {
                            Text("Inbox")
                        }
                        NavigationLink(destination: PendingReviewsView()) {
                            Text("Pending Reviews")
                        }
                        NavigationLink(destination: VouchersView()) {
                            Text("Vouchers")
                        }
                        NavigationLink(destination: SavedItemsView()) {
                            Text("Saved Items")
                        }
                        NavigationLink(destination: FollowedSellersView()) {
                            Text("Followed Sellers")
                        }
                        NavigationLink(destination: RecentlyViewedView()) {
                            Text("Recently Viewed")
                        }
                        
                        Section(header: Text("Account Settings")) {
                            NavigationLink(destination: AccountManagementView()) {
                                Text("Account Management")
                            }
                            NavigationLink(destination: AddressBookView()) {
                                Text("Address Book")
                            }
                            NavigationLink(destination: NewsletterView()) {
                                Text("Newsletter")
                            }
                            NavigationLink(destination: CloseAccountView()) {
                                Text("Close Account")
                            }
                            Button(action: {
                                do {
                                    try Auth.auth().signOut()
                                    authManager.isAuthenticated = false
                                } catch let signOutError as NSError {
                                    print("Error signing out: %@", signOutError)
                                }
                                // Handle logout action
                            }) {
                                Text("Logout")
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.red)
                                    .cornerRadius(8)
                            }
                            .padding()
                        }
                    }
                }
                .navigationTitle("Profile")
            }
        }
    }
    
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView(userProfile: UserProfile(username: "Zoe", email: "fashanu.tosin.3@gmail.com"))
        }
    }
    

