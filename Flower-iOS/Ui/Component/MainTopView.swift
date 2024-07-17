//
//  MainTopView.swift
//  Flower-iOS
//
//  Created by dgsw8th38 on 7/17/24.
//

import SwiftUI

struct MainTopView<C: View>: View {
    
    @Flow var flow
    @Environment(\.dismiss) var dismiss
    let title: String
    let content: () -> C
    let image: String
    let cnt: String
    let backBtn: Bool
    
    init(_ title: String, _ image: String, _ cnt: String,backBtn: Bool = false, @ViewBuilder content: @escaping () -> C) {
        self.title = title
        self.content = content
        self.image = image
        self.cnt = cnt
        self.backBtn = backBtn
    }
    
    var body: some View {
        VStack(spacing: 0) {
            Button {
                dismiss()
            } label: {
                HStack(spacing: 18.29) {
                    if backBtn{
                        Image(systemName: "chevron.left")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 18.5)
                            .fontWeight(.medium)
                    }
                    Text(title)
                        .font(.system(size: 24, weight: .bold))
                    Spacer()
                    HStack{
                        Image(image)
                            .padding(.leading, 20)
                            .padding(.trailing, 10)
                        Divider()
                            .background(.black)
                        Spacer()
                        Text(cnt)
                            .padding(.trailing, 20)
                    }
                    .frame(width: 140, height: 40)
                    .background(RoundedRectangle(cornerRadius: 12)
                        .strokeBorder(Color.black, lineWidth: 1))
                }
                .foregroundStyle(Color(.label))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 24)
            .padding(.top, 20)
            .padding(.bottom, 24)
            .background(.white)
            content()
//                .frame(maxHeight: .infinity).background(.red)
        }
    }
}

#Preview {
    MainTopView("홈","leaf-green-icon 1","16"){
        Text("ㅁㄴㅇㄹ")
        Spacer()
    }
}
