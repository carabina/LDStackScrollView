//
//  ViewController.swift
//  LDStackScrollViewSample
//
//  Created by Léo Derbois on 20/02/2017.
//  Copyright © 2017 leoderbois. All rights reserved.
//

import UIKit
import LDStackScrollView
class ViewController: UIViewController {
    
    let stackScrollView = LDStackScrollView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isTranslucent = false
        ui_setup()
        addItems()
    }

    func ui_setup(){
        stackScrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackScrollView)
        stackScrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        stackScrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        stackScrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        stackScrollView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor).isActive = true

        let barBtn = UIBarButtonItem(title: "AXIS", style: .plain, target: self, action: #selector(changeAxisPressed(_:)))
        let addBarBtn = UIBarButtonItem(title: "+", style: .plain, target: self, action: #selector(addPressed(_:)))
        let removeBarBtn = UIBarButtonItem(title: "-", style: .plain, target: self, action: #selector(removePressed(_:)))

        navigationItem.rightBarButtonItem = barBtn
        navigationItem.leftBarButtonItems = [addBarBtn,removeBarBtn]
    }
    
    func addItems(){
        for _ in 0..<10{
            addItem()
        }

    }
    func addItem(animated:Bool = false){
        let isPair = stackScrollView.stackView.subviews.count % 2 == 0
        let color = isPair  ? #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1) : #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        let size : CGFloat = isPair ? 80 : 120
        let text  = isPair ? "🍳" : "🦄"

        let label = getLabel(color: color)
        let heightConstraint = label.heightAnchor.constraint(greaterThanOrEqualToConstant: size)
        heightConstraint.isActive = true
        heightConstraint.priority = 999
        let widthConstraint = label.widthAnchor.constraint(greaterThanOrEqualToConstant: size)
        widthConstraint.isActive = true
        widthConstraint.priority = 999

        label.text = text

        if animated{
            label.isHidden = true
            self.stackScrollView.stackView.insertArrangedSubview(label, at: 0)
            UIView.animate(withDuration: 0.3, animations: {
  
                label.isHidden = false

 
            })
        } else {
            stackScrollView.stackView.addArrangedSubview(label)
        }
    }
    
    func removeFirstItem(){
        if let firstView = stackScrollView.stackView.arrangedSubviews.first{
            UIView.animate(withDuration: 0.3, animations: {
                firstView.isHidden = true
            }, completion: { (finish) in
                if finish {
                    self.stackScrollView.stackView.removeArrangedSubview(firstView)
                }
            })
        }
    }
    func getLabel(color:UIColor)->UILabel{
        let label = UILabel()
        label.backgroundColor = color
        label.textAlignment = .center
        return label
    }
    
    func changeAxisPressed(_ sender:UIButton){
        stackScrollView.stackView.axis = stackScrollView.stackView.axis == .vertical ? .horizontal : .vertical
    }
    func addPressed(_ sender:UIButton){
        addItem(animated: true)
    }
    func removePressed(_ sender:UIButton){
        removeFirstItem()
    }
    
    
}

