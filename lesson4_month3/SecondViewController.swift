//
//  SecondViewController.swift
//  lesson4_month3
//
//  Created by User1 on 9/8/23.
//

import UIKit

class SecondViewController: UIViewController {

    private let bgView: UIView = {
        let bgView = UIView()
        bgView.backgroundColor = .white
        bgView.layer.cornerRadius = 30
        
        return bgView
    }()

    
    private let nameLabel: UILabel = {
        let nameLabel = UILabel()
        
        nameLabel.text = "Full Name"
        nameLabel.font = .systemFont(ofSize: 12)
        nameLabel.textAlignment = .left
        nameLabel.textColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        
        return nameLabel
    }()
    
    
    private let nameTextField: UITextField = {
        let nameTextField = UITextField ()
        nameTextField.textAlignment = .left
        nameTextField.textColor = UIColor(red: 50/255, green: 54/255, blue: 67/255, alpha: 1)
        nameTextField.font = .systemFont(ofSize: 16)
        nameTextField.placeholder = "Enter full name please"
        
        return nameTextField
    }()
    
    private let viewLine1: UIView = {
        let viewLine1 = UIView()
        viewLine1.backgroundColor = UIColor(red:225/255, green: 227/255, blue: 232/255, alpha: 1)
        return viewLine1
    }()
    private let phoneNumberLabel: UILabel = {
        let phoneNumberLabel = UILabel()
        
        phoneNumberLabel.text = "Mobile Number"
        phoneNumberLabel.font = .systemFont(ofSize: 12)
        phoneNumberLabel.textAlignment = .left
        phoneNumberLabel.textColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        
        return phoneNumberLabel
    }()
    
    
    private let phoneNumberTextField: UITextField = {
        let phoneNumberTextField = UITextField ()
        phoneNumberTextField.textAlignment = .left
        phoneNumberTextField.textColor = UIColor(red: 50/255, green: 54/255, blue: 67/255, alpha: 1)
        phoneNumberTextField.font = .systemFont(ofSize: 16)
        phoneNumberTextField.placeholder = "Enter phone number please"
        
        return phoneNumberTextField
    }()
    
    private let viewLine2: UIView = {
        let viewLine2 = UIView()
        viewLine2.backgroundColor = UIColor(red:225/255, green: 227/255, blue: 232/255, alpha: 1)
        return viewLine2
    }()
    private let emailLabel: UILabel = {
        let emailLabel = UILabel()
        
        emailLabel.text = "Email"
        emailLabel.font = .systemFont(ofSize: 12)
        emailLabel.textAlignment = .left
        emailLabel.textColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        
        return emailLabel
    }()
    
    
    private let emailTextField: UITextField = {
        let emailTextField = UITextField ()
        emailTextField.textAlignment = .left
        emailTextField.textColor = UIColor(red: 50/255, green: 54/255, blue: 67/255, alpha: 1)
        emailTextField.font = .systemFont(ofSize: 16)
        emailTextField.placeholder = "Enter email please"
        
        return emailTextField
    }()
    
    private let viewLine3: UIView = {
        let viewLine3 = UIView()
        viewLine3.backgroundColor = UIColor(red:225/255, green: 227/255, blue: 232/255, alpha: 1)
        return viewLine3
    }()
    private let userNameLabel: UILabel = {
        let userNameLabel = UILabel()
        
        userNameLabel.text = "User Name"
        userNameLabel.font = .systemFont(ofSize: 12)
        userNameLabel.textAlignment = .left
        userNameLabel.textColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        
        return userNameLabel
    }()
    
    
    private let userNameTextField: UITextField = {
        let userNameTextField = UITextField ()
        userNameTextField.textAlignment = .left
        userNameTextField.textColor = UIColor(red: 50/255, green: 54/255, blue: 67/255, alpha: 1)
        userNameTextField.font = .systemFont(ofSize: 16)
        userNameTextField.placeholder = "Enter user name please"
        
        return userNameTextField
    }()
    
    private let viewLine4: UIView = {
        let viewLine4 = UIView()
        viewLine4.backgroundColor = UIColor(red:225/255, green: 227/255, blue: 232/255, alpha: 1)
        return viewLine4
    }()
    
    private let viewLine5: UIView = {
        let viewLine5 = UIView()
        viewLine5.backgroundColor = UIColor(red:225/255, green: 227/255, blue: 232/255, alpha: 1)
        return viewLine5
    }()
    
    private let passwordLabel: UILabel = {
        let passwordLabel = UILabel()
        
        passwordLabel.text = "Password"
        passwordLabel.font = .systemFont(ofSize: 12)
        passwordLabel.textAlignment = .left
        passwordLabel.textColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        
        return passwordLabel
    }()
    
