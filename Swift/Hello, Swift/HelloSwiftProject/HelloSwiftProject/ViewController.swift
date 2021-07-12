//
//  ViewController.swift
//  HelloSwiftProject
//
//  Created by 강민구 on 2021/07/12.
//

import UIKit

class ViewController: UIViewController {

    // Outlet : 입력한 값을	 코드로 가져오거나, 코드에서 속성을 변경
    @IBOutlet weak var inputField: UITextField!
    
    
    @IBAction func showValue(_ sender: Any) {
        guard let value = inputField.text else {
            return
        }
        let alert = UIAlertController(title: "확인", message: value, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "확인", style: .default, handler: nil)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

