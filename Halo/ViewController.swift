//
//  ViewController.swift
//  Halo
//
//  Created by NixonShih on 2016/11/3.
//  Copyright © 2016年 Nixon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var square: UIView!
    
    private let triangleLayer = CAShapeLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        square.layer.masksToBounds = false
        square.layer.shadowOffset = CGSize(width: 0, height: 0)
        square.layer.shadowRadius = 15
        square.layer.shadowOpacity = 0.8
        square.layer.shadowColor = UIColor.blue.cgColor
        
        square.layer.cornerRadius = UIScreen.main.bounds.size.width / 4
//        square.isHidden = true

        
        let trianglePath = UIBezierPath()
        trianglePath.move(to: CGPoint(x: view.center.x - UIScreen.main.bounds.size.width / 4,y: view.center.y))
        trianglePath.addLine(to: CGPoint(x: view.center.x,y: view.center.y - UIScreen.main.bounds.size.width / 2))
        trianglePath.addLine(to: CGPoint(x: view.center.x + UIScreen.main.bounds.size.width / 4,y: view.center.y))
        trianglePath.close()
        
        triangleLayer.path = trianglePath.cgPath
        triangleLayer.lineWidth = 2
        triangleLayer.strokeColor = UIColor.black.cgColor
        triangleLayer.fillColor = UIColor.clear.cgColor
        
        triangleLayer.shadowOffset = CGSize(width: 0, height: 0)
        triangleLayer.shadowRadius = 2
        triangleLayer.shadowOpacity = 1
        triangleLayer.shadowColor = UIColor.red.cgColor
        
        
        view.layer.addSublayer(triangleLayer)
       
    }

}

