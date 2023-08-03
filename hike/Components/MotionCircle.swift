//
//  MotionCircle.swift
//  hike
//
//  Created by 이성운 on 2023/08/02.
//

import SwiftUI

struct MotionCircle: View {
  @State private var random:Int = Int.random(in: 6...12)
  
  func randomCoordinate() -> CGFloat{
    return CGFloat.random(in: 0...256)
  }
  
  func randomSize() -> CGFloat{
    return CGFloat.random(in: 20...36)
  }
  var body: some View {
    ZStack{
      ForEach(0...random,id: \.self){ item in
        Circle().foregroundColor(.white).frame(width:randomSize()).opacity(0.4).position(x:randomCoordinate(),
                                                                        y:randomCoordinate()
                                                        )}
    }
  }
}

struct MotionCircle_Previews: PreviewProvider {
  static var previews: some View {
    ZStack{
      Color.teal.ignoresSafeArea()
      MotionCircle()
    }
  }
}
