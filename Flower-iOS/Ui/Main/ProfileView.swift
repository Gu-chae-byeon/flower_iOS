//
//  Profileview.swift
//  Flower-iOS
//
//  Created by dgsw8th38 on 7/17/24.
//

import SwiftUI

struct Profileview: View {
    @Flow var flow
    @State var name: String = "zi존 짱짱맨 123"
    @State var nickName: String = "어둠의 군주 플로워"
    @State var cnt: Int = 3
    var body: some View {
        MainTopView("프로필", "d", "\(cnt)"){
            VStack{
                HStack{
                    Image("profileImage")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 64, height: 64)
                        .padding(.leading, 40)
                    Spacer()
                        .frame(width: 40)
                    VStack(alignment: .leading){
                        Text(name)
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundStyle(.black)
                        Text("# \(nickName)")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundStyle(.nameGray)
                    }
                    Spacer()
                    VStack {
                        Button(action: {
                            flow.push(EditView(nameText: $name, nickNameText: $nickName, cnt: $cnt))
                        }) {
                            Image("edit")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                                .padding(.trailing, 10)
                                .padding(.top, 6)
                        }
                        
                        Spacer()
                    }
                    
                }.frame(height: 123)
                VStack(spacing: 0){
                    Divider()
                    HStack{
                        Spacer()
                        VStack{
                            Text("16")
                                .font(.system(size: 18, weight: .semibold))
                                .padding(.bottom, 8)
                            Text("보유 포인트")
                                .font(.system(size: 12, weight: .medium))
                                .foregroundStyle(.nameGray)
                        }
                        Divider()
                            .frame(width: 140, height: 80)
                        VStack{
                            Text("7")
                                .font(.system(size: 18, weight: .semibold))
                                .padding(.bottom, 8)
                            Text("플로깅 횟수")
                                .font(.system(size: 12, weight: .medium))
                                .foregroundStyle(.nameGray)
                        }
                        Spacer()
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .background(.white)
            .padding(.top, 16)
            Spacer()
        }.background(.backGray)
    }
}

#Preview {
    FlowPreview{
        Profileview()
    }
}
