//
//  ColorAttribute.swift
//  InnovationTasks
//
//  Created by Matheus Henrique on 15/02/22.
//

import Foundation
import UIKit

public class ColorAttribute: ValueTransformer {
    override public class func allowsReverseTransformation() -> Bool{
        return true
    }
    override public func transformedValue(_ value: Any?) -> Any? {
        guard let color = value as? UIColor else {return nil}
    
        return try! NSKeyedArchiver.archivedData(withRootObject: color, requiringSecureCoding: false)
    }
    override public func reverseTransformedValue(_ value: Any?) -> Any? {
        guard let color = try! NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(value as! Data) else { return nil}
        
        return color as! UIColor
    }
    
}
