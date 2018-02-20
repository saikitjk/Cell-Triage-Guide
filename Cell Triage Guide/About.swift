//
//  About.swift
//  Cell Triage Guide
//
//  Created by saikitJK on 2/19/18.
//  Copyright © 2018 Tacoma Police Department. All rights reserved.
//

import UIKit

class AboutController: UIViewController{
    
    let AboutTextView: UITextView = {
        let textView = UITextView()
        textView.text = "About"
        textView.isEditable = false;
        textView.isSelectable = false;
        textView.backgroundColor = UIColor.clear
        textView.font = UIFont.systemFont(ofSize:20)
        textView.textAlignment = .center
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.contentMode = .scaleAspectFit
        return textView
    }()
    
    let AboutContentView: UITextView = {
        let textView = UITextView()
        textView.text = "This app is designed by the students of UW Tacoma students Jason Kwong, Baldeep Kang, and Pavel Martynau. \nThis app is to help aid Tacoma Police Department employees in triaging cell-phone devices and securing devices found in crime scenes.\n \nThis app provides users with a simple guided tutorials to help first responders, investigators and detectives on the proper steps of securing a cell-phone device found at crime scenes as well as how to handle devices during an on going investigation."
        textView.isEditable = false;
        textView.isSelectable = false;
        textView.backgroundColor = UIColor.clear
        textView.font = UIFont.systemFont(ofSize:22)
        textView.textAlignment = .center
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.contentMode = .scaleAspectFit

        return textView
    }()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.addSubview(AboutTextView)
        view.addSubview(AboutContentView)
        
        setupLayout()
    }
    
    private func setupLayout(){
        AboutTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        AboutTextView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        AboutTextView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        AboutTextView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        
        AboutContentView.topAnchor.constraint(equalTo: AboutTextView.bottomAnchor, constant: 10).isActive = true
        AboutContentView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        AboutContentView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        AboutContentView.heightAnchor.constraint(equalToConstant: 500).isActive = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
