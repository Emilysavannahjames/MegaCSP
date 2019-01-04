//
//  ViewController.swift
//  EmilyAlgorithm
//
//  Created by James, Emily on 10/23/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

class AlgorithmViewController: UIViewController
{
  
    @IBOutlet weak var algorithmText : UILabel!
    
    @IBOutlet weak var swiftImage : UIImageView!
    
    public override func viewDidLoad() -> Void
    {
       //do any additional setup after loading the view, ty[ically from a nib.
        formatAlgorithm()
    }
    
    private func formatAlgorithm() -> Void
    {
        let title : String = "How to "
        
        let stepOne : String = "First: "
        let stepTwo : String = "Second:  "
        let stepThree : String = "Third:  "
        let stepFour : String = "Fourth:  "
        let stepFive : String = "Fifth:  "
        
        let algorithm = [stepOne, stepTwo, stepThree, stepFour, stepFive]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary)
        
        for step in algorithm
        {
            let bullet : String = "🐻" //edit tab for emoji
            let formattedStep : String = "\n\(bullet) \(step)" //interpolation- strings pushed together
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let outlineStyle = createOutineStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : outlineStyle], range: NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        algorithmText.attributedText = fullAttributedString
    }
    
    private func createOutineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
    }

}

