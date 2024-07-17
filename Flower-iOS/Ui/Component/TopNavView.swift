//
//  TopNavView.swift
//  Flower-iOS
//
//  Created by dgsw8th38 on 7/17/24.
//

import SwiftUI

struct TopNavView<C: View>: View {
    
    @Flow var flow
    @Environment(\.dismiss) var dismiss
    let title: String
    let content: () -> C
    
    init(_ title: String, @ViewBuilder content: @escaping () -> C) {
        self.title = title
        self.content = content
    }
    
    var body: some View {
        VStack(spacing: 0) {
            Button {
                dismiss()
            } label: {
                HStack(spacing: 18.29) {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 18.5)
                        .fontWeight(.medium)
                    Text(title)
                        .font(.system(size: 18, weight: .medium))
                }
                .foregroundStyle(Color(.label))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 15)
            .padding(.vertical, 11)
            content()
//                .frame(maxHeight: .infinity).background(.red)
        }
    }
}

#Preview {
    FlowPreview {
        TopNavView("로그인") {
            Text("Hi")
        }
    }
}
