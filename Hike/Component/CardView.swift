//
//  CardView.swift
//  Hike
//
//  Created by Roman Tolmachev on 1.12.2023.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    
    // MARK: - FUNCTIONS
    
    func randomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        
        imageNumber = randomNumber
    }
    
    var body: some View {
        // MARK: - CARD
        
        ZStack {
            CustomBackgroundView()
            
            VStack {
                // MARK: - HEADER
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
                            )
                        
                        Spacer()
                        
                        Button {
                            // ACTION: Show a Sheet
                            print("The button was pressed.")
                        } label: {
                            CustomButtonView()
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                    
                } //: HEADER
                .padding(.horizontal, 30)
                
                // MARK: - MAIN CONTENT
                
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(colors: [.colorIndigoMedium, .colorSalmonLight], startPoint: .topLeading,endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 256, height: 256)
                    
                    Image("image-\(imageNumber)")
                         .resizable()
                         .scaledToFit()
                         .animation(.default, value: imageNumber)
                }
                
                // MARK: - FOOTER
                
                Button {
                    // ACTION: Generate a random number
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom)
                        )
                        .shadow(
                            color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2
                        )
                }
                .buttonStyle(GradientButton())
                
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
