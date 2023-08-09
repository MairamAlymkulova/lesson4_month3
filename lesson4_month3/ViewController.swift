

import UIKit

class ViewController: UIViewController {
    private var isChecked = false
    
    private let bgView: UIView = {
        let bgView = UIView()
        bgView.backgroundColor = .white
        bgView.layer.cornerRadius = 30
        
        return bgView
    }()

    private let welcomeLabel: UILabel = {
        let welcomeLabel = UILabel()
        welcomeLabel.text = "Welcome Back"
        welcomeLabel.font = .boldSystemFont(ofSize: 34)
        welcomeLabel.textAlignment = .left
        welcomeLabel.textColor = .white
        
        return welcomeLabel
    }()
    
    private let signInLabel: UILabel = {
       let signInLabel = UILabel()
        signInLabel.text = "Sign in to continue"
        signInLabel.font = .systemFont(ofSize: 20)
        signInLabel.textAlignment = .left
        signInLabel.textColor = .white
        
        return signInLabel
    }()
    
    private let employeeIdLabel: UILabel = {
        let employeeIdLabel = UILabel()
        
        employeeIdLabel.text = "Employee id / Email"
        employeeIdLabel.font = .systemFont(ofSize: 12)
        employeeIdLabel.textAlignment = .left
        employeeIdLabel.textColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        
        return employeeIdLabel
    }()
    
    
    private let emilTextField: UITextField = {
        let emailTextField = UITextField ()
        emailTextField.textAlignment = .left
        emailTextField.textColor = UIColor(red: 50/255, green: 54/255, blue: 67/255, alpha: 1)
        emailTextField.font = .systemFont(ofSize: 16)
        emailTextField.placeholder = "Enter email please"
        
        return emailTextField
    }()
    
    private let viewLine1: UIView = {
        let viewLine1 = UIView()
        viewLine1.backgroundColor = UIColor(red:225/255, green: 227/255, blue: 232/255, alpha: 1)
        return viewLine1
    }()
    
