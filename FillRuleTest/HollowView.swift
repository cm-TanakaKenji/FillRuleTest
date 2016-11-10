//
//  TestView.swift
//  FillRuleTest
//
//  Created by tanaka.kenji on 2016/11/10.
//  Copyright © 2016年 tanaka.kenji. All rights reserved.
//

import UIKit

class HollowView: UIView {
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let maskLayer = CAShapeLayer()
        maskLayer.bounds = layer.bounds
        
        let outerRectanglePath = UIBezierPath(rect: layer.bounds)
        let interRectanglePath = UIBezierPath(rect: CGRect(
            x: 20,
            y: 20,
            width: layer.bounds.size.width / 2,
            height: layer.bounds.size.height / 2
        ))
        outerRectanglePath.appendPath(interRectanglePath)
        
        maskLayer.path = outerRectanglePath.CGPath
        maskLayer.position = CGPoint(
            x: CGRectGetWidth(layer.bounds) / 2.0,
            y: CGRectGetHeight(layer.bounds) / 2.0
        )
        
        maskLayer.fillRule = kCAFillRuleEvenOdd
//        maskLayer.fillRule = kCAFillRuleNonZero
        layer.mask = maskLayer
    }
    
}