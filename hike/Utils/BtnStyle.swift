//
//  BtnStyle.swift
//  hike
//
//  Created by 이성운 on 2023/08/02.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle{
  func makeBody(configuration: Configuration) -> some View {
    configuration.label.padding(20).background(
      configuration.isPressed ? .red : .indigo).cornerRadius(40)
  }
}