    private let passwordTextField: UITextField = {
        let passwordTextField = UITextField ()
        passwordTextField.textAlignment = .left
        passwordTextField.textColor = UIColor(red: 50/255, green: 54/255, blue: 67/255, alpha: 1)
        passwordTextField.font = .systemFont(ofSize: 13)
        passwordTextField.placeholder = "Enter password please"
        passwordTextField.isSecureTextEntry = true
        return passwordTextField
    }()
    
    private let viewLine6: UIView = {
        let viewLine6 = UIView()
        viewLine6.backgroundColor = UIColor(red:225/255, green: 227/255, blue: 232/255, alpha: 1)
        return viewLine6
    }()
    
    private let confirmPasswordLabel: UILabel = {
        let confirmPasswordLabel = UILabel()
        
        confirmPasswordLabel.text = "Confirm Password"
        confirmPasswordLabel.font = .systemFont(ofSize: 12)
        confirmPasswordLabel.textAlignment = .left
        confirmPasswordLabel.textColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        
        return confirmPasswordLabel
    }()
    
    private let confirmPasswordTextField: UITextField = {
        let confirmPasswordTextField = UITextField ()
        confirmPasswordTextField.textAlignment = .left
        confirmPasswordTextField.textColor = UIColor(red: 50/255, green: 54/255, blue: 67/255, alpha: 1)
        confirmPasswordTextField.font = .systemFont(ofSize: 13)
        confirmPasswordTextField.placeholder = "Confirm password please"
        confirmPasswordTextField.isSecureTextEntry = true
        return confirmPasswordTextField
    }()
    
    private let showPasswordButton: UIButton = {
       let showPasswordButton = UIButton()
        showPasswordButton.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        showPasswordButton.tintColor = UIColor(red: 204/255, green: 204/255, blue: 204/255, alpha: 1)
        return showPasswordButton
    }()
    
    private let showConfirmPasswordButton: UIButton = {
       let showPasswordButton = UIButton()
        showPasswordButton.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        showPasswordButton.tintColor = UIColor(red: 204/255, green: 204/255, blue: 204/255, alpha: 1)
        return showPasswordButton
    }()
    
    private let alreadyHaveAccountLabel: UILabel = {
        let dontHaveAccountLabel = UILabel ()
        dontHaveAccountLabel.textAlignment = .left
        dontHaveAccountLabel.textColor = UIColor(red: 50/255, green: 54/255, blue: 67/255, alpha: 1)
        dontHaveAccountLabel.font = .boldSystemFont(ofSize: 13)
        dontHaveAccountLabel.text = "Already have an Account ?"
        return dontHaveAccountLabel
    }()
    
    private let signInButton: UIButton = {
       let signUpButton = UIButton()
        signUpButton.setTitle("Sign In", for: .normal)
        signUpButton.setTitleColor(UIColor(red: 75/255, green: 148/255, blue: 234/255, alpha: 1), for: .normal)
        signUpButton.titleLabel?.font = UIFont(name: "Roboto-bold", size: 13)
        return signUpButton
    }()
    
