//
//  ViewController.swift
//  version2
//
//  Created by Mahsa on 8/14/24.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var noAccountLabel: UILabel!
    @IBOutlet weak var registerButton: UIButton!
    
    @IBOutlet weak var Logo: UILabel!
    
    @IBOutlet weak var loremLabel: UILabel!
    
    @IBOutlet weak var signInLabel: UILabel!
    
    @IBOutlet weak var goggleImage: UIImageView!
    @IBOutlet weak var signInWithGoogle: UIButton!
    @IBOutlet weak var signinGoogleStack: UIStackView!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var AppleIDButton: UIButton!
    
    
    @IBOutlet weak var enterUser: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    
    
    @IBOutlet weak var enterPass: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var forgotPassButton: UIButton!
    
    
    
    @IBOutlet weak var signInButton: UIButton!
    
    var allUsername : [String]?
    
    override func viewDidLoad() {
        
        someConstraint = signInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 76)
        
               someConstraint.isActive = true
        
        
        passwordTextField.delegate = self
        usernameTextField.delegate = self
        super.viewDidLoad()
        
        configScroll()
        configContentView()
        configLogo()
        configRegister()
        cofigSignupButton()
        configHeader()
        configSignin()
        configGoogleImage()
        configdefaultAccounts()
        confFaceBook()
        confApple()
        confUserText()

        configUserText()
        configPassText()
        configurePassText()
        configForgot()
        configSignIntButton()
        configErrorPlace()
    
                numbersError.font   = UIFont(name: "Poppins-Light", size: 9)
                upperCaseError.font = UIFont(name: "Poppins-Light", size: 9)
                spceialEror.font    = UIFont(name: "Poppins-Light", size: 9)
               
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
                    contentView.heightAnchor.constraint(equalToConstant: 741) // Example content height
                ])
        
        contentView.clipsToBounds = true
        
        contentView.layer.cornerRadius = 40
        
        
    }
    
    func configLogo(){
           
           Logo.translatesAutoresizingMaskIntoConstraints = false
          // Logo.font = UIFont(name: "Poppins-ExtraBold", size: 17)
        
        NSLayoutConstraint.activate([
        
            Logo.topAnchor.constraint(equalTo: view.topAnchor, constant: 34) ,
            Logo.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 26 )
        ])
        
        Logo.text = "Your Logo"
        Logo.font = UIFont(name: "Poppins-SemiBold", size: 18)
        Logo.textColor = UIColor(cgColor: CGColor(red: 0.7764705882352941, green: 0.3333333333333333, blue: 0.23137254901960785, alpha: 1))
        
       }
    
    func configRegister(){
           
           noAccountLabel.translatesAutoresizingMaskIntoConstraints = false
           NSLayoutConstraint.activate([
               //noAccountLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor , constant: 227) ,
               noAccountLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 47) ,
               noAccountLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -27) ,
               noAccountLabel.widthAnchor.constraint(equalToConstant: 92) ,
               noAccountLabel.heightAnchor.constraint(equalToConstant: 25)
           ])
        noAccountLabel.text = "No account?"
        noAccountLabel.font = UIFont(name: "Poppins-Regular", size: 13)
      //  noAccountLabel.adjustsFontSizeToFitWidth = true
        
        
       }
    
    func cofigSignupButton(){
            registerButton.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                registerButton.leftAnchor.constraint(equalTo: noAccountLabel.leftAnchor) ,
                registerButton.topAnchor.constraint(equalTo: noAccountLabel.bottomAnchor)
            ])
        
        registerButton.setTitle("Sign Up", for: .normal)
        registerButton.titleLabel?.font =  UIFont(name: "Poppins-Regular", size: 13)
        registerButton.setTitleColor(UIColor(cgColor: CGColor(red: 0.8431372549019608, green: 0.5450980392156862, blue: 0.19215686274509805, alpha: 1)), for: .normal)
        
        registerButton.titleLabel?.adjustsFontSizeToFitWidth = true
        
        }
    
    func configHeader(){
            let fullText = "Welcome to LOREM"
            let attributedString = NSMutableAttributedString(string: fullText)
            
            // Colors
            let firstPartColor = UIColor.black
            let secondPartColor = UIColor(cgColor: CGColor(red: 0.8431372549019608, green: 0.5450980392156862, blue: 0.19215686274509805, alpha: 1))
            
            attributedString.addAttribute(.foregroundColor, value: firstPartColor, range: NSRange(location: 0, length: 10)) // "Welcome to"
            attributedString.addAttribute(.foregroundColor, value: secondPartColor, range: NSRange(location: 11, length: 5)) // "LOREM"
    

            loremLabel.attributedText = attributedString
            
        let firstFont = UIFont(name:"Poppins-Regular" , size: 17)
        let secondPart = UIFont(name: "Poppins-SemiBold", size: 17)
        
        attributedString.addAttribute(.font, value: firstFont as Any, range: NSRange(location: 0, length: 10))
        attributedString.addAttribute(.font, value: secondPart as Any, range: NSRange(location: 11, length: 5))
        
        loremLabel.attributedText =  attributedString
        
            loremLabel.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                loremLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor , constant: 27) ,
                loremLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 138),
                loremLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 44)
            ])
            
                        
        }

    func configSignin(){
            signInLabel.translatesAutoresizingMaskIntoConstraints = false
            signInLabel.font = UIFont(name: "Poppins-Medium", size: 40)
            signInLabel.text = "Sign in"
            NSLayoutConstraint.activate([
                signInLabel.topAnchor.constraint(equalTo: loremLabel.bottomAnchor ,constant:  13) ,
                signInLabel.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 32) ,
             
            ])
            
        }
    
    func configGoogleImage(){
           goggleImage.image = UIImage(named: "google (1)")
           goggleImage.translatesAutoresizingMaskIntoConstraints = false
           NSLayoutConstraint.activate([
               goggleImage.heightAnchor.constraint(equalToConstant: 19) ,
               goggleImage.widthAnchor.constraint(equalToConstant: 18) ,
           ])
       }
    
    func configdefaultAccounts(){
            signInWithGoogle.translatesAutoresizingMaskIntoConstraints = false
            signInWithGoogle.setTitle(" Sign in with Google ", for: .normal)
            signInWithGoogle.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 12)
            //signInWithGoogle.titleLabel?.textAlignment = .center
            
            signInWithGoogle.setTitleColor(UIColor(cgColor: CGColor(red: 228, green: 0.5294117647058824, blue:0, alpha: 1)), for: .normal)
            signInWithGoogle.titleLabel?.textAlignment = .center
            
            signinGoogleStack.layoutMargins = UIEdgeInsets(top: 5 , left: 15 , bottom: 5, right: 15)
            signinGoogleStack.isLayoutMarginsRelativeArrangement = true
            
            signinGoogleStack.clipsToBounds = true
            
            signinGoogleStack.backgroundColor = UIColor(cgColor: CGColor(red: 1, green: 0.9568627450980393, blue: 0.8901960784313725, alpha: 1))
            
            signinGoogleStack.layer.cornerRadius = 9
            
            signinGoogleStack.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                signinGoogleStack.leftAnchor.constraint(equalTo: usernameTextField.leftAnchor) ,
                signinGoogleStack.topAnchor.constraint(equalTo: AppleIDButton.topAnchor) ,
                signinGoogleStack.rightAnchor.constraint(equalTo: facebookButton.leftAnchor , constant: -12) , signinGoogleStack.heightAnchor.constraint(equalToConstant: 55)
                
            ])
            
            signinGoogleStack.alignment = .center
        }
    
    func confFaceBook(){
            facebookButton.translatesAutoresizingMaskIntoConstraints = false
            
            facebookButton.layer.cornerRadius = 9
            
            facebookButton.backgroundColor = UIColor(cgColor: CGColor(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372, alpha: 1))
            
            NSLayoutConstraint.activate([
                facebookButton.widthAnchor.constraint(equalToConstant: 36.29) ,
                facebookButton.heightAnchor.constraint(equalToConstant: 55) ,
                facebookButton.leftAnchor.constraint(equalTo: signinGoogleStack.rightAnchor , constant: 12.1) ,
                facebookButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 190)
            ])
            
            facebookButton.layer.masksToBounds = true
            facebookButton.contentHorizontalAlignment = .center
        }
    
    func confApple(){
            AppleIDButton.translatesAutoresizingMaskIntoConstraints = false
            
            AppleIDButton.layer.cornerRadius = 9
            
            AppleIDButton.backgroundColor = UIColor(cgColor: CGColor(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372, alpha: 1))
            
            NSLayoutConstraint.activate([
                AppleIDButton.widthAnchor.constraint(equalToConstant: 36.29) ,
                AppleIDButton.heightAnchor.constraint(equalToConstant: 55) ,
                AppleIDButton.leftAnchor.constraint(equalTo: facebookButton.rightAnchor, constant: 12),
                AppleIDButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 190) ,
                AppleIDButton.rightAnchor.constraint(equalTo: usernameTextField.rightAnchor)
            ])
            
            AppleIDButton.layer.masksToBounds = true
            AppleIDButton.contentHorizontalAlignment = .center
            
        }
        
    
    func confUserText(){
        
        //enterUser.text = "Enter your username or email address"
            enterUser.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                enterUser.leftAnchor.constraint(equalTo: contentView.leftAnchor , constant: 32) ,
                enterUser.topAnchor.constraint(equalTo : signInWithGoogle.bottomAnchor , constant: 50) ,
                enterUser.rightAnchor.constraint(equalTo: usernameTextField.rightAnchor )
            ])
            
            enterUser.font = UIFont(name: "Poppins-Light", size: 14)
        }
    
    
    func configUserText(){
        
        
       usernameTextField.translatesAutoresizingMaskIntoConstraints = false
       
       NSLayoutConstraint.activate([
           usernameTextField.rightAnchor.constraint(equalTo: contentView.rightAnchor , constant: -32) ,
           usernameTextField.heightAnchor.constraint(equalToConstant: 57) ,
           usernameTextField.topAnchor.constraint(equalTo: enterUser.bottomAnchor , constant:16 ) ,
           usernameTextField.leftAnchor.constraint(equalTo: contentView.leftAnchor , constant: 32)
       ])
       
       usernameTextField.isSecureTextEntry = false
       
       
       let emptyView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: usernameTextField.frame.height))
       
       usernameTextField.leftView = emptyView
       usernameTextField.leftViewMode = .always
       
       
       usernameTextField.placeholder = "Username or email address"
       usernameTextField.borderStyle = .line
       usernameTextField.layer.borderColor = UIColor.gray.cgColor
       usernameTextField.layer.borderWidth = 1.0
       usernameTextField.clipsToBounds = true
       usernameTextField.layer.cornerRadius = 10
        
    }
    
    func configPassText(){
        
        enterPass.text = "Enter your Password"
            enterPass.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                enterPass.leftAnchor.constraint(equalTo: contentView.leftAnchor , constant: 32) ,
                enterPass.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor , constant: 36 ) ,
                enterPass.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 153.5)
            ])
            
            enterPass.font = UIFont(name: "Poppins-Light", size: 14)
        }
        
    func configurePassText(){
            
            let emptyView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: passwordTextField.frame.height))
            
            passwordTextField.leftView = emptyView
            passwordTextField.leftViewMode = .always
            
            passwordTextField.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                passwordTextField.heightAnchor.constraint(equalToConstant: 57) ,
                passwordTextField.topAnchor.constraint(equalTo: enterPass.bottomAnchor , constant: 16 ) ,
                passwordTextField.leftAnchor.constraint(equalTo: enterPass.leftAnchor) ,
                passwordTextField.rightAnchor.constraint(equalTo: usernameTextField.rightAnchor)
            ])
            
            passwordTextField.placeholder = "Password"
            passwordTextField.borderStyle = .line
            passwordTextField.layer.borderColor = UIColor.gray.cgColor
            passwordTextField.layer.borderWidth = 1.0
            passwordTextField.clipsToBounds = true
            passwordTextField.layer.cornerRadius = 10
            
            passwordTextField.isSecureTextEntry = true
            
        }
    
   
    var someConstraint: NSLayoutConstraint!
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
            textField.layer.borderColor = CGColor(red: 0.8941176470588236, green: 0.5294117647058824, blue: 0, alpha: 1)
            textField.layer.borderWidth = 1.6
           
            errorStack.isHidden = false
        
        
        someConstraint.constant = 126

                // Animate the change if needed
                UIView.animate(withDuration: 0.2) {
                    self.view.layoutIfNeeded()
                }
        }
        
    func textFieldDidEndEditing(_ textField: UITextField) {
            textField.layer.borderColor = UIColor.gray.cgColor
            textField.layer.borderWidth = 1.0
            
        }
        
    func configForgot(){
           forgotPassButton.setTitle("Forgot Password", for: .normal)
           forgotPassButton.translatesAutoresizingMaskIntoConstraints = false
           
        
        forgotPassButton.setTitleColor(UIColor(cgColor: CGColor(red: 228, green: 0.5294117647058824, blue:0, alpha: 1)), for: .normal)
           NSLayoutConstraint.activate([
               forgotPassButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 12),
               forgotPassButton.rightAnchor.constraint(equalTo: contentView.rightAnchor , constant: -45)
           ])
          
        
        forgotPassButton.setTitle("Good To Know", for: .highlighted)
        forgotPassButton.titleLabel?.font = UIFont(name : "Poppins-Light", size : 11)
       }

    func configSignIntButton(){
        
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.setTitle("Sign in", for: .normal)
        signInButton.titleLabel?.font = UIFont(name: "Poppins-Black", size:12)
        signInButton.setTitleColor(.white, for: .normal)
        
        signInButton.configuration?.background.cornerRadius = 10
        signInButton.backgroundColor = UIColor(cgColor: CGColor(red: 0.8941176470588236, green: 0.5294117647058824, blue: 0, alpha: 1))
        NSLayoutConstraint.activate([
            signInButton.widthAnchor.constraint(equalTo : passwordTextField.widthAnchor) ,
            signInButton.heightAnchor.constraint(equalToConstant: 54) ,
            /*signInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor , constant: 76) */
            signInButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor)
        ])
        signInButton.clipsToBounds = false
        signInButton.layer.cornerRadius = 10
        signInButton.layer.shadowColor = UIColor.black.cgColor
        
        signInButton.layer.shadowColor = CGColor(red: 0.4666666666666667, green: 0.5764705882352941, blue: 0.2549019607843137, alpha: 1)
        
        signInButton.layer.shadowOpacity = 0.3
        
        signInButton.layer.shadowOffset = CGSize(width: 0, height: 7)
        signInButton.layer.shadowRadius = 19
        
        signInButton.titleLabel?.font = UIFont(name: "Poppins-Bold", size: 15)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           usernameTextField.resignFirstResponder()
           passwordTextField.resignFirstResponder()
           
           return true
       }
    
    @IBOutlet weak var errorStack: UIStackView!
    
    func configErrorPlace(){
        
        errorStack.isHidden = true
        
        errorStack.layoutMargins = UIEdgeInsets(top: 5 , left: 5 , bottom: 5, right: 5)
        errorStack.isLayoutMarginsRelativeArrangement = true
        
        errorStack.clipsToBounds = true
        
        errorStack.backgroundColor = UIColor(cgColor: CGColor(red: 1, green: 0.9568627450980393, blue: 0.8901960784313725, alpha: 1))
        
        errorStack.layer.cornerRadius = 6
        
        errorStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            errorStack.leftAnchor.constraint(equalTo: passwordTextField.leftAnchor) ,
            errorStack.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 42) ,
            //errorStack.rightAnchor.constraint(equalTo: contentView.rightAnchor ,  constant: -132)
            
        ])
        errorStack.axis = .vertical
        errorStack.alignment = .leading
        errorStack.distribution = .fillEqually
        errorStack.spacing = 5
    }
    
    @IBOutlet weak var numbersError: UILabel!
    @IBOutlet weak var spceialEror: UILabel!
    @IBOutlet weak var upperCaseError: UILabel!
    
    @IBAction func passEditTextField(_ sender: Any) {
        
        
        if let passSent = passwordTextField.text {
            
            
            let check = CheckPass(pass: passSent)
            
            
            numbersError.font   = UIFont(name: "Poppins-Light", size: 9)
            upperCaseError.font = UIFont(name: "Poppins-Light", size: 9)
            spceialEror.font    = UIFont(name: "Poppins-Light", size: 9)
            
            // Check number of characters
            let hasValidNumberOfChars = check.checkNumberOfChars()
            numbersError.textColor = hasValidNumberOfChars ? UIColor(cgColor: CGColor(red: 0, green: 0.5019607843137255, blue: 0, alpha: 1)) : UIColor(cgColor: CGColor(red: 0.5019607843137255, green: 0, blue: 0, alpha: 1))
            
            // Check for uppercase characters
            let hasUpperCase = check.checkUpperCase()  // Assuming you have this method
            upperCaseError.textColor = hasUpperCase ? UIColor(cgColor: CGColor(red: 0, green: 0.5019607843137255, blue: 0, alpha: 1)) : UIColor(cgColor: CGColor(red: 0.5019607843137255, green: 0, blue: 0, alpha: 1))
            
            // Check for special characters
            let hasSpecialCharacter = check.checkSpecialCharacter()
            spceialEror.textColor = hasSpecialCharacter ? UIColor(cgColor: CGColor(red: 0, green: 0.5019607843137255, blue: 0, alpha: 1)) : UIColor(cgColor: CGColor(red: 0.5019607843137255, green: 0, blue: 0, alpha: 1))
        }
    }
    
    @IBAction func signinButtonTapped(_ sender: Any) {
        // Check if username is valid
             if let username = usernameTextField.text, !username.isEmpty {
                 if let existingUsernames = allUsername {
                     if !existingUsernames.contains(username) {
                         if validatePassword() {
                             allUsername?.append(username)
                             // Show success alert: Username added successfully
                             Alert.showBasicAlert(on: self, with: "Perfect", message: "Username added successfully")
                         } else {
                             // Show alert: Password does not meet requirements
                             Alert.showBasicAlert(on: self, with: "Sorry", message: "Password does not meet requirements")
                         }
                     } else {
                         // Show alert: Username already exists
                         Alert.showBasicAlert(on: self, with: "U Sure?", message: "Username already exists")
                     }
                 } else {
                     if validatePassword() {
                         allUsername = [username]
                         Alert.showBasicAlert(on: self, with: "Perfect", message: "Username added successfully")
                         // Show success alert: Username added successfully
                     } else {
                         Alert.showBasicAlert(on: self, with: "Sorry", message: "Password does not meet requirements")
                         // Show alert: Password does not meet requirements
                     }
                 }
             } else {
                 Alert.showBasicAlert(on: self, with: "Careful", message: "Username can't be empty")
                 // Show alert: Username can't be empty
             }

             resetForm()
         }
    
    func resetForm(){
           
           usernameTextField.text = ""
           passwordTextField.text = ""
          
       }
    
    func validatePassword() -> Bool {
               if let password = passwordTextField.text {
                   let passwordValidator = CheckPass(pass: password)
                   if passwordValidator.checkNumberOfChars() && passwordValidator.checkUpperCase() {
                       return true
                   }
               }
               return false
           }
    
    
    
}

