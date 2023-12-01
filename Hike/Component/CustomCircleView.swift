//
//  CustomCircleView.swift
//  Hike
//
//  Created by Roman Tolmachev on 1.12.2023.
//

import SwiftUI

struct CustomCircleView: View {
    
    @State private var isAnimateGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [.colorIndigoMedium, .colorSalmonLight],
                        startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                        endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing
                    )
                )
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimateGradient.toggle()
                    }
                }
            
            MotionAnimationView()
            
        }
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
