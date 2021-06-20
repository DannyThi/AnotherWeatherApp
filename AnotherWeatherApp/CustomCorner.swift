//
//  CustomCorner.swift
//  AnotherWeatherApp
//
//  Created by Hai Long Danny Thi on 2021/06/20.
//

import SwiftUI

struct CustomCorner: Shape {
   
   var corners: UIRectCorner
   var radius: CGFloat
   
   func path(in rect: CGRect) -> Path {
      let cornerRadii = CGSize(width: radius, height: radius)
      let path = UIBezierPath(roundedRect: rect,
                              byRoundingCorners: corners,
                              cornerRadii: cornerRadii)
      return Path(path.cgPath)
   }
}
