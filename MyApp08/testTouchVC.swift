//
//  testTouchVC.swift
//  MyApp08
//
//  Created by iii on 2017/6/26.
//  Copyright © 2017年 iii. All rights reserved.
//

import UIKit

class testTouchVC: UIViewController {
    
    @IBOutlet weak var myview: TestTouchView!
    
    var a = 321
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myview.backgroundColor = UIColor(colorLiteralRed: 1, green: 1, blue: 0, alpha: 1)
        
        let tapGesture = UITapGestureRecognizer(target: self,
                                                action: #selector(tapTest(_:)))
        tapGesture.numberOfTapsRequired = 2
        tapGesture.numberOfTouchesRequired = 2
        myview.addGestureRecognizer(tapGesture)
        
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(pinchTest(_:)))
        //myview.addGestureRecognizer(pinchGesture)
        let rotationGesture = UIRotationGestureRecognizer(target: self, action: #selector(rotationTest(_:)))
        myview.addGestureRecognizer(rotationGesture)
        
        let swipeRGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeTest(_:)))
        swipeRGesture.direction = UISwipeGestureRecognizerDirection.right
        swipeRGesture.numberOfTouchesRequired = 1
        myview.addGestureRecognizer(swipeRGesture)

        let swipeLGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeTest(_:)))
        swipeLGesture.direction = UISwipeGestureRecognizerDirection.left
        swipeLGesture.numberOfTouchesRequired = 1
        myview.addGestureRecognizer(swipeLGesture)
        
        let swipeUGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeTest(_:)))
        swipeUGesture.direction = UISwipeGestureRecognizerDirection.up
        swipeUGesture.numberOfTouchesRequired = 1
        myview.addGestureRecognizer(swipeUGesture)
        
        let swipeDGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeTest(_:)))
        swipeDGesture.direction = UISwipeGestureRecognizerDirection.down
        swipeDGesture.numberOfTouchesRequired = 1
        myview.addGestureRecognizer(swipeDGesture)


        
    }
    
    @objc func tapTest(_ sender : UITapGestureRecognizer) {
        print("two finger touch")
        
        print("point number = \(sender.numberOfTouches)")
        
        let point0 = sender.location(ofTouch: 0, in: sender.view)
        print("0. \(point0.x) x \(point0.y)")
        let point1 = sender.location(ofTouch: 1, in: sender.view)
        print("1. \(point1.x) x \(point1.y)")
        
    }
    
    @objc func pinchTest(_ sender: UIPinchGestureRecognizer){
        if sender.state == UIGestureRecognizerState.changed {
            print(sender.scale)     // 1 為 base number
        }
    }
    
    @objc func rotationTest(_ sender: UIRotationGestureRecognizer){
        let rad = sender.rotation
        let deg = Float(rad) * Float(180) / Float(M_PI)
        if deg > 0 {
            print("順:\(deg)")
        }else {
            print("逆:\(deg)")
        }
    }
    @objc func swipeTest(_ sender: UISwipeGestureRecognizer){
        switch sender.direction {
        case UISwipeGestureRecognizerDirection.right:
            print("r")
        case UISwipeGestureRecognizerDirection.up:
            print("u")
        case UISwipeGestureRecognizerDirection.down:
            print("d")
        case UISwipeGestureRecognizerDirection.left:
            print("l")
        default:
            break
        }
    }
    
    //    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    //        print("vc touch")
    //    }
}
