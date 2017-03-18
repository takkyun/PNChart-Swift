//
//  PNGenericChart.swift
//  PNChartSwift
//
//  Created by YiChen Zhou on 12/27/16.
//  Copyright © 2016 YiChen Zhou. All rights reserved.
//

import UIKit

public class PNGenericChart: UIView {
    public var hasLegend: Bool!
    public var legendPosition: PNLegendPosition!
    public var legendStyle: PNLegendItemStyle!
    public var legendFont: UIFont!
    public var legendFontColor: UIColor!
    public var labelRowsInSerialMode: Int!
    public var displayAnimation: Bool!
    
    public func setupDefaultValues() {
        hasLegend = true
        legendPosition = .Bottom
        legendStyle = .Stacked
        labelRowsInSerialMode = 1
        displayAnimation = true
    }
    
    public func getLegendWIthMaxWidth(maxWidth: Float) -> UIView! {
        //self.doesNotRecognizeSelector(_cmd)
        return nil
    }
    
    func setLabelRowsInSerialMode(num: Int) {
        if legendStyle == .Serial {
            labelRowsInSerialMode = num
        } else {
            labelRowsInSerialMode = 1
        }
    }
}

extension PNGenericChart {
    public enum PNLegendPosition: Int {
        case Top = 0
        case Bottom = 1
        case Left = 2
        case Right = 3
    }
    
    public enum PNLegendItemStyle: Int {
        case Stacked = 0
        case Serial = 1
    }
}
