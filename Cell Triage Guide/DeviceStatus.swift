//
//  DeviceStatusController.swift
//  Cell Triage Guide
//
//  Created by saikitJK on 2/19/18.
//  Copyright © 2018 Tacoma Police Department. All rights reserved.
//

import UIKit

class DeviceStatusController: UIViewController{
    
    let DeviceStatusGuide: UITextView = {
        let textView = UITextView()
        textView.text = "Guide"
        textView.isEditable = false;
        textView.isSelectable = false;
        textView.backgroundColor = UIColor.clear
        textView.font = UIFont.systemFont(ofSize:20)
        textView.textAlignment = .center
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.contentMode = .scaleAspectFit
        return textView
    }()
    
    let DeviceStatusQuestion: UITextView = {
        let textView = UITextView()
        textView.text = "Is the device ON or OFF? \n(Note: If the device was not found on a violent crime scense, you do not need to follow the following steps. You can secure the device in a safe location for further investigation.)"
        textView.isEditable = false;
        textView.isSelectable = false;
        textView.backgroundColor = UIColor.clear
        textView.font = UIFont.systemFont(ofSize:20)
        textView.textAlignment = .center
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.contentMode = .scaleAspectFit
        return textView
    }()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.addSubview(DeviceStatusGuide)
        view.addSubview(DeviceStatusQuestion)
        
        setupLayout()
    }
    
    private func setupLayout(){
        DeviceStatusGuide.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        DeviceStatusGuide.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        DeviceStatusGuide.widthAnchor.constraint(equalToConstant: 120).isActive = true
        DeviceStatusGuide.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        DeviceStatusQuestion.topAnchor.constraint(equalTo: DeviceStatusGuide.bottomAnchor, constant: 10).isActive = true
        DeviceStatusQuestion.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        DeviceStatusQuestion.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        DeviceStatusQuestion.heightAnchor.constraint(equalToConstant: 190).isActive = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
