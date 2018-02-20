//
//  TriageGuide.swift
//  Cell Triage Guide
//
//  Created by saikitJK on 2/19/18.
//  Copyright © 2018 Tacoma Police Department. All rights reserved.
//

import UIKit

class TriageGuideController: UIViewController{
    
    let TriageGuideView: UITextView = {
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
    
    let AskingToCheckPasswordView: UITextView = {
        let textView = UITextView()
        textView.text = "If the owner of the device/ suspect is cooperating, make sure you ask for the device's password/ PIN and test it."
        textView.isEditable = false;
        textView.isSelectable = false;
        textView.backgroundColor = UIColor.clear
        textView.font = UIFont.systemFont(ofSize:20)
        textView.textAlignment = .center
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.contentMode = .scaleAspectFit
        return textView
    }()
    
    let AskingRoleTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Please Identify Your Role:"
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
        view.addSubview(TriageGuideView)
         view.addSubview(AskingToCheckPasswordView)
        view.addSubview(AskingRoleTextView)
        
        setupLayout()
    }
    
    private func setupLayout(){
        TriageGuideView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        TriageGuideView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        TriageGuideView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        TriageGuideView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        AskingToCheckPasswordView.topAnchor.constraint(equalTo: TriageGuideView.bottomAnchor, constant: 10).isActive = true
        AskingToCheckPasswordView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        AskingToCheckPasswordView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        AskingToCheckPasswordView.heightAnchor.constraint(equalToConstant: 90).isActive = true
        
        AskingRoleTextView.topAnchor.constraint(equalTo: AskingToCheckPasswordView.bottomAnchor, constant: 2).isActive = true
        AskingRoleTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        AskingRoleTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        AskingRoleTextView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
