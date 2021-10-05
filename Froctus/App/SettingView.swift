//
//  SettingView.swift
//  Froctus
//
//  Created by Apple on 10/4/21.
//

import SwiftUI

struct SettingView: View {
    // MARK : - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") private var isOnboardin : Bool = false
    // MARK : - BODY
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                // MARK: - SECTION1
                GroupBox(
                    label:
                        
                        SettingsLabelView(labelName: "fructos", labelImageName: "info.circle"),
                    content:
                            {
                                Divider().padding(.vertical , 4)
                                HStack(alignment: .center, spacing: 8, content: {
                                    Image("logo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 80, height: 80)
                                        .cornerRadius(9)
                                    
                                    Text("Most fruits are naturally low in fat , sodium and calories. none have cholestrol . fruits are source of many essential  nutrients , including potassium , Dietary fiber , Vitamins and much more.")
                                        .font(.footnote)
                                    
                                })
                            })
                
                // MARK: - SECTION2
                
                GroupBox(
                    
                    label: SettingsLabelView(labelName: "Customization", labelImageName: "paintbrush"),
                 
                    content: {
                        
                        Divider().padding(.vertical , 4)
                        
                        Text("If you wish , You can restart the application by tuggle the switch in this box. That way it starts the onboarding procces and you will see the welcome screen again.")
                            .padding(.vertical)
                            .font(.footnote)
                            .frame(minHeight : 60)
                            .layoutPriority(1)
                            .multilineTextAlignment(.leading)
                        
                        Toggle (isOn: $isOnboardin, label: {
                            if isOnboardin {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        })
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground)).clipShape(RoundedRectangle(cornerRadius: 8 , style: .continuous))
                    
                    }
                
                )
                
                
                
                // MARK: - SECTION3
                
                
                GroupBox(label: SettingsLabelView(labelName: "Application", labelImageName: "apps.iphone"), content: {
        
                    SettingRowView(name: "Developer", content: "Mohammad Akbari", linkLabelText: nil, linkURL: nil)
                     
                    SettingRowView(name: "Designer", content: "Robert Petras")
                    
                    
                    SettingRowView(name: "Compatibility", content: "iOS 14", linkLabelText: nil, linkURL: nil)
                    
                    SettingRowView(name: "GitHub", linkLabelText: "@mohammadakbari1993", linkURL: "github.com/mohammadakbari1993")
                    
                    SettingRowView(name: "Linkedin", linkLabelText: "@mohammad akbari", linkURL: "www.linkedin.com/in/mohammad-akbari-3179b515b/")
                    
                    SettingRowView(name: "Instagram", linkLabelText: "@mohammadakbari152", linkURL: "www.instagram.com/mohammadakbari152/")
                  
                    SettingRowView(name: "Version", content: "1.1.0")
                    
                    
                    
                })
                
                
            }//:SCROLLVIEW
            .navigationTitle("Setting")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(trailing: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
            }))
            
            
        } //:NAVIGATIONVIEW
        
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
            .preferredColorScheme(.dark)
    }
}
