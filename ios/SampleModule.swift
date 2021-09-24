//
//  SampleModule.swift
//  NativeComponentLesson
//
//  Created by Daniel Friyia on 2021-09-22.
//
import Foundation

@objc(Clock)
class Clock: RCTEventEmitter {
  
  var timer: Timer?
  var count: Int = 0
  
  @objc override static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  override func constantsToExport() -> [AnyHashable : Any]! {
    [:]
  }
  
  override func supportedEvents() -> [String]! {
    return ["onTimeUpdated"]
  }
  
  @objc func getCurrentTime(
    _ resolve: @escaping RCTPromiseResolveBlock,
    rejecter reject: @escaping RCTPromiseRejectBlock
  ) -> Void {
      let formatter = ISO8601DateFormatter()
      let isoDate = formatter.string(from: Date())
      resolve(isoDate)
  }
  
  @objc func onTimeUpdated() {
    count += 1
    sendEvent(withName: "onTimeUpdated", body: ["count": count])
  }
    
  @objc func dispatchEventEverySecond() {
      DispatchQueue.main.async {
        self.timer = Timer.scheduledTimer(
          timeInterval: 1,
          target: self,
          selector: #selector(self.onTimeUpdated),
          userInfo: nil,
          repeats: true)
      }
  }
}
