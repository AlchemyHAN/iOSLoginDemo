//
//  RegisterVC.swift
//  LoginDemo
//
//  Created by 韩沛霖 on 2023/3/11.
//

import UIKit

class RegisterVC: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var errorText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "success"
        {
            if let destination = segue.destination as? SuccessVC
            {
                destination.str = "注册成功\n欢迎\(username.text!)"
            }
        }
    }
    
    
    @IBAction func clickLoginButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "success"
        {
            if username.text == "" || username.text == nil
            {
                errorText.text = "请输入用户名"
                return false
            }
            if password.text == "" || password.text == nil
            {
                errorText.text = "请输入密码"
                return false
            }
            if username.text!.count < 6
            {
                errorText.text = "用户名需大于或等于6位"
                return false
            }
            if password.text!.count < 6
            {
                errorText.text = "密码需大于或等于6位"
                return false
            }
            errorText.text = nil
        }
        return true
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
