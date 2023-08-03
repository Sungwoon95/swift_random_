//
//  Button.swift
//  hike
//
//  Created by 이성운 on 2023/08/02.
//

import SwiftUI

struct Btn: View {
  var body: some View {
    ZStack{
      Circle().fill(LinearGradient(colors: [.pink,.blue],
                                   startPoint: .topTrailing,
                                   endPoint: .bottomLeading))
      
      Circle().stroke(LinearGradient(colors: [.pink,.blue],
                                     startPoint: .bottomTrailing,
                                     endPoint: .topLeading)
                      ,lineWidth: 4)
      Image(systemName: "link").fontWeight(.black).font(.system(size:30)).foregroundStyle(.teal)
    }.frame(width:60, height:60)
  }
}

struct Button_Previews: PreviewProvider {
  static var previews: some View {
    Btn().previewLayout(.sizeThatFits)
      .padding()
  }
}
