//
//  StackScrollView.swift
//  Pods
//
//  Created by Léo Derbois on 20/02/2017.
//
//

import UIKit

@available(iOS 9.0, *)
public class LDStackScrollView: UIView {
    let scrollView = UIScrollView()
    public let stackView = UIStackView()
    
    lazy var constraintLayoutHeight : NSLayoutConstraint = {
         return self.stackView.heightAnchor.constraint(equalTo: self.scrollView.heightAnchor)
    }()
    lazy var constraintLayoutWidth : NSLayoutConstraint = {
        return self.stackView.widthAnchor.constraint(equalTo: self.scrollView.widthAnchor)
    }()
    
    public var axis : UILayoutConstraintAxis = .vertical {
        didSet{
            updateAxisConstraint()

            layoutIfNeeded()
            stackView.axis = axis

        }
    }
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        ui_setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        ui_setup()
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        
    }
    public init(axis:UILayoutConstraintAxis = .vertical) {
        self.axis = axis
        super.init(frame: CGRect.zero)

    }

}
@available(iOS 9.0, *)
extension LDStackScrollView {
    func ui_setup(){
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(scrollView)
        scrollView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
        scrollView.bounces = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stackView)
        
        stackView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        stackView.leftAnchor.constraint(equalTo: scrollView.leftAnchor).isActive = true
        stackView.rightAnchor.constraint(equalTo: scrollView.rightAnchor).isActive = true
        
        stackView.axis = axis
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        stackView.spacing = 8
        updateAxisConstraint()
        
    }
    
    func updateAxisConstraint(){
        
        constraintLayoutWidth.isActive = axis == .vertical
        constraintLayoutHeight.isActive = axis == .horizontal
    }
}
