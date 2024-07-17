//
//  EditView.swift
//  Flower-iOS
//
//  Created by dgsw8th38 on 7/18/24.
//

import SwiftUI

struct EditView: View {
    @Binding var nameText: String
    @Binding var nickNameText: String
    @Binding var cnt: Int
    
    @Flow var flow
    var body: some View {
        MainTopView("수정하기", "d", "\(cnt)", backBtn: true){
            VStack{
                HStack{
                    Spacer()
                    Image("profileImage")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 64, height: 64)
                    Spacer()
                }
                VStack(alignment: .leading){
                    HStack(spacing: 4){
                        Text("*")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundStyle(.red)
                        Text("아이디")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundStyle(.black)
                    }.padding(.leading, 4)
                    
                    TextField("아이디를 입력해주세요", text: $nameText)
                        .frame(height: 48)
                        .padding(.leading, 12)
                        .background(RoundedRectangle(cornerRadius: 12)
                            .strokeBorder(Color.gray, lineWidth: 1))
                        
                }.padding(.horizontal, 20).padding(.vertical, 20)
                
                VStack(alignment: .leading){
                    HStack(spacing: 4){
                        Text("*")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundStyle(.red)
                        Text("호칭")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundStyle(.black)
                    }.padding(.leading, 4)
                    TextField("호칭를 입력해주세요", text: $nickNameText)
                        .frame(height: 48)
                        .padding(.leading, 12)
                        .background(RoundedRectangle(cornerRadius: 12)
                            .strokeBorder(Color.gray, lineWidth: 1))
                        
                    
                }.padding(.horizontal, 20)
            }
            Spacer()
            
        }
        LargeButton("완료"){
            if cnt > 0{
                flow.pop()
            }
            cnt -= 1
            if cnt < 0 { // Ensure cnt does not go below 0
                cnt = 0
            }
        }
            .padding(.horizontal, 20)
    }
}

#Preview {
    FlowPreview{
        EditView(nameText: .constant(""), nickNameText: .constant(""), cnt: .constant(4))
    }
}
