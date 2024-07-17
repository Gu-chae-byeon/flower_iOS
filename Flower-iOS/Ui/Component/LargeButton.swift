//
//  LargeButton.swift
//  Flower-iOS
//
//  Created by dgsw8th38 on 7/17/24.
//

import SwiftUI

struct LargeButton: View {
    
    let title: String
    let isSecondary: Bool
    let action: () -> Void
    
    init(
        _ title: String,
        isSecondary: Bool = false,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.isSecondary = isSecondary
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 18, weight: .semibold))
                .padding(.vertical, 17)
                .frame(maxWidth: .infinity)
                .foregroundStyle(!isSecondary ? Color.black : Color.gray)
                .background(!isSecondary ? Color.flowerGreen : Color.clear)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .background {
                    if isSecondary {
                        RoundedRectangle(cornerRadius: 12)
                            .strokeBorder(Color.gray, lineWidth: 1)
                    }
                }
        }
    }
}

#Preview {
    VStack {
        LargeButton("Hello") {
            
        }
        LargeButton("Hello", isSecondary: true) {
            
        }
    }
}
