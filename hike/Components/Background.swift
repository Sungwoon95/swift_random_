//
//  Background.swift
//  hike
//
//  Created by 이성운 on 2023/08/02.
//

import SwiftUI

struct Background: View {
  var body: some View {
    ZStack {
      // Depth
      // Light
      // Suface
      // Util 폴더 만든 후 컬러셋의 색상을 변수로 선언해 줌
      LinearGradient(colors: [Color.GreenMedium,.teal], startPoint: .topLeading, endPoint: .bottomTrailing).cornerRadius(24)
    }
  }
}

struct Background_Previews: PreviewProvider {
  static var previews: some View {
    Background().padding(20)
  }
}
