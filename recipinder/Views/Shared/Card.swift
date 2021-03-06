//
//  Card.swift
//  recipinder
//
//  Created by Taufiq Widi on 06/03/21.
//

import SwiftUI

struct Card: View {
    private var parentGeometry: GeometryProxy

    private var width: CGFloat {
        parentGeometry.size.width * 0.8
    }

    private var height: CGFloat {
        parentGeometry.size.height * 0.7
    }

    init(_ parentGeometry: GeometryProxy){
        self.parentGeometry = parentGeometry
    }

    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            GeometryReader { (containerView) in
                VStack {
                    Image("avatar")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: containerView.size.width, height: containerView.size.height * 0.86, alignment: .center).cornerRadius(10, corners:[.topLeft, .topRight])

                    VStack(alignment: .leading) {
                        Text("Taufiq Widi").font(fontTheme(type: .bold, size: 18))
                        Text("Frontend Eng.").font(fontTheme(type: .regular, size: 16)).foregroundColor(.gray)
                    }
                }
            }
        }.frame(width: width, height: height, alignment: .center).overlay(
            RoundedRectangle(cornerRadius:10).stroke(Color.gray, lineWidth: 1))
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { (geo) in
            VStack (alignment:.center) {
                Spacer()
                HStack {
                    Spacer()
                    Card(geo)
                    Spacer()
                }
                Spacer()
            }
        }
    }
}
