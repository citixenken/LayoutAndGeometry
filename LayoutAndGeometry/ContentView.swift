//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Ken Muyesu on 07/03/2022.
//

import SwiftUI

struct ContentView: View {
    let colors: [Color] = [.red, .orange, .yellow, .green, .blue, .indigo, .purple]
    
    var body: some View {
        //CoverFlow-style scrolling rectangles
        
        ZStack {
            Image("canyon")
                .resizable()
                .ignoresSafeArea()
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(1..<30) { num in
                        GeometryReader { geo in
                            Text("Number \(num)")
                                .font(.largeTitle)
                                .padding()
                                .background(.indigo)
                                .foregroundColor(.white)
                                .rotation3DEffect(.degrees(-geo.frame(in: .global).minX) / 8, axis: (x: 0, y: 1, z: 0))
                                .frame(width: 200, height: 200)
                        }
                        .frame(width: 200, height: 200)
                    }
                }
            }
        }
        
        
//        GeometryReader { fullView in
//            ScrollView {
//                ForEach(0..<100) { index in
//                    GeometryReader { geo in
//                        Text("Row #\(index)")
//                            .font(.largeTitle)
//                            .frame(maxWidth: .infinity)
//                            .background(colors[index % 7])
//                            .rotation3DEffect(.degrees(geo.frame(in: .global).minY - fullView.size.height / 2) / 5, axis: (x: 0, y: 1, z: 0))
//                    }
//                    .frame(height: 35)
//                }
//            }
//        }
        
        
//        VStack(alignment: .leading) {
//            ForEach(0..<10) { position in
//                Text("Number \(position)")
//                    .alignmentGuide(.leading) {_ in
//                        CGFloat(position) * +10
//
//                    }
//            }
//        }
//        .background(.red)
//        .frame(width: 400, height: 400)
//        .background(.blue)
//        VStack(alignment: .leading) {
//            Text("Hello, Mr. Robot!")
//                .alignmentGuide(.leading) { d in
//                    d[.trailing]
//                }
//            Text("Glad you could join us!")
//        }
//        .background(.red)
//        .frame(width: 400, height: 400)
//        .background(.blue)


//        Image("canyon")
//            .resizable()
//            //.scaledToFill()
//            .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
