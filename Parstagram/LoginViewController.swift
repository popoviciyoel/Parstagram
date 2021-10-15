//
//  LoginViewController.swift
//  Parstagram
//
//  Created by Yoel Popovici on 10/11/21.
//

import UIKit
import Parse

class LoginViewController: UIViewController {


    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func login(_ sender: Any) {
        let username = usernameTextField.text!
        let password = passwordTextField.text!
        PFUser.logInWithUsername(inBackground: username, password: password) {
          (user: PFUser?, error: Error?) -> Void in
          if user != nil {
            // Do stuff after successful login.
            self.performSegue(withIdentifier: "loginUser", sender: nil)
          } else {
            // The login failed. Check error to see why.
            let errorString = error!.localizedDescription
            // Show the errorString somewhere and let the user try again.
              print(errorString)
          }
        }
    }
    
    @IBAction func signUp(_ sender: Any) {
        let user = PFUser()
        user.username = usernameTextField.text
        user.password = passwordTextField.text
       
        user.signUpInBackground {
            (succeeded: Bool, error: Error?) -> Void in
            if let error = error {
              let errorString = error.localizedDescription
              // Show the errorString somewhere and let the user try again.
                print(errorString)
            } else {
                self.performSegue(withIdentifier: "loginUser", sender: nil)
            }
          }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
