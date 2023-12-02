//
//  SettingsView.swift
//  Hike
//
//  Created by Roman Tolmachev on 1.12.2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // MARK: - SECTION: HEADER
            
            Section {
                HStack {
                    Spacer()
                    
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        
                        Text("Editor's Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(colors: [.customGreenLight, .customGreenMedium, .customGreenDark], startPoint: .top, endPoint: .bottom)
                )
                .padding(.top, 8)
                
                VStack(spacing: 8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday \nFind the best day hikes in the app")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                
            }
            .listRowSeparator(.hidden)
            
            // MARK: - SECTION: ICONS
            
            // MARK: - SECTION: ABOUT
            Section(
                header: Text("ABOUT THE APP"),
                footer: HStack {
                    Spacer()
                    Text("Copyright 2023 All Rights Reserved.")
                    Spacer()
                }.padding(.vertical, 8)
            ) {
                CustomListRowView(rowLabel: "Application", rowContent: "Hike", rowIcon: "apps.iphone", rowTintColor: .blue)
                CustomListRowView(rowLabel: "Compatibility", rowContent: "iOS, iPadOS", rowIcon: "apps.iphone", rowTintColor: .red)
                CustomListRowView(rowLabel: "Technology", rowContent: "Swift", rowIcon: "swift", rowTintColor: .orange)
                CustomListRowView(rowLabel: "Version", rowContent: "1.0", rowIcon: "gear", rowTintColor: .purple)
                CustomListRowView(rowLabel: "Developer", rowContent: "Roman Tolmachev", rowIcon: "ellipsis.curlybraces", rowTintColor: .mint)
                CustomListRowView(rowLabel: "Designer", rowContent: "Robert Petras", rowIcon: "paintpalette", rowTintColor: .pink)
                CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowTintColor: .indigo, rowLinkLabel: "Credo Academy", rowLinkDestination: "https://credo.academy")
                
                
            }
        }
    }
}

#Preview {
    SettingsView()
}
