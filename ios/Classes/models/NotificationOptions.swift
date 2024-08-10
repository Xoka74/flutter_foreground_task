//
//  NotificationOptions.swift
//  flutter_foreground_task
//
//  Created by Woo Jin Hwang on 8/2/24.
//

import Foundation

struct NotificationOptions {
  let playSound: Bool
  let showBanner: Bool
  let showInCenter: Bool
  
  static func getData() -> NotificationOptions {
    let prefs = UserDefaults.standard
    let playSound = prefs.bool(forKey: PLAY_SOUND)
    let showBanner = prefs.bool(forKey: SHOW_BANNER)
    let showInCenter = prefs.bool(forKey: SHOW_IN_CENTER)
    
    return NotificationOptions(
      playSound: playSound,
      showBanner: showBanner,
      showInCenter: showInCenter
    )
  }
  
  static func setData(args: Dictionary<String, Any>) {
    let playSound = args[PLAY_SOUND] as? Bool ?? false
    let showBanner = args[SHOW_BANNER] as? Bool ?? false
    let showInCenter = args[SHOW_IN_CENTER] as? Bool ?? false
    
    let prefs = UserDefaults.standard
    prefs.set(playSound, forKey: PLAY_SOUND)
    prefs.set(showBanner, forKey: SHOW_BANNER)
    prefs.set(showInCenter, forKey: SHOW_IN_CENTER)
  }
  
  static func clearData() {
    let prefs = UserDefaults.standard
    prefs.removeObject(forKey: PLAY_SOUND)
    prefs.removeObject(forKey: SHOW_BANNER)
    prefs.removeObject(forKey: SHOW_IN_CENTER)
  }
}
