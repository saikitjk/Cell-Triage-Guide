//
//  ViewController.swift
//  Cell Triage Guide
//
//  Created by saikitJK on 2/7/18.
//  Copyright © 2018 Tacoma Police Department. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Disclaimer
    let descriptionTextView: UITextView = {
       let textView = UITextView()
        textView.text = "Disclaimer"
        textView.isEditable = false;
        textView.isSelectable = false;
        textView.backgroundColor = UIColor.clear
        textView.font = UIFont.systemFont(ofSize:20)
        textView.textAlignment = .center
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.contentMode = .scaleAspectFit
        return textView
    }()
    //DisclaimerContent
    let descriptionContent: UITextView = {
        let textView = UITextView ()
        textView.text = "This application is to aid you in handling cell devices that are found on-scene. However, you need to follow supervisor's instruction throughout the process of handling mobile devices"
        textView.isEditable = false;
        textView.isSelectable = false;
        textView.backgroundColor = UIColor.clear
        textView.font = UIFont.systemFont(ofSize:18)
        textView.textAlignment = .center
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    //Warning
    let warningTextView: UITextView = {
       let textView = UITextView ()
        textView.text = "Warning"
        textView.isEditable = false;
        textView.isSelectable = false;
        textView.backgroundColor = UIColor.clear
        textView.font = UIFont.systemFont(ofSize:20)
        textView.textAlignment = .center
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    //WarningContent
    let warningContent: UITextView = {
        let textView = UITextView ()
        textView.text = "Outside of the phone must be forensically processed for prints or DNA before procced with anything else"
        textView.isEditable = false;
        textView.isSelectable = false;
        textView.backgroundColor = UIColor.clear
        textView.font = UIFont.systemFont(ofSize:18)
        textView.textAlignment = .center
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()

    
    
    //let acceptButton: UIButton = {
        //let button = UIButton(type: .system)
        //button.setTitle("Accept", for: .normal)
        //button.setTitleColor(.blue, for: .normal)
        //button.translatesAutoresizingMaskInto//Constraints = false
        //button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        //button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        //button.sendAction(Selector(buttonAction), to: HomeViewController(), for: .touchUpInside)
        
        //return button
        
    //}()
    
    //private let pageControll: UIPageControl ={
    //    let pc = UIPageControl()
    //    pc.currentPage = 0
    //    pc.numberOfPages = 4
    //pc.currentPageIndicatorTintColor = .red
    //pc.pageIndicatorTintColor = UIColor(red: ???/255, green: ???/255, blue: ???/255, alpha: 1)
    //    return pc
    //}()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //entry point to the app
        view.addSubview(descriptionTextView)
        view.addSubview(descriptionContent)
        view.addSubview(warningTextView)
        view.addSubview(warningContent)
        
        setupBottomControls()
        
        setupLayout()
    }
    
    @objc func buttonAction(sender: UIButton){
        print("button pressed")
        //let HomeViewController = ViewController(nibName: "ViewController", bundle: Bundle.main)
        //self.present(HomeViewController, animated: true, completion: nil)
    
    }
    
    fileprivate func setupBottomControls(){
        //view.addSubview(previousButton)
        //stackview background
        //previousButton.backgroundColor = .clear
        let rightView = UIView()
        rightView.backgroundColor = .clear
        let leftView = UIView()
        leftView.backgroundColor = .clear
        //let whiteView = UIView()
        //whiteView.backgroundColor = .clear

        //stackview setting
        let bottomControlsStackView = UIStackView(arrangedSubviews: [leftView, rightView])
        bottomControlsStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomControlsStackView.distribution = .fillEqually
        //bottomControlsStackView.axis = .vertical
        
        view.addSubview(bottomControlsStackView)
        //previousButton.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        
        NSLayoutConstraint.activate([
            //previousButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            bottomControlsStackView.topAnchor.constraint(equalTo: warningContent.bottomAnchor, constant: 20),
            bottomControlsStackView.leftAnchor.constraint(equalTo: view.leftAnchor),
            bottomControlsStackView.rightAnchor.constraint(equalTo: view.rightAnchor),
            bottomControlsStackView.heightAnchor.constraint(equalToConstant: 50),
            //acceptButton.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
    }
    
    private func setupLayout(){
    
        //descriptionTextView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        //descriptionTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //Disclaimer
        descriptionTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        descriptionTextView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        descriptionTextView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        descriptionTextView.heightAnchor.constraint(equalToConstant: 70).isActive = true
    
        //Disclaimer Content
        descriptionContent.topAnchor.constraint(equalTo: descriptionTextView.bottomAnchor, constant: 10).isActive = true
        descriptionContent.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptionContent.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionContent.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //Warning
        warningTextView.topAnchor.constraint(equalTo: descriptionContent.bottomAnchor, constant: 20).isActive = true
        warningTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        warningTextView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        warningTextView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        //WarningContent
        warningContent.topAnchor.constraint(equalTo: warningTextView.bottomAnchor, constant: 10).isActive = true
        warningContent.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        warningContent.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        warningContent.heightAnchor.constraint(equalToConstant: 150).isActive = true
        //warningContent.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    
    
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

