//
//  ViewController.swift
//  Demo-Animation
//
//  Created by Lightway on 10/8/18.
//  Copyright © 2018 Lightway. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let layerOne = CAShapeLayer()
    let layerTwo = CAShapeLayer()
    let layerThree = CAShapeLayer()
    let layerFour = CAShapeLayer()
    let layerFive = CAShapeLayer()
    let layerSix = CAShapeLayer()
    let layerSeven = CAShapeLayer()
    let layerEight = CAShapeLayer()
    let layerNine = CAShapeLayer()
    
    var circleSize = [250,227,204,181,158,135,112,89,66]
    var circleWidth = 20
    var circleStrokeEnd = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Drawing a circle
        let center = view.center
        
        // Creating track for circle
        
        let circleOne = UIBezierPath(arcCenter: center, radius: CGFloat(circleSize[0]), startAngle: CGFloat.pi / 2, endAngle: 1*CGFloat.pi, clockwise: true)
        layerOne.path = circleOne.cgPath
        layerOne.strokeColor = UIColor.red.cgColor
        layerOne.lineWidth = CGFloat(circleWidth)
        layerOne.fillColor = UIColor.clear.cgColor
        layerOne.lineCap = CAShapeLayerLineCap.round
        layerOne.strokeEnd = CGFloat(circleStrokeEnd)
        view.layer.addSublayer(layerOne)
        
        let circleTwo = UIBezierPath(arcCenter: center, radius: CGFloat(circleSize[1]), startAngle: CGFloat.pi / 2, endAngle: 1.5*CGFloat.pi, clockwise: true)
        layerTwo.path = circleTwo.cgPath
        layerTwo.strokeColor = UIColor.black.cgColor
        layerTwo.lineWidth = CGFloat(circleWidth)
        layerTwo.fillColor = UIColor.clear.cgColor
        layerTwo.lineCap = CAShapeLayerLineCap.round
        layerTwo.strokeEnd = CGFloat(circleStrokeEnd)
        view.layer.addSublayer(layerTwo)
        

        
        let circleThree = UIBezierPath(arcCenter: center, radius: CGFloat(circleSize[2]), startAngle: CGFloat.pi / 2, endAngle: 2*CGFloat.pi, clockwise: true)
        layerThree.path = circleThree.cgPath
        layerThree.strokeColor = UIColor.green.cgColor
        layerThree.lineWidth = CGFloat(circleWidth)
        layerThree.fillColor = UIColor.clear.cgColor
        layerThree.lineCap = CAShapeLayerLineCap.round
        layerThree.strokeEnd = CGFloat(circleStrokeEnd)
        view.layer.addSublayer(layerThree)
        
        let circleFour = UIBezierPath(arcCenter: center, radius: CGFloat(circleSize[3]), startAngle: CGFloat.pi / 2, endAngle: 2*CGFloat.pi, clockwise: true)
        layerFour.path = circleFour.cgPath
        layerFour.strokeColor = UIColor.blue.cgColor
        layerFour.lineWidth = CGFloat(circleWidth)
        layerFour.fillColor = UIColor.clear.cgColor
        layerFour.lineCap = CAShapeLayerLineCap.round
        layerFour.strokeEnd = CGFloat(circleStrokeEnd)
        view.layer.addSublayer(layerFour)
        
        let circleFive = UIBezierPath(arcCenter: center, radius: CGFloat(circleSize[4]), startAngle: CGFloat.pi / 2, endAngle: 2*CGFloat.pi, clockwise: true)
        layerFive.path = circleFive.cgPath
        layerFive.strokeColor = UIColor.gray.cgColor
        layerFive.lineWidth = CGFloat(circleWidth)
        layerFive.fillColor = UIColor.clear.cgColor
        layerFive.lineCap = CAShapeLayerLineCap.round
        layerFive.strokeEnd = CGFloat(circleStrokeEnd)
        view.layer.addSublayer(layerFive)
        
        let circleSix = UIBezierPath(arcCenter: center, radius: CGFloat(circleSize[5]), startAngle: CGFloat.pi / 2, endAngle: 2*CGFloat.pi, clockwise: true)
        layerSix.path = circleSix.cgPath
        layerSix.strokeColor = UIColor.orange.cgColor
        layerSix.lineWidth = CGFloat(circleWidth)
        layerSix.fillColor = UIColor.clear.cgColor
        layerSix.lineCap = CAShapeLayerLineCap.round
        layerSix.strokeEnd = CGFloat(circleStrokeEnd)
        view.layer.addSublayer(layerSix)
        
        let circleSeven = UIBezierPath(arcCenter: center, radius: CGFloat(circleSize[6]), startAngle: CGFloat.pi / 2, endAngle: 2*CGFloat.pi, clockwise: true)
        layerSeven.path = circleSeven.cgPath
        layerSeven.strokeColor = UIColor.brown.cgColor
        layerSeven.lineWidth = CGFloat(circleWidth)
        layerSeven.fillColor = UIColor.clear.cgColor
        layerSeven.lineCap = CAShapeLayerLineCap.round
        layerSeven.strokeEnd = CGFloat(circleStrokeEnd)
        view.layer.addSublayer(layerSeven)
        
        let circleEight = UIBezierPath(arcCenter: center, radius: CGFloat(circleSize[7]), startAngle: CGFloat.pi / 2, endAngle: 2*CGFloat.pi, clockwise: true)
        layerEight.path = circleEight.cgPath
        layerEight.strokeColor = UIColor.darkGray.cgColor
        layerEight.lineWidth = CGFloat(circleWidth)
        layerEight.fillColor = UIColor.clear.cgColor
        layerEight.lineCap = CAShapeLayerLineCap.round
        layerEight.strokeEnd = CGFloat(circleStrokeEnd)
        view.layer.addSublayer(layerEight)
        
        let circleNine = UIBezierPath(arcCenter: center, radius: CGFloat(circleSize[8]), startAngle: CGFloat.pi / 2, endAngle: CGFloat.pi, clockwise: true)
        layerNine.path = circleNine.cgPath
        layerNine.strokeColor = UIColor.lightGray.cgColor
        layerNine.lineWidth = CGFloat(circleWidth)
        layerNine.fillColor = UIColor.clear.cgColor
        layerNine.lineCap = CAShapeLayerLineCap.round
        layerNine.strokeEnd = CGFloat(circleStrokeEnd)
        view.layer.addSublayer(layerNine)
        
        view.addGestureRecognizer(UITapGestureRecognizer(target:self,action:#selector(handleTap)))
        
    }

    @objc private func handleTap(){
        print("Atempting to animate")
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        basicAnimation.toValue = 1
        basicAnimation.duration = 2
        
        basicAnimation.fillMode = CAMediaTimingFillMode.forwards
        basicAnimation.isRemovedOnCompletion = false
        
        layerOne.add(basicAnimation,forKey: "urSoBasic")
        layerTwo.add(basicAnimation,forKey: "urSoBasic")
        layerThree.add(basicAnimation,forKey: "urSoBasic")
        layerFour.add(basicAnimation,forKey: "urSoBasic")
        layerFive.add(basicAnimation,forKey: "urSoBasic")
        layerSix.add(basicAnimation,forKey: "urSoBasic")
        layerSeven.add(basicAnimation,forKey: "urSoBasic")
        layerEight.add(basicAnimation,forKey: "urSoBasic")
        layerNine.add(basicAnimation,forKey: "urSoBasic")
    }
}

