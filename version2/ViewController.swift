//
//  ViewController.swift
//  version2
//
//  Created by Mahsa on 8/14/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    
    
    
    @IBOutlet weak var Logo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configScroll()
        configContentView()
        configLogo()
    }

    
    func configScroll(){
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = view.backgroundColor
        
        NSLayoutConstraint.activate([
                    scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant: 23),
                    scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor , constant: -23),
                    scrollView.topAnchor.constraint(equalTo: view.topAnchor , constant: 78),
                    scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor , constant: -57)
                ])

    }
    
    func configContentView(){
        contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentView)
        contentView.backgroundColor = .white
        NSLayoutConstraint.activate([
                    contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
                    contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
                    contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
                    contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
                    contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor), // Content width equal to scroll view width
                    contentView.heightAnchor.constraint(equalToConstant: 750) // Example content height
                ])
        
        contentView.clipsToBounds = true
        
        contentView.layer.cornerRadius = 40
        
        
    }
    
    func configLogo(){
           
           Logo.translatesAutoresizingMaskIntoConstraints = false
           Logo.font = UIFont(name: "Poppins-ExtraBold", size: 17)
        
        NSLayoutConstraint.activate([
        
            Logo.topAnchor.constraint(equalTo: view.topAnchor, constant: 18) ,
            Logo.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 26) 
            
        ])
        
        Logo.text = "Your Logo"
        
       }

}

