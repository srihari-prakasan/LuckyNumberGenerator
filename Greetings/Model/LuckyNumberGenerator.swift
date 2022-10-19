//
//  LuckyNumberName.swift
//  Greetings
//
//  Created by Trenser-01 on 19/10/22.
//

import Foundation
protocol UiManagerDelegate{
    func updateUI(luckyNumber: Int)

}
public class LuckyNumberGenerator{
    var delegate:UiManagerDelegate?
    
    func generate(name: String){
        let luckyNumber=(100 - name.count)/name.count
        delegate?.updateUI(luckyNumber: luckyNumber)
    }
    
}

