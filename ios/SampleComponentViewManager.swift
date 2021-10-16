//
//  SampleComponentViewManager.swift
//  GoingNative
//
//  Created by Daniel Friyia on 2021-10-09.
//

import Foundation

@objc (SampleComponentManager)
class SampleComponentManager: RCTViewManager {
  override func view() -> UIView! {
    let labelView = SampleView()
    labelView.backgroundColor = .red
    return labelView
  }
}
