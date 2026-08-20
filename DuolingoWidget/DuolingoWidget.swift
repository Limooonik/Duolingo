import SwiftUI
import WidgetKit
import AppIntents
import Limooonik

@main
struct DuolingoWidget: Widget {
    let kind: String = "DuolingoWidget"
    
    let config = ChangeSettings.current

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Limooonik.Provider(config: config)) { entry in
            Button(intent: ReloadAnimIntent()) {
                
                Limooonik.DuolingoView(entry: entry)
                    .containerBackground(.black, for: .widget)
                
            }
            .buttonStyle(.plain)
        }
        .configurationDisplayName("Duolingo PoC")
        .description("Native Animation")
        .supportedFamilies([.systemLarge, .systemSmall])
    }
}

struct ReloadAnimIntent: AppIntent {
    static var title: LocalizedStringResource { "Reload Animation" }
    static var openAppWhenRun: Bool { false }
    
    func perform() async throws -> some IntentResult {
        WidgetCenter.shared.reloadAllTimelines()
        return .result()
    }
}
