//
//  TabBar.swift
//  Weather App
//
//  Created by m.shirokova on 13.06.2023.
//

import SwiftUI

struct TabBar: View {
    let action: () -> Void
    
    var body: some View {
        ZStack {
            // MARK: Arc Shape
            Arc()
                .fill(Color.tabBarBackground)
                .frame(height: 88)
                .overlay {
                    Arc()
                        .stroke(Color.tabBarBorder, lineWidth: 0.5)
                }
                .ignoresSafeArea()
            
            HStack {
                Button {
                    action()
                } label: {
                 Image(systemName: "mappin.and.ellipse")
                        .frame(width: 44, height:  44)
                }
                
                Spacer()
                
                NavigationLink {
                    WeatherView()
                } label: {
                    Image(systemName: "list.star")
                           .frame(width: 44, height:  44)
                }
            }
            .font(.title2)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 20, leading: 32, bottom: 24, trailing: 32))
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(action: {})
            .preferredColorScheme(.dark)
    }
}
