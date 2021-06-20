//
//  HomeView.swift
//  AnotherWeatherApp
//
//  Created by Hai Long Danny Thi on 2021/06/20.
//

import SwiftUI

struct HomeView: View {
   var body: some View {
      ZStack {
         
         // BACKGROUND
         GeometryReader { proxy in
            Image("sky")
               .resizable()
               .scaledToFill()
               .frame(width: proxy.size.width, height: proxy.size.height)
         }
            .edgesIgnoringSafeArea(.all)
            .blur(radius: 20)
         
         
         // MAIN SECTION
         ScrollView(.vertical, showsIndicators: false) {
            VStack {
               // WEATHER DATA
               VStack(alignment: .center, spacing: 5) {
                  Text("Osaka")
                     .font(.system(size: 35))
                     .fontWeight(.thin)
                     .foregroundColor(Color(.white))
                     .shadow(radius: 5)
                  
                  Text("25°C")
                     .font(.system(size: 45))
                     .fontWeight(.light)
                     .foregroundColor(Color(.white))
                     .shadow(radius: 5)
                  
                  Text("Cloudy")
                     .font(.callout)
                     .fontWeight(.thin)
                     .foregroundColor(Color(.systemGray5))
                     .shadow(radius: 5)
                  
                  Text("H:8° L:28°")
                     .font(.body)
                     .fontWeight(.light)
                     .foregroundColor(Color(.systemGray6))
                     .shadow(radius: 5)
               }
               
               // CARDS
               VStack(spacing: 8) {
                  ContainerView {
                     // HEADER
                     Label(title: { Text("Hourly Forecast") },
                           icon: { Image(systemName: "clock") })
                  } content: {
                     // CONTENT
                     VStack {
                        
                     }
                  }

               }
            }
            .padding(.top, 30)
            .padding([.horizontal, .bottom])
         }
         
         

      }
   }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
