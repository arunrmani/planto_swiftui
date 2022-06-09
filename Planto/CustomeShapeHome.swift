//
//  CustomeShapeHome.swift
//  Planto
//
//  Created by Safe City Mac 001 on 08/06/2022.
//

import SwiftUI
import CoreGraphics

struct BadgeBackground: View {
    var body: some View {
        HomeBGMask()
    }
}


struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}

struct HomeBGMask: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let width: CGFloat = rect.width
            let height: CGFloat = rect.height
            path.move(
                to: CGPoint(
                    x: 0 * width,
                    y: 0 * height
                )
            )
            
            path.addLine(
                to: CGPoint(
                    x: 0.9 * width,
                    y: 0 * height)
            )
            
            path.addLine(
                to: CGPoint(
                    x: 0.9 * width,
                    y: 0.6 * height)
            )
            
            path.addQuadCurve(to: CGPoint(
                x: 0.4 * width,
                y: 1 * height), control: CGPoint(
                    x: 0.9 * width,
                    y: 1 * height))
            
            path.addQuadCurve(to: CGPoint(
                x: 0 * width,
                y: 0.9 * height), control: CGPoint(
                    x: 0.15 * width,
                    y: 0.98 * height))
            
            path.closeSubpath()
            
        }
        
        
    }
}
