//
//  GoodsItem.swift
//  Flower-iOS
//
//  Created by dgsw8th38 on 7/17/24.
//

import SwiftUI

struct GoodsItem: View {
    let title: String
    let pointCnt: String
    let image: String
    
    init(title: String, pointCnt: String, image: String) {
        self.title = title
        self.pointCnt = pointCnt
        self.image = image
    }
    
    var body: some View {
        VStack(spacing:0) {
            HStack{
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .padding(.leading, 10)
                Spacer()
                    .frame(width: 20)
                VStack{
                    Text(title)
                        .font(.system(size: 14, weight: .semibold))
                        .padding(.top, 18)
                    Spacer()
                }
                Spacer()
                VStack{
                    Spacer()
                    HStack{
                        Image("leaf-green-icon 1")
                        Text("X 3")
                    }
                    .frame(width: 68, height: 38)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(RoundedRectangle(cornerRadius: 12)
                        .strokeBorder(Color.mainGreen, lineWidth: 1))
                    .padding(.trailing, 12)
                    .padding(.bottom, 10)
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: 120)
            
            Divider()
                .background(.mainGreen)
        }
    }
}

#Preview {
    GoodsItem(title: "햄버거 교환권", pointCnt: "5", image:  "12")
}
