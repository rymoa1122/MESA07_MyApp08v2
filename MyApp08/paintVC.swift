//
//  paintVC.swift
//  MyApp08
//
//  Created by iii on 2017/6/23.
//  Copyright © 2017年 iii. All rights reserved.
//

import UIKit

class paintVC: UIViewController {
    
    @IBOutlet weak var paintView: PainterView!
    
    @IBAction func ClearPaint(_ sender: Any) {
        paintView.clear()
    }
    
    @IBAction func UndoPaint(_ sender: Any) {
        paintView.undo()
    }
    
    @IBAction func RedoPaint(_ sender: Any) {
        paintView.redo()
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
