//
//  SampleView.swift
//  GoingNative
//
//  Created by Daniel Friyia on 2021-10-09.
//

import Foundation
import UIKit

class SampleView: UIView {
  @objc var onUpdate: RCTDirectEventBlock?
  
  @objc var myColor: NSString = "" {
    didSet {
      updateComponent()
    }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    let press = UITapGestureRecognizer(
      target: self,
      action: #selector(sendUpdate(_:))
    )
    self.addGestureRecognizer(press)
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
  }
  
  @objc func sendUpdate(_ sender: UITapGestureRecognizer? = nil) {
      if onUpdate != nil {
        onUpdate!(["isPressed": true])
      }
  }
  
  func updateComponent() {
    switch self.myColor {
    case "blue":
      self.backgroundColor = .blue
      break
    default:
      self.backgroundColor = .red
      break
    }
  }
}
