//
//  LDStackScrollView.swift
//  Pods
//
//  Created by Léo Derbois on 20/02/2017.
//
//

import UIKit

@available(iOS 9.0, *)
public class LDStackScrollView: UIView {
    
    // MARK: - Properties
    public let scrollView = UIScrollView()
    public let stackView = UIStackView()
    lazy var constraintLayoutHeight : NSLayoutConstraint = {
         return self.stackView.heightAnchor.constraint(equalTo: self.scrollView.heightAnchor)
    }()
    lazy var constraintLayoutWidth : NSLayoutConstraint = {
        return self.stackView.widthAnchor.constraint(equalTo: self.scrollView.widthAnchor)
    }()
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        ui_setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        ui_setup()

    }
    // MARK: - Notifications
    override public func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        // handle axis change in stackview
        if keyPath == "axis"{
            updateAxisConstraint()

        }
        
    }
    // MARK: - Deinit
    deinit{
        stackView.removeObserver(self, forKeyPath: "axis")
    }

}
@available(iOS 9.0, *)
extension LDStackScrollView {
    // MARK: - setup the UI
    func ui_setup(){
                // ScrollView Setup
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(scrollView)
        scrollView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
        scrollView.bounces = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false
        
        // Stackview Setup
        stackView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stackView)
        
        stackView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        stackView.leftAnchor.constraint(equalTo: scrollView.leftAnchor).isActive = true
        stackView.rightAnchor.constraint(equalTo: scrollView.rightAnchor).isActive = true
        
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        updateAxisConstraint()

        // Add Observer for stackview axis change handle
        stackView.addObserver(self, forKeyPath: "axis", options: NSKeyValueObservingOptions.new, context: nil)

    }
    // MARK: - update constraint for axis change
    func updateAxisConstraint(){
        constraintLayoutWidth.isActive = stackView.axis == .vertical
        constraintLayoutHeight.isActive = stackView.axis == .horizontal
    }
    
}
