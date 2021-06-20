//
//  ContainerView.swift
//  AnotherWeatherApp
//
//  Created by Hai Long Danny Thi on 2021/06/20.
//

import SwiftUI

struct ContainerView<Header: View, Content:View>: View {
   
   var header: Header
   var content: Content
   
   init(@ViewBuilder header: @escaping () -> Header,
        @ViewBuilder content: @escaping () -> Content) {
      self.header = header()
      self.content = content()
   }
   
   var body: some View {
      VStack(spacing: 0) {
         header
            .font(.callout)
            .lineLimit(1)
            .frame(height: 38)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
            .background(Color.primary.opacity(0.1))
            .clipShape(CustomCorner(corners: [.topLeft,.topRight], radius: 12))
         
         VStack {
            Divider()
            content
               .padding()
         }
         .background(Color.primary.opacity(0.1))
         .clipShape(CustomCorner(corners: [.bottomLeft,.bottomRight], radius: 12))
      }
         .colorScheme(.dark)
   }
}

struct ContainerView_Previews: PreviewProvider {
   static var previews: some View {
      ContentView()
   }
}
