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
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func ui_setup(){
        stackScrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackScrollView)
        stackScrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        stackScrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        stackScrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        stackScrollView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor).isActive = true

        let barBtn = UIBarButtonItem(title: "AXIS", style: .plain, target: self, action: #selector(changeAxisPressed(_:)))
        navigationItem.rightBarButtonItem = barBtn

        
    }
    
    func addItems(){
        let l1 = getLabel(color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        l1.heightAnchor.constraint(greaterThanOrEqualToConstant: 70).isActive = true
        l1.widthAnchor.constraint(greaterThanOrEqualToConstant: 260).isActive = true

        stackScrollView.stackView.addArrangedSubview(l1)
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
        
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
        
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
        
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
        
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
        
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
        
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
        
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
        
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
        
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
        
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
        
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
        
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
        
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
        
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
        stackScrollView.stackView.addArrangedSubview(getLabel(color: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
        
    }
    
    func getLabel(color:UIColor)->UILabel{
        
        let label = UILabel()
        label.text = "Text"
        label.backgroundColor = color
        label.textAlignment = .center
        
        return label
        
    }
    
    func changeAxisPressed(_ sender:UIButton){
        stackScrollView.axis = stackScrollView.axis == .vertical ? .horizontal : .vertical
    }
}

