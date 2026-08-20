//
// Here you can customize specific colors on the widget.
// These changes can be integrated into any function,
// or set to react to any app event or widget trigger.
//

import SwiftUI
import Limooonik

struct ChangeSettings {
    
    static var current: DuolingoConfig {
        var config = DuolingoConfig()
        
        // 1. PUPILS COLOR
        config.pupilsColor = .black
        
        // 2. SCLERA COLOR
        config.scleraColor = .white
        
        // 3. LEGS COLOR
        config.legsColor = Color(red: 255 / 255, green: 172 / 255, blue: 0 / 255)
        
        return config
    }
}

