//
//  LoginScreen.swift
//  loginViewCode
//
//  Created by Danilo Santos on 07/07/2023.
//

import UIKit

class LoginScreen: UIView {

    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.text = "Login"
        return label
    }()
    
    lazy var logoImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "wpp")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    lazy var emailTextField: UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.autocorrectionType = .no
        email.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0) /* #343434 */
        email.borderStyle = .roundedRect
        email.keyboardType = .emailAddress
        email.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white.withAlphaComponent(0.4)])
        email.textColor = .white
        email.clipsToBounds = true
        email.layer.cornerRadius = 12
        email.layer.borderWidth = 2.0
        email.layer.borderColor = UIColor.white.cgColor
        return email
    }()
    
    lazy var passwordTextField: UITextField = {
        let password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.autocorrectionType = .no
        password.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0) /* #343434 */
        password.borderStyle = .roundedRect
        password.keyboardType = .default
        password.isSecureTextEntry = true
        password.attributedPlaceholder = NSAttributedString(string: "Senha", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white.withAlphaComponent(0.4)])
        password.textColor = .white
        password.clipsToBounds = true
        password.layer.cornerRadius = 12
        password.layer.borderWidth = 2.0
        password.layer.borderColor = UIColor.white.cgColor
        return password
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Logar", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 3/255, green: 58/255, blue: 51/255, alpha: 1)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
//        button.setImage(UIImage(systemName: "xmark"), for: .normal)
//        button.addTarget(self, action: #selector(pressClosedButton), for: .touchUpInside)
        return button
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Não tem conta? Cadastre-se", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
//        button.setImage(UIImage(systemName: "xmark"), for: .normal)
//        button.addTarget(self, action: #selector(pressClosedButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addBackground()
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addBackground() {
        backgroundColor = UIColor(red: 24/255, green: 117/255, blue: 104/255, alpha: 1)
    }
    
    private func addElements() {
        addSubview(loginLabel)
        addSubview(logoImageView)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
        addSubview(registerButton)
    }
    
    private func configConstraints(){
        
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            logoImageView.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 10),
            logoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            logoImageView.heightAnchor.constraint(equalToConstant: 250),
            logoImageView.widthAnchor.constraint(equalToConstant: 250),
            
            emailTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 40),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor ),
            passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor ),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            loginButton.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor ),
            loginButton.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor ),
            
            registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20),
            registerButton.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor ),
            registerButton.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor ),
            
            
        ])
    }

}
