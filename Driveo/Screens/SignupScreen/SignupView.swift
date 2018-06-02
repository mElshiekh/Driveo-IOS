//
//  SignupView.swift
//  Driveo
//
//  Created by Admin on 6/2/18.
//  Copyright © 2018 ITI. All rights reserved.
//

import UIKit

class SignupView: UIViewController ,SignupViewProtocol{
    
    lazy var signupPresenter:SignupPresenter = SignupPresenter(signupView: self)
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    
    @IBOutlet weak var confirmPasswordError: UILabel!
    
    @IBOutlet weak var passwordError: UILabel!
    
    @IBOutlet weak var phoneError: UILabel!
    
    @IBOutlet weak var emaiError: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    
    
    
    func setEmailAlertLabel(errorMsg: String) {
        emaiError.text = errorMsg
    }
    
    func setPhoneAlertLabel(errorMsg: String) {
        phoneError.text  = errorMsg
    }
    
    func setPasswordAlertLabel(errorMsg: String) {
        passwordError.text = errorMsg
    }
    
    func setConfirmPasswordAlertLabel(errorMsg: String) {
        confirmPasswordError.text = errorMsg
    }
    
    
    func showLoading() {
        
    }
    
    func dismissLoading() {
        
    }
    
    func showNoInternetAlert(){
        let connectionAlertView:UIAlertController = UIAlertController(title: "Error", message: "Connect Your Internet AND Try Again", preferredStyle: .alert)
        
        let dismissAlertAction:UIAlertAction = UIAlertAction(title: "OK", style: .default)
        
        connectionAlertView.addAction(dismissAlertAction)
        
        self.present(connectionAlertView, animated: true, completion: nil)
        
    }
    
    
    @IBAction func signupNewUser(_ sender: Any) {
        signupPresenter.registerclicked(user: User(email: emailTextField.text!, phone: phoneTextField.text!, password: passwordTextField.text!))
    }
    
    @IBAction func goToLoginScreen(_ sender: Any) {
        
    }
    
}

extension SignupView : UITextFieldDelegate{
    func textFieldDidEndEditing(_ textField: UITextField){
        switch textField.tag {
        case 1:
            signupPresenter.isEmailValid(email: emailTextField.text!)
        case 2:
            signupPresenter.isPhoneValid(phone: phoneTextField.text!)
        case 3:
            signupPresenter.isPasswordValid(password: passwordTextField.text!)
        case 4:
            signupPresenter.isPasswordmatches(password: passwordTextField.text!, confirmPassword: confirmPasswordTextField.text!)
        default: break
            
        }
    }
    
}