//
//  ViewController.swift
//  mySocialMediaApp
//
//  Created by Sevda Abbasi on 20.05.2023.
//

import UIKit
import Firebase




class ViewController: UIViewController {

    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var usernameText: UITextField!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }

    @IBAction func signInClicked(_ sender: Any) {
        performSegue(withIdentifier: "toTabBar", sender: nil)
    }
    
    @IBAction func signUpClicked(_ sender: Any) {
        
        if usernameText.text != "" && passwordText.text != "" {
                          Auth.auth().createUser(withEmail: usernameText.text!, password: passwordText.text!) { authdata, error in
                              if error != nil {
                                  self.makeAlert(titleInput: "Error!!", messageInput: error?.localizedDescription ?? "Error")
                              }
                              
                              else {
                                  self.performSegue(withIdentifier: "toTabBar", sender: nil)
                              }
                              
                          }
                      }
                      
                      else{
                         makeAlert(titleInput: "Error!", messageInput:"Username/Password?" )
                      }
    }
    
    func makeAlert(titleInput:String, messageInput:String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okBUtton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default ,handler: nil)
        alert.addAction(okBUtton)
        self.present(alert, animated: true)
        
    }
    }
    
    
    
   