    private let signUpButton: UIButton = {
       let signInButton = UIButton()
        signInButton.backgroundColor = UIColor(red: 40/255, green: 85/255, blue: 144/255, alpha: 1)
        signInButton.setTitle("Sign Up", for: .normal)
        signInButton.setTitleColor(.white, for: .normal)
        signInButton.titleLabel?.font = UIFont(name: "Roboto-bold", size: 18)
        signInButton.layer.cornerRadius = 15
        return signInButton
    }()
    
    
    
    
    private let topImage = UIImageView(image: UIImage(named: "topImage"))
    private let bottomImage = UIImageView(image: UIImage(named: "bottomImage"))

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 74/255, green: 198/255, blue: 233/255, alpha: 1)
        // Do any additional setup after loading the view.
        initUI()
    }


    private func initUI(){
        topImageViewAlinment()
        bgViewAlinement()
        nameLabelAlinment()
        nameTextFieldAlinment()
        viewLine1Alinment()
        phoneNumberLabelAlinment()
        phoneNumberTextFieldAlinment()
        viewLine2Alinment()
        emailLabelAlinment()
        emailTextFieldAlinment()
        viewLine3Alinment()
        userNameLabelAlinment()
        userNameTextFieldAlinment()
        viewLine4Alinment()
        passwordLabelAlinment()
        passwordTextFieldAlinment()
        showPasswordButtonAlinment()
        viewLine5Alinment()
        ConfirmPasswordLabelAlinment()
        ConfirmPasswordTextFieldAlinment()
        showConfirmPasswordButtonAlinment()
        viewLine6Alinment()
        bottomImageViewAlinment()
        alreadyHaveAccountLabelAlinment()
        signUpButtonAlinment()
        signInButtonAlinment()
    }
    
    private func topImageViewAlinment(){
        view.addSubview(topImage)
        topImage.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            topImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 29),
            topImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            topImage.widthAnchor.constraint(equalToConstant: 350),
            topImage.heightAnchor.constraint(equalToConstant: 256)])
    }
    
    
    private func bgViewAlinement(){
        view.addSubview(bgView)
        bgView.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            bgView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bgView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bgView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bgView.heightAnchor.constraint(equalToConstant: 608)
        ])
        
    }
    
    
    
    
    private func nameLabelAlinment(){
        bgView.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            nameLabel.topAnchor.constraint(equalTo: bgView.topAnchor, constant: 43),
            nameLabel.leadingAnchor.constraint(equalTo: bgView.leadingAnchor, constant: 23),
            nameLabel.trailingAnchor.constraint(equalTo: bgView.trailingAnchor, constant: -23),
            nameLabel.heightAnchor.constraint(equalToConstant: 15)])
    }
    
    private func nameTextFieldAlinment(){
        bgView.addSubview(nameTextField)
        nameTextField.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 13),
            nameTextField.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            nameTextField.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            nameTextField.heightAnchor.constraint(equalToConstant: 20)])
    }
    
    private func viewLine1Alinment(){
        bgView.addSubview(viewLine1)
        viewLine1.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            viewLine1.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 13),
            viewLine1.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            viewLine1.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            viewLine1.heightAnchor.constraint(equalToConstant: 1)])
    
    }
    
    private func phoneNumberLabelAlinment(){
        bgView.addSubview(phoneNumberLabel)
        phoneNumberLabel.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            phoneNumberLabel.topAnchor.constraint(equalTo: viewLine1.bottomAnchor, constant: 8),
            phoneNumberLabel.leadingAnchor.constraint(equalTo: viewLine1.leadingAnchor),
            phoneNumberLabel.trailingAnchor.constraint(equalTo: viewLine1.trailingAnchor),
            phoneNumberLabel.heightAnchor.constraint(equalToConstant: 15)])
    }
    
    private func phoneNumberTextFieldAlinment(){
        bgView.addSubview(phoneNumberTextField)
        phoneNumberTextField.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            phoneNumberTextField.topAnchor.constraint(equalTo: phoneNumberLabel.bottomAnchor, constant: 13),
            phoneNumberTextField.leadingAnchor.constraint(equalTo: phoneNumberLabel.leadingAnchor),
            phoneNumberTextField.trailingAnchor.constraint(equalTo: phoneNumberLabel.trailingAnchor),
            phoneNumberTextField.heightAnchor.constraint(equalToConstant: 20)])
    }
    
    
    private func viewLine2Alinment(){
        bgView.addSubview(viewLine2)
        viewLine2.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            viewLine2.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 13),
            viewLine2.leadingAnchor.constraint(equalTo: phoneNumberTextField.leadingAnchor),
            viewLine2.trailingAnchor.constraint(equalTo: phoneNumberTextField.trailingAnchor),
            viewLine2.heightAnchor.constraint(equalToConstant: 1)])
    }
    
    private func emailLabelAlinment(){
        bgView.addSubview(emailLabel)
        emailLabel.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            emailLabel.topAnchor.constraint(equalTo: viewLine2.bottomAnchor, constant: 8),
            emailLabel.leadingAnchor.constraint(equalTo: viewLine2.leadingAnchor),
            emailLabel.trailingAnchor.constraint(equalTo: viewLine2.trailingAnchor),
            emailLabel.heightAnchor.constraint(equalToConstant: 15)])
    }
    
    private func emailTextFieldAlinment(){
        bgView.addSubview(emailTextField)
        emailTextField.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 13),
            emailTextField.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 20)])
    }
    
    private func viewLine3Alinment(){
        bgView.addSubview(viewLine3)
        viewLine3.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            viewLine3.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 13),
            viewLine3.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            viewLine3.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            viewLine3.heightAnchor.constraint(equalToConstant: 1)])
    
    }
    
    private func userNameLabelAlinment(){
        bgView.addSubview(userNameLabel)
        userNameLabel.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            userNameLabel.topAnchor.constraint(equalTo: viewLine3.bottomAnchor, constant: 8),
            userNameLabel.leadingAnchor.constraint(equalTo: viewLine3.leadingAnchor),
            userNameLabel.trailingAnchor.constraint(equalTo: viewLine3.trailingAnchor),
            userNameLabel.heightAnchor.constraint(equalToConstant: 15)])
    }
    
    private func userNameTextFieldAlinment(){
        bgView.addSubview(userNameTextField)
        userNameTextField.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            userNameTextField.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 13),
            userNameTextField.leadingAnchor.constraint(equalTo: userNameLabel.leadingAnchor),
            userNameTextField.trailingAnchor.constraint(equalTo: userNameLabel.trailingAnchor),
            userNameTextField.heightAnchor.constraint(equalToConstant: 20)])
    }
    
    private func viewLine4Alinment(){
        bgView.addSubview(viewLine4)
        viewLine4.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            viewLine4.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 13),
            viewLine4.leadingAnchor.constraint(equalTo: userNameTextField.leadingAnchor),
            viewLine4.trailingAnchor.constraint(equalTo: userNameTextField.trailingAnchor),
            viewLine4.heightAnchor.constraint(equalToConstant: 1)])
    
    }
    
    private func passwordLabelAlinment(){
        bgView.addSubview(passwordLabel)
        passwordLabel.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            passwordLabel.topAnchor.constraint(equalTo: viewLine4.bottomAnchor, constant: 8),
            passwordLabel.leadingAnchor.constraint(equalTo: viewLine4.leadingAnchor),
            passwordLabel.trailingAnchor.constraint(equalTo: viewLine4.trailingAnchor),
            passwordLabel.heightAnchor.constraint(equalToConstant: 15)])
    }
    
    private func passwordTextFieldAlinment(){
        bgView.addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 10),
            passwordTextField.leadingAnchor.constraint(equalTo: passwordLabel.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: passwordLabel.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 20)])
    }
    private func showPasswordButtonAlinment(){
        bgView.addSubview(showPasswordButton)
        showPasswordButton.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            showPasswordButton.centerYAnchor.constraint(equalTo: passwordTextField.centerYAnchor),
            showPasswordButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor,constant: -7),
            showPasswordButton.heightAnchor.constraint(equalToConstant: 13),
            showPasswordButton.widthAnchor.constraint(equalToConstant: 18)])
        
        showPasswordButton.addTarget(self, action: #selector(showPasswordButtonPressed), for: .allTouchEvents)

    }
    
    private func showConfirmPasswordButtonAlinment(){
        bgView.addSubview(showConfirmPasswordButton)
        showConfirmPasswordButton.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            showConfirmPasswordButton.centerYAnchor.constraint(equalTo: confirmPasswordTextField.centerYAnchor),
            showConfirmPasswordButton.trailingAnchor.constraint(equalTo: confirmPasswordTextField.trailingAnchor,constant: -7),
            showConfirmPasswordButton.heightAnchor.constraint(equalToConstant: 13),
            showConfirmPasswordButton.widthAnchor.constraint(equalToConstant: 18)])
        
        showConfirmPasswordButton.addTarget(self, action: #selector(showConfirmPasswordButtonPressed), for: .allTouchEvents)

    }
    @objc private func showConfirmPasswordButtonPressed() {
        confirmPasswordTextField.isSecureTextEntry.toggle()
        
    }
    
    @objc private func showPasswordButtonPressed() {
        passwordTextField.isSecureTextEntry.toggle()
        
    }
    private func viewLine5Alinment(){
        bgView.addSubview(viewLine5)
        viewLine5.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            viewLine5.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10),
            viewLine5.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            viewLine5.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            viewLine5.heightAnchor.constraint(equalToConstant: 1)])
    
    }
    
    private func ConfirmPasswordLabelAlinment(){
        bgView.addSubview(confirmPasswordLabel)
        confirmPasswordLabel.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            confirmPasswordLabel.topAnchor.constraint(equalTo: viewLine5.bottomAnchor, constant: 8),
            confirmPasswordLabel.leadingAnchor.constraint(equalTo: viewLine5.leadingAnchor),
            confirmPasswordLabel.trailingAnchor.constraint(equalTo: viewLine5.trailingAnchor),
            confirmPasswordLabel.heightAnchor.constraint(equalToConstant: 15)])
    }
    
    private func ConfirmPasswordTextFieldAlinment(){
        bgView.addSubview(confirmPasswordTextField)
        confirmPasswordTextField.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            confirmPasswordTextField.topAnchor.constraint(equalTo: confirmPasswordLabel.bottomAnchor, constant: 10),
            confirmPasswordTextField.leadingAnchor.constraint(equalTo: confirmPasswordLabel.leadingAnchor),
            confirmPasswordTextField.trailingAnchor.constraint(equalTo: confirmPasswordLabel.trailingAnchor),
            confirmPasswordTextField.heightAnchor.constraint(equalToConstant: 20)])
    }
    
    private func viewLine6Alinment(){
        bgView.addSubview(viewLine6)
        viewLine6.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            viewLine6.topAnchor.constraint(equalTo: confirmPasswordTextField.bottomAnchor, constant: 10),
            viewLine6.leadingAnchor.constraint(equalTo: confirmPasswordTextField.leadingAnchor),
            viewLine6.trailingAnchor.constraint(equalTo: confirmPasswordTextField.trailingAnchor),
            viewLine6.heightAnchor.constraint(equalToConstant: 1)])
    
    }
    private func signUpButtonAlinment(){
        bgView.addSubview(signUpButton)
        signUpButton.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            signUpButton.bottomAnchor.constraint(equalTo: alreadyHaveAccountLabel.topAnchor, constant: -36),
            signUpButton.centerXAnchor.constraint(equalTo: bgView.centerXAnchor),
            signUpButton.widthAnchor.constraint(equalToConstant: 168),
            signUpButton.heightAnchor.constraint(equalToConstant: 40)])
    
        signUpButton.addTarget(self, action: #selector(signUpButtonPressed), for: .touchUpInside)

    }
    private func alreadyHaveAccountLabelAlinment(){
        bgView.addSubview(alreadyHaveAccountLabel)
        alreadyHaveAccountLabel.translatesAutoresizingMaskIntoConstraints=false

        NSLayoutConstraint.activate([
            alreadyHaveAccountLabel.topAnchor.constraint(equalTo: bottomImage.topAnchor, constant: 31),
            alreadyHaveAccountLabel.heightAnchor.constraint(equalToConstant: 16),
            alreadyHaveAccountLabel.leadingAnchor.constraint(equalTo: bottomImage.leadingAnchor, constant: 11)])
    }
    
    private func signInButtonAlinment(){
        bgView.addSubview(signInButton)
        signInButton.translatesAutoresizingMaskIntoConstraints=false

        NSLayoutConstraint.activate([
            signInButton.centerYAnchor.constraint(equalTo: alreadyHaveAccountLabel.centerYAnchor),
            signInButton.leadingAnchor.constraint(equalTo: alreadyHaveAccountLabel.trailingAnchor, constant: 10)])
        signInButton.addTarget(self, action: #selector(signInButtonPressed), for: .touchUpInside)

    }
    @objc func signInButtonPressed(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(identifier: "ViewController") as! ViewController
        navigationController?.pushViewController(vc, animated: true)
        
    }
    private func bottomImageViewAlinment(){
        bgView.addSubview(bottomImage)
        bottomImage.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            bottomImage.bottomAnchor.constraint(equalTo: bgView.bottomAnchor),
            bottomImage.centerXAnchor.constraint(equalTo: bgView.centerXAnchor),
            bottomImage.leadingAnchor.constraint(equalTo: bgView.leadingAnchor),
            bottomImage.trailingAnchor.constraint(equalTo: bgView.trailingAnchor)])
    }
    
    @objc func signUpButtonPressed(_ sender: UIButton) {
        if checkFilledFields() {
            let vc = self.storyboard?.instantiateViewController(identifier: "FinalViewController") as! FinalViewController
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func isFilled(tf: UITextField) -> Bool {
        if tf.text?.isEmpty ?? true {
            tf.layer.borderColor = UIColor.red.cgColor
            tf.layer.borderWidth = 1
            tf.placeholder = "Enter a name please"
            
            return false
        } else {
            tf.layer.borderWidth = 0
            return true
        }
        
    }
    func checkPssword(password: UITextField, confirmPassword: UITextField)->Bool{
        if password.text != confirmPassword.text{
            confirmPassword.layer.borderColor = UIColor.red.cgColor
            confirmPassword.layer.borderWidth = 1
            confirmPassword.text=""
            confirmPassword.placeholder = "Wrong password"
            return false
        }else{
            return true
        }
    }
    func checkFilledFields () -> Bool{
        let name = isFilled(tf: nameTextField)
        let phoneNumber = isFilled(tf: phoneNumberTextField)
        let email = isFilled(tf: emailTextField)
        let userName = isFilled(tf: userNameTextField)
        let password = isFilled(tf: passwordTextField)
        let confirmPassword = isFilled(tf: confirmPasswordTextField)
        
        
        if name && phoneNumber && email && userName && password && confirmPassword && checkPssword(password: passwordTextField, confirmPassword: confirmPasswordTextField){
            return true
        }
        else{
            return false
        }
    }
        
   

}
