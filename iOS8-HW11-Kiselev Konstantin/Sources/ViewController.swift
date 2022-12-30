//
//  ViewController.swift
//  iOS8-HW11-Kiselev Konstantin
//
//  Created by Константин Киселёв on 30.12.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // MARK: - UI Elements
    
    private lazy var labelLogin: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var textFieldLogin: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.backgroundColor = .white
        textField.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        textField.textAlignment = .left
        textField.layer.cornerRadius = 20
        textField.placeholder = "Login"
        
        if let icon = UIImage(systemName: "person") {
            textField.setLeftIcon(icon)
        }
        if let icon = UIImage(named: "greenCheck") {
            textField.setRightIcon(icon)
        }
        return textField
    }()
    
    private lazy var textFieldPassword: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.backgroundColor = .white
        textField.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        textField.textAlignment = .left
        textField.layer.cornerRadius = 20
        textField.placeholder = "Password"
        
        if let icon = UIImage(named: "lock password") {
            textField.setLeftIcon(icon)
        }
        return textField
    }()
    
    private lazy var buttonLogin: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        button.backgroundColor = .systemIndigo
        button.clipsToBounds = false
        button.layer.cornerRadius = 20
        
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        //        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return button
    }()
    
    private lazy var labelForgotPassword: UILabel = {
        let label = UILabel()
        label.text = "Forgot your password?"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var whiteView: UIView = {
        let whiteView = UIView()
        whiteView.backgroundColor = .white
        return whiteView
    }()
    
    private lazy var strip: UIView = {
        let strip = UIView()
        strip.backgroundColor = .systemGray6
        strip.layer.cornerRadius = 26
        return strip
    }()
    
    private lazy var labelConnect: UILabel = {
        let label = UILabel()
        label.text = "or connect with"
        label.textColor = .systemGray
        label.backgroundColor = .white
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var buttonFacebook: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Facebook", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        button.backgroundColor = .systemBlue
        button.clipsToBounds = false
        button.layer.cornerRadius = 20
        
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        
        //        button.setImage(UIImage(named: "Facebook"), for: .normal)
        return button
    }()
    
    private lazy var buttonTwitter: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Twitter", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        button.backgroundColor = .systemIndigo
        button.clipsToBounds = false
        button.layer.cornerRadius = 20
        
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        //       button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return button
    }()
    
    private lazy var labelDontAccount: UILabel = {
        let label = UILabel()
        label.text = "Dont have account?"
        label.textColor = .systemGray
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var labelSignup: UILabel = {
        let label = UILabel()
        label.text = "Sign up"
        label.textColor = .systemBlue
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var imageViewSwift: UIImageView = {
        let image = UIImage(named: "swift")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupView() {
        view.backgroundColor = .systemCyan
    }
    
    private func setupHierarchy() {
        view.addSubview(labelLogin)
        view.addSubview(textFieldLogin)
        view.addSubview(textFieldPassword)
        view.addSubview(buttonLogin)
        view.addSubview(labelForgotPassword)
        view.addSubview(whiteView)
        view.addSubview(strip)
        view.addSubview(labelConnect)
        view.addSubview(buttonFacebook)
        view.addSubview(buttonTwitter)
        view.addSubview(labelDontAccount)
        view.addSubview(labelSignup)
        //     view.addSubview(imageView)
    }
    
    private func setupLayout() {
        
        labelLogin.snp.makeConstraints { make in
            make.centerY.equalTo(view).offset(-280)
            make.centerX.equalTo(view)
        }
        
        textFieldLogin.snp.makeConstraints { make in
            make.centerY.equalTo(labelLogin.snp.bottom).offset(80)
            make.height.equalTo(45)
            make.left.equalTo(view).offset(30)
            make.right.equalTo(view).offset(-30)
        }
        
        textFieldPassword.snp.makeConstraints { make in
            make.centerY.equalTo(textFieldLogin.snp.bottom).offset(45)
            make.height.equalTo(45)
            make.left.equalTo(view).offset(30)
            make.right.equalTo(view).offset(-30)
        }
        
        buttonLogin.snp.makeConstraints { make in
            make.top.equalTo(labelLogin.snp.bottom).offset(240)
            make.height.equalTo(44)
            make.left.equalTo(view).offset(30)
            make.right.equalTo(view).offset(-30)
        }
        
        labelForgotPassword.snp.makeConstraints { make in
            make.top.equalTo(buttonLogin.snp.bottom).offset(20)
            make.centerX.equalTo(view)
        }
        
        whiteView.snp.makeConstraints { make in
            make.centerY.equalTo(view).offset(260)
            make.left.equalTo(view).offset(0)
            make.right.equalTo(view).offset(0)
            make.bottom.equalTo(view).offset(0)
        }
        
        strip.snp.makeConstraints { make in
            make.centerY.equalTo(view).offset(200)
            make.left.equalTo(view).offset(20)
            make.right.equalTo(view).offset(-20)
            make.height.equalTo(2)
        }
        
        labelConnect.snp.makeConstraints { make in
            make.centerY.equalTo(strip.snp.bottom).offset(-2)
            make.centerX.equalTo(view)
        }
        
        buttonFacebook.snp.makeConstraints { make in
            make.centerY.equalTo(labelConnect.snp.bottom).offset(50)
            make.height.equalTo(35)
            make.left.equalTo(view).offset(30)
            make.centerX.equalTo(view).offset(-85)
        }
        
        //        buttonFacebook.imageView?.snp.makeConstraints { make in
        //            make.size.equalTo(25)
        //            make.centerY.equalTo(buttonFacebook)
        //            make.left.equalTo(buttonFacebook).offset(20)
        //        }
        
        buttonTwitter.snp.makeConstraints { make in
            make.centerY.equalTo(labelConnect.snp.bottom).offset(50)
            make.height.equalTo(35)
            make.right.equalTo(view).offset(-30)
            make.centerX.equalTo(view).offset(85)
        }
        
        labelDontAccount.snp.makeConstraints { make in
            make.bottom.equalTo(view).offset(-85)
            make.left.equalTo(view).offset(100)
        }
        
        labelSignup.snp.makeConstraints { make in
            make.bottom.equalTo(view).offset(-85)
            make.centerX.equalTo(labelDontAccount.snp.right).offset(40)
        }
    }
    
    // MARK: - Action
    @objc private func buttonPressed() {
        
    }
}

// MARK: - Extensions

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 35, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
    
    func setRightIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 0, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 35, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }
}
