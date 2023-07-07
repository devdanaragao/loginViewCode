//
//  ViewController.swift
//  loginViewCode
//
//  Created by Danilo Santos on 06/07/2023.
//

import UIKit

class LoginVC: UIViewController {
    
    var loginScreen: LoginScreen?
    
    //MARK: LoadView = Referenciar uma view
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

}

