import SwiftUI
import WatchKit

struct ProgressComponentsView: View {
    @State private var progress = 0.6
    
    var body: some View {
        List {
            Section("Progress Views") {
                VStack {
                    ProgressView("Loading...", value: progress)
                    Text("\(Int(progress * 100))%")
                        .font(.caption)
                }
                
                ProgressView("Indeterminate")
            }
            
            Section("Activity Rings Style") {
                VStack {
                    ZStack {
                        Circle()
                            .stroke(Color.red.opacity(0.3), lineWidth: 8)
                            .frame(width: 60, height: 60)
                        
                        Circle()
                            .trim(from: 0, to: progress)
                            .stroke(Color.red, style: StrokeStyle(lineWidth: 8, lineCap: .round))
                            .frame(width: 60, height: 60)
                            .rotationEffect(.degrees(-90))
                    }
                    
                    Text("Move Goal")
                        .font(.caption)
                }
            }
            
            Section("Gauge") {
                Gauge(value: progress, in: 0...1) {
                    Text("Speed")
                } currentValueLabel: {
                    Text("\(Int(progress * 100))")
                }
                .gaugeStyle(.accessoryCircular)
            }
        }
        .navigationTitle("Progress")
    }
}
