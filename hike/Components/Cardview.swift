//
//  Cardview.swift
//  hike
//
//  Created by 이성운 on 2023/08/02.
//

import SwiftUI

struct Cardview: View {
  
  @State public var imgNum:Int = 1
  @State public var ranNum:Int = 1
  
//  MARK: Random Generator
  func RanGen(){
//    다른 언어의 do-whille 문 최초 실행 후 조건이 참이면 다시 실행
    repeat{
      ranNum = Int.random(in: 1...5)
    } while ranNum == imgNum
    imgNum = ranNum
  }
  
  var body: some View {
    ZStack {
      Background()
      VStack {
        //MARK: Header
        VStack(alignment: .trailing){
          HStack{
            Button{
              print("button pressed")
            }label: {
              Btn()
            }
            Spacer()
            Text("Hike").fontWeight(.black).font(.system(
              size:60
            )).foregroundStyle(LinearGradient(colors: [.red,.teal], startPoint: .top,
              endPoint: .bottom))
          }
          Text("LLELWDMAW koko jojkmk njnjnjnjnjkn jdrtchvgjbhbhbbhb").multilineTextAlignment(.trailing)
        }.padding(.horizontal, 40)
        // MARK: Contents
        ZStack {
          CircleAnimation()
          Image("image-\(imgNum)").resizable().aspectRatio(contentMode: .fit).animation(.easeIn(duration:0.2), value: ranNum)
        }
        
        Button{
          RanGen()
        } label:{
          Text("Traveling").font(.title2).fontWeight(.heavy).foregroundColor(.white)
        }.buttonStyle(GradientButton())
//        .buttonStyle(.borderedProminent).tint(.indigo)
      }
    }
    // Card End
  }
}

struct Cardview_Previews: PreviewProvider {
  static var previews: some View {
    Cardview().padding(EdgeInsets(top: 80, leading: 16, bottom: 80, trailing: 16))
  }
}
