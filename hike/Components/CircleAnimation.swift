//
//  CircleAnimation.swift
//  hike
//
//  Created by 이성운 on 2023/08/02.
//

import SwiftUI

struct CircleAnimation: View {
  @State private var isAnimation:Bool = false
  
  var body: some View {
    Circle().fill(
      LinearGradient(colors: [.red, .orange],
                     startPoint:
                      isAnimation ? .top: .bottom,
                     endPoint:
                      isAnimation ? .bottom: .top))
    .onAppear{
      withAnimation(.linear(duration: 20.0).repeatForever(autoreverses:true)){
        isAnimation.toggle()
      }}
    .frame(width:256,height:256)
  }
}

struct CircleAnimation_Previews: PreviewProvider {
  static var previews: some View {
    CircleAnimation()
  }
}
