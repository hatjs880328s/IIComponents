//
//  IIDatePicker.swift
//  impcloud_dev
//
//  Created by Noah_Shan on 2018/8/8.
//  Copyright © 2018 Elliot. All rights reserved.
//

import Foundation
import IIUIAndBizConfig
import IISwiftBaseUti

/*
 此datepicker是在jxh同学基础上做的修改，在此感谢
 主要是对一些颜色以及样式的二次开发，以符合Inspur工程项目集成的要求
 ：）
 */
class IIDatePicker: NSObject {
    
    var ins: WSDatePickerView?
    
    init(haveMinDate: Bool = false, each10MinsProgress: Bool = false, scrollDate: Date!, type: WSDateStyle, endAction:@escaping (_ dateInfo: Date?) -> Void) {
        super.init()
        let picker = WSDatePickerView(dateStyle: type, each10MinsProgress: each10MinsProgress, scrollTo: scrollDate) { (date) in
            endAction(date)
        }
        if haveMinDate {
            picker?.minLimitDate = Date()
        }
        picker?.sureEach10MinsProgress = each10MinsProgress
        picker?.doneButtonColor = UIColor.white
        picker?.dateLabelColor = APPUIConfigX.mainCharColor
        picker?.hideBackgroundYearLabel = true
        
        self.ins = picker
    }
    
    func show() {
        self.ins?.show()
    }
    
}
