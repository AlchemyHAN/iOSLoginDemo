//
//  SuccessVC.swift
//  LoginDemo
//
//  Created by 韩沛霖 on 2023/3/11.
//

import UIKit

class SuccessVC: UIViewController {
    @IBOutlet weak var text: UILabel!
    var str = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        text.text = str
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func exitClick(_ sender: UIButton) {
        self.dismiss(animated: true)
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
