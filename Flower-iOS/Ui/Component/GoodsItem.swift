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
                
            }
            .frame(maxWidth: .infinity, maxHeight: 120)
            
            Divider()
                .background(.mainGreen)
        }
    }
}

#Preview {
    GoodsItem(title: "cv", pointCnt: "asdfvcx", image:  "12")
}
