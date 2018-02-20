//
//  Glossay.swift
//  Cell Triage Guide
//
//  Created by saikitJK on 2/19/18.
//  Copyright © 2018 Tacoma Police Department. All rights reserved.
//

import UIKit

class GlossaryController: UIViewController{
    
    let GlossayTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Glossary"
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
        view.addSubview(GlossayTextView)
        
        setupLayout()
    }
    
    private func setupLayout(){
        GlossayTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        GlossayTextView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        GlossayTextView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        GlossayTextView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
