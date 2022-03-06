//
//  SettingsView.swift
//  Fructus
//
//  Created by Ferox on 2/2/22.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - Properties
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: - Section 1
                    
                    GroupBox(
                        label:
                            LabelView(label: "Fructus", image: "info.circle")
                    ){
                        Divider()
                            .padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most chers are low in fat and more chert than you think but you know, its oskols that matter the most.")
                                .font(.footnote)
                        }
                    }
                    
                    //MARK: - Section 2
                    
                    GroupBox(
                        label: LabelView(label: "Customization", image: "paintbrush")
                    ){
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish you can restart the application by toggeling the switch in this box. That way it starts the onboarding procces and you will see the onboarding screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    //MARK: - Section 3
                    
                    GroupBox (
                        label: LabelView(label: "Application", image: "apps.iphone")
                    ){
                        Divider()
                            .padding(.vertical, 4)
                        
                        SettingsRowView(label: "Developer", answer: "Ferox")
                        
                        SettingsRowView(label: "Designer", answer: "Robert Petras")
                        
                        SettingsRowView(label: "Compatibility", answer: "iOS 14")
                        
                        SettingsRowView(label: "website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        
                        SettingsRowView(label: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                        
                        SettingsRowView(label: "Version", answer: "1.2.1")
                    }
                    
                }//: VStack
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .toolbar(content: {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }

                })
                .padding()
            }//: ScrollView
        }//: NavigationView
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
