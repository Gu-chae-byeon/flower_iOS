//
//  FlowExtensions.swift
//  Flower-iOS
//
//  Created by dgsw8th38 on 7/17/24.
//

import SwiftUI
import FlowKit

@propertyWrapper
public struct Flow: DynamicProperty {
    
    @EnvironmentObject private var object: FlowProvider
    
    public var wrappedValue: FlowProvider {
        object
    }
    
    public init() { }
}

public struct FlowPreview<C: View>: View {
    
    private let content: () -> C
    
    public init(@ViewBuilder content: @escaping () -> C) {
        self.content = content
    }
    
    public var body: some View {
        FlowPresenter(rootView: content())
            .ignoresSafeArea()
    }
}

extension UINavigationController: ObservableObject, UIGestureRecognizerDelegate {
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.isHidden = true
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