    private let viewLine2: UIView = {
        let viewLine1 = UIView()
        viewLine1.backgroundColor = UIColor(red:225/255, green: 227/255, blue: 232/255, alpha: 1)
        return viewLine1
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
    
    private let showPasswordButton: UIButton = {
       let showPasswordButton = UIButton()
        showPasswordButton.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        showPasswordButton.tintColor = UIColor(red: 204/255, green: 204/255, blue: 204/255, alpha: 1)
        return showPasswordButton
    }()
    
    private let dontHaveAccountLabel: UILabel = {
        let dontHaveAccountLabel = UILabel ()
        dontHaveAccountLabel.textAlignment = .left
        dontHaveAccountLabel.textColor = UIColor(red: 50/255, green: 54/255, blue: 67/255, alpha: 1)
        dontHaveAccountLabel.font = .boldSystemFont(ofSize: 13)
        dontHaveAccountLabel.text = "Don't have an Account ?"
        return dontHaveAccountLabel
    }()
    
    private let signUpButton: UIButton = {
       let signUpButton = UIButton()
        signUpButton.setTitle("Sign Up", for: .normal)
        signUpButton.setTitleColor(UIColor(red: 75/255, green: 148/255, blue: 234/255, alpha: 1), for: .normal)
        signUpButton.titleLabel?.font = UIFont(name: "Roboto-bold", size: 13)
        return signUpButton
    }()
    
    private let signInButton: UIButton = {
       let signInButton = UIButton()
        signInButton.backgroundColor = UIColor(red: 40/255, green: 85/255, blue: 144/255, alpha: 1)
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.setTitleColor(.white, for: .normal)
        signInButton.titleLabel?.font = UIFont(name: "Roboto-bold", size: 18)
        signInButton.layer.cornerRadius = 15
        return signInButton
    }()
    
    private let forgotPasswordButton: UIButton = {
       let forgotPasswordButton = UIButton()
        forgotPasswordButton.setTitle("Forgot Password?", for: .normal)
        forgotPasswordButton.setTitleColor(UIColor(red: 75/255, green: 148/255, blue: 234/255, alpha: 1), for: .normal)
        forgotPasswordButton.titleLabel?.font = UIFont(name: "Roboto-bold", size: 13)
        return forgotPasswordButton
    }()
    
    private let rememberMeButton: UIButton = {
       let rememberMeButton = UIButton()
        rememberMeButton.setImage(UIImage(systemName: "square"), for: .normal)
        rememberMeButton.tintColor = UIColor(red: 50/255, green: 54/255, blue: 67/255, alpha: 1)
        rememberMeButton.setTitle(" Remember Me", for: .normal)
        rememberMeButton.setTitleColor(UIColor(red: 50/255, green: 54/255, blue: 67/255, alpha: 1), for: .normal)
        rememberMeButton.titleLabel?.font = UIFont(name: "Roboto-bold", size: 18)
        return rememberMeButton
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
        bgViewAlinement()
        topImageViewAlinment()
        welcomeLabelAlinement()
        signInLabelAlinment()
        employeeIdLabelAlinment()
        emailTextFieldAlinment()
        viewLine1Alinment()
        passwordLabelAlinment()
        passwordTextFieldAlinment()
        showPasswordButtonAlinment()
        viewLine2Alinment()
        forgotPasswordButtonAlinment()
        bottomImageViewAlinment()
        dontHaveAccountLabelAlinment()
        signUpButtonAlinment()
        signInButtonAlinment()
        rememberMeButtonAlinment()
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
            bgView.heightAnchor.constraint(equalToConstant: 442)
        ])
        
    }
    
    
    private func welcomeLabelAlinement(){
        view.addSubview(welcomeLabel)
        welcomeLabel.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            welcomeLabel.topAnchor.constraint(equalTo: topImage.bottomAnchor, constant: -12),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            welcomeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 15),
            welcomeLabel.heightAnchor.constraint(equalToConstant: 48)])
    }
    
    
    
    private func signInLabelAlinment(){
        view.addSubview(signInLabel)
        signInLabel.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            signInLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 4),
            signInLabel.leadingAnchor.constraint(equalTo: welcomeLabel.leadingAnchor),
            signInLabel.trailingAnchor.constraint(equalTo: welcomeLabel.trailingAnchor),
            signInLabel.heightAnchor.constraint(equalToConstant: 25)])
    }
    
    
    private func employeeIdLabelAlinment(){
        bgView.addSubview(employeeIdLabel)
        employeeIdLabel.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            employeeIdLabel.topAnchor.constraint(equalTo: bgView.topAnchor, constant: 43),
            employeeIdLabel.leadingAnchor.constraint(equalTo: bgView.leadingAnchor, constant: 23),
            employeeIdLabel.trailingAnchor.constraint(equalTo: bgView.trailingAnchor, constant: -23),
            employeeIdLabel.heightAnchor.constraint(equalToConstant: 15)])
    }
    
    private func emailTextFieldAlinment(){
        bgView.addSubview(emilTextField)
        emilTextField.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            emilTextField.topAnchor.constraint(equalTo: employeeIdLabel.bottomAnchor, constant: 13),
            emilTextField.leadingAnchor.constraint(equalTo: employeeIdLabel.leadingAnchor),
            emilTextField.trailingAnchor.constraint(equalTo: employeeIdLabel.trailingAnchor),
            emilTextField.heightAnchor.constraint(equalToConstant: 20)])
    }
    
    private func viewLine1Alinment(){
        bgView.addSubview(viewLine1)
        viewLine1.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            viewLine1.topAnchor.constraint(equalTo: emilTextField.bottomAnchor, constant: 13),
            viewLine1.leadingAnchor.constraint(equalTo: emilTextField.leadingAnchor),
            viewLine1.trailingAnchor.constraint(equalTo: emilTextField.trailingAnchor),
            viewLine1.heightAnchor.constraint(equalToConstant: 1)])
    
    }
    
    private func passwordLabelAlinment(){
        bgView.addSubview(passwordLabel)
        passwordLabel.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            passwordLabel.topAnchor.constraint(equalTo: viewLine1.bottomAnchor, constant: 25),
            passwordLabel.leadingAnchor.constraint(equalTo: viewLine1.leadingAnchor),
            passwordLabel.trailingAnchor.constraint(equalTo: viewLine1.trailingAnchor),
            passwordLabel.heightAnchor.constraint(equalToConstant: 15)])
    }
    
    private func passwordTextFieldAlinment(){
        bgView.addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 9),
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
    
    @objc private func showPasswordButtonPressed() {
        passwordTextField.isSecureTextEntry.toggle()
        
    }
    
    
    private func viewLine2Alinment(){
        bgView.addSubview(viewLine2)
        viewLine2.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            viewLine2.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10),
            viewLine2.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            viewLine2.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            viewLine2.heightAnchor.constraint(equalToConstant: 1)])
    }
    
    private func forgotPasswordButtonAlinment(){
        bgView.addSubview(forgotPasswordButton)
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints=false

        NSLayoutConstraint.activate([
            forgotPasswordButton.topAnchor.constraint(equalTo: viewLine2.bottomAnchor, constant: 3),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: viewLine2.trailingAnchor)])
    }
    private func rememberMeButtonAlinment(){
        bgView.addSubview(rememberMeButton)
        rememberMeButton.translatesAutoresizingMaskIntoConstraints=false

        NSLayoutConstraint.activate([
            rememberMeButton.topAnchor.constraint(equalTo: forgotPasswordButton.bottomAnchor, constant: 18),
            rememberMeButton.leadingAnchor.constraint(equalTo: viewLine2.leadingAnchor),
            rememberMeButton.bottomAnchor.constraint(equalTo: signInButton.topAnchor, constant: -35)
        
        ])
        
        rememberMeButton.addTarget(self, action: #selector(changeCheckBox), for: .touchUpInside)
        
    }
    
    @objc func changeCheckBox(_sender: UIButton){
        if isChecked{
            rememberMeButton.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
            isChecked=false
        }else{
            rememberMeButton.setImage(UIImage(systemName: "square"), for: .normal)
            isChecked=true
        }
    }
   
    private func signInButtonAlinment(){
        bgView.addSubview(signInButton)
        signInButton.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            signInButton.bottomAnchor.constraint(equalTo: dontHaveAccountLabel.topAnchor, constant: -45),
            signInButton.centerXAnchor.constraint(equalTo: bgView.centerXAnchor),
            signInButton.widthAnchor.constraint(equalToConstant: 168),
            signInButton.heightAnchor.constraint(equalToConstant: 40)])
    
        signInButton.addTarget(self, action: #selector(signInButtonPressed), for: .touchUpInside)

    }
    private func dontHaveAccountLabelAlinment(){
        bgView.addSubview(dontHaveAccountLabel)
        dontHaveAccountLabel.translatesAutoresizingMaskIntoConstraints=false

        NSLayoutConstraint.activate([
            dontHaveAccountLabel.topAnchor.constraint(equalTo: bottomImage.topAnchor, constant: 31),
            dontHaveAccountLabel.heightAnchor.constraint(equalToConstant: 16),
            dontHaveAccountLabel.leadingAnchor.constraint(equalTo: bottomImage.leadingAnchor, constant: 11)])
    }
    
    private func signUpButtonAlinment(){
        bgView.addSubview(signUpButton)
        signUpButton.translatesAutoresizingMaskIntoConstraints=false

        NSLayoutConstraint.activate([
            signUpButton.centerYAnchor.constraint(equalTo: dontHaveAccountLabel.centerYAnchor),
            signUpButton.leadingAnchor.constraint(equalTo: dontHaveAccountLabel.trailingAnchor, constant: 10)])
        signUpButton.addTarget(self, action: #selector(signUpButtonPressed), for: .touchUpInside)

    }
    
    private func bottomImageViewAlinment(){
        bgView.addSubview(bottomImage)
        bottomImage.translatesAutoresizingMaskIntoConstraints=false
        
        NSLayoutConstraint.activate([
        
            bottomImage.bottomAnchor.constraint(equalTo: bgView.bottomAnchor),
            bottomImage.centerXAnchor.constraint(equalTo: bgView.centerXAnchor),
            bottomImage.leadingAnchor.constraint(equalTo: bgView.trailingAnchor),
            bottomImage.trailingAnchor.constraint(equalTo: bgView.trailingAnchor)])
    }
    
    @objc func signUpButtonPressed(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @objc func signInButtonPressed(_ sender: UIButton) {
        if checkFilledFeilds() {
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
    
    func checkFilledFeilds()->Bool{
        let name=isFilled(tf: emilTextField)
        let password = isFilled(tf: passwordTextField)
        if  name && password {
            return true
        } else {
            return false
        }
    }
        
   
}

