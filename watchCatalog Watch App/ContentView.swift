#Preview {
    ContentView()
}

import SwiftUI
import WatchKit

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Text & Labels", destination: TextComponentsView())
                NavigationLink("Buttons", destination: ButtonComponentsView())
                NavigationLink("Input Controls", destination: InputComponentsView())
                NavigationLink("Lists & Pickers", destination: ListComponentsView())
                NavigationLink("Progress & Activity", destination: ProgressComponentsView())
                NavigationLink("Layout", destination: LayoutComponentsView())
                NavigationLink("Images & Media", destination: MediaComponentsView())
                NavigationLink("Navigation", destination: NavigationComponentsView())
            }
            .navigationTitle("Components")
        }
    }
}

// MARK: - Text Components
struct TextComponentsView: View {
    var body: some View {
        List {
            Section("Text Styles") {
                Text("Large Title")
                    .font(.largeTitle)
                
                Text("Title")
                    .font(.title)
                
                Text("Title 2")
                    .font(.title2)
                
                Text("Title 3")
                    .font(.title3)
                
                Text("Headline")
                    .font(.headline)
                
                Text("Body")
                    .font(.body)
                
                Text("Callout")
                    .font(.callout)
                
                Text("Subheadline")
                    .font(.subheadline)
                
                Text("Footnote")
                    .font(.footnote)
                
                Text("Caption")
                    .font(.caption)
                
                Text("Caption 2")
                    .font(.caption2)
            }
            
            Section("Text Modifiers") {
                Text("Bold Text")
                    .bold()
                
                Text("Italic Text")
                    .italic()
                
                Text("Underlined Text")
                    .underline()
                
                Text("Strikethrough Text")
                    .strikethrough()
                
                Text("Colored Text")
                    .foregroundColor(.blue)
                
                Text("Multiline Text\nThis spans multiple lines\nOn Apple Watch")
                    .multilineTextAlignment(.center)
            }
            
            Section("Labels") {
                Label("Heart Rate", systemImage: "heart.fill")
                Label("Steps", systemImage: "figure.walk")
                Label("Battery", systemImage: "battery.100")
            }
        }
        .navigationTitle("Text")
    }
}

// MARK: - Button Components
struct ButtonComponentsView: View {
    var body: some View {
        List {
            Section("Basic Buttons") {
                Button("Default Button") {
                    // Action
                }
                
                Button("Destructive Button") {
                    // Action
                }
                .foregroundColor(.red)
                
                Button("Disabled Button") {
                    // Action
                }
                .disabled(true)
            }
            
            Section("Button Styles") {
                Button("Bordered Button") {
                    // Action
                }
                .buttonStyle(.bordered)
                
                Button("Borderless Button") {
                    // Action
                }
                .buttonStyle(.borderless)
                
                Button("Plain Button") {
                    // Action
                }
                .buttonStyle(.plain)
            }
            
            Section("Icon Buttons") {
                Button(action: {}) {
                    Image(systemName: "heart.fill")
                }
                .foregroundColor(.red)
                
                Button(action: {}) {
                    Label("Play", systemImage: "play.fill")
                }
                .foregroundColor(.green)
            }
        }
        .navigationTitle("Buttons")
    }
}

// MARK: - Input Components
struct InputComponentsView: View {
    @State private var toggleValue = false
    @State private var sliderValue = 50.0
    @State private var stepperValue = 5
    
    var body: some View {
        List {
            Section("Toggle") {
                Toggle("Enable Feature", isOn: $toggleValue)
                
                Toggle(isOn: $toggleValue) {
                    Label("Notifications", systemImage: "bell")
                }
            }
            
            Section("Slider") {
                VStack {
                    Slider(value: $sliderValue, in: 0...100)
                    Text("Value: \(Int(sliderValue))")
                        .font(.caption)
                }
            }
            
            Section("Stepper") {
                Stepper("Count: \(stepperValue)", value: $stepperValue, in: 0...10)
            }
            
            Section("Digital Crown") {
                VStack {
                    Text("Crown Value")
                    Text("\(Int(sliderValue))")
                        .font(.title2)
                        .digitalCrownRotation($sliderValue, from: 0, through: 100, by: 1, sensitivity: .medium)
                }
            }
        }
        .navigationTitle("Input")
    }
}

// MARK: - List Components
struct ListComponentsView: View {
    @State private var selectedItem = "Option 1"
    
    let items = ["Option 1", "Option 2", "Option 3", "Option 4"]
    
    var body: some View {
        List {
            Section("Basic List") {
                ForEach(1...5, id: \.self) { index in
                    HStack {
                        Text("Item \(index)")
                        Spacer()
                        Text("Detail")
                            .foregroundColor(.secondary)
                    }
                }
            }
            
            Section("List with Icons") {
                HStack {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                    Text("Health")
                }
                
                HStack {
                    Image(systemName: "figure.walk")
                        .foregroundColor(.green)
                    Text("Activity")
                }
                
                HStack {
                    Image(systemName: "moon.fill")
                        .foregroundColor(.blue)
                    Text("Sleep")
                }
            }
            
            NavigationLink("Picker Demo", destination: PickerDemoView())
        }
        .navigationTitle("Lists")
    }
}

struct PickerDemoView: View {
    @State private var selectedItem = "Option 1"
    
    let items = ["Option 1", "Option 2", "Option 3", "Option 4"]
    
    var body: some View {
        VStack {
            Picker("Select Option", selection: $selectedItem) {
                ForEach(items, id: \.self) { item in
                    Text(item).tag(item)
                }
            }
            .pickerStyle(.wheel)
            
            Text("Selected: \(selectedItem)")
                .font(.caption)
        }
        .navigationTitle("Picker")
    }
}

// MARK: - Progress Components
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

// MARK: - Layout Components
struct LayoutComponentsView: View {
    var body: some View {
        List {
            NavigationLink("HStack Demo", destination: HStackDemoView())
            NavigationLink("VStack Demo", destination: VStackDemoView())
            NavigationLink("ZStack Demo", destination: ZStackDemoView())
            NavigationLink("Grid Demo", destination: GridDemoView())
            NavigationLink("ScrollView Demo", destination: ScrollViewDemoView())
        }
        .navigationTitle("Layout")
    }
}

struct HStackDemoView: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("Left")
                Spacer()
                Text("Right")
            }
            
            HStack(spacing: 5) {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
                Text("120")
                Text("BPM")
                    .foregroundColor(.secondary)
            }
            
            HStack {
                Button("Cancel") { }
                    .foregroundColor(.red)
                Button("OK") { }
                    .foregroundColor(.green)
            }
        }
        .navigationTitle("HStack")
    }
}

struct VStackDemoView: View {
    var body: some View {
        VStack(spacing: 15) {
            Text("Title")
                .font(.headline)
            
            Text("Subtitle")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            Text("Body text goes here and can span multiple lines in a VStack layout.")
                .font(.body)
                .multilineTextAlignment(.center)
            
            Button("Action") { }
        }
        .navigationTitle("VStack")
    }
}

struct ZStackDemoView: View {
    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                Circle()
                    .fill(Color.blue.opacity(0.3))
                    .frame(width: 80, height: 80)
                
                Text("42")
                    .font(.title2)
                    .bold()
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.green.opacity(0.2))
                    .frame(height: 60)
                
                HStack {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                    Text("Complete")
                }
            }
        }
        .navigationTitle("ZStack")
    }
}

struct GridDemoView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(1...8, id: \.self) { index in
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.blue.opacity(0.3))
                        .frame(height: 40)
                        .overlay(Text("\(index)"))
                }
            }
            .padding()
        }
        .navigationTitle("Grid")
    }
}

struct ScrollViewDemoView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(1...20, id: \.self) { index in
                    HStack {
                        Text("Item \(index)")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.secondary)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                }
            }
            .padding()
        }
        .navigationTitle("ScrollView")
    }
}

// MARK: - Media Components
struct MediaComponentsView: View {
    var body: some View {
        List {
            Section("System Images") {
                HStack {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "flag.fill")
                        .foregroundColor(.blue)
                }
                
                HStack {
                    Image(systemName: "person.fill")
                        .imageScale(.small)
                    Image(systemName: "person.fill")
                        .imageScale(.medium)
                    Image(systemName: "person.fill")
                        .imageScale(.large)
                }
            }
            
            Section("Shapes") {
                HStack {
                    Circle()
                        .fill(Color.red)
                        .frame(width: 30, height: 30)
                    
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 30, height: 30)
                    
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.blue)
                        .frame(width: 30, height: 30)
                }
                
                HStack {
                    Capsule()
                        .fill(Color.purple)
                        .frame(width: 60, height: 20)
                    
                    Ellipse()
                        .fill(Color.orange)
                        .frame(width: 40, height: 25)
                }
            }
            
            Section("Async Image") {
                AsyncImage(url: URL(string: "https://picsum.photos/100/100")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            }
        }
        .navigationTitle("Media")
    }
}

// MARK: - Navigation Components
struct NavigationComponentsView: View {
    @State private var showingSheet = false
    @State private var showingAlert = false
    
    var body: some View {
        List {
            Section("Navigation") {
                NavigationLink("Detail View", destination: DetailView())
                
                Button("Present Sheet") {
                    showingSheet = true
                }
                .sheet(isPresented: $showingSheet) {
                    SheetView()
                }
                
                Button("Show Alert") {
                    showingAlert = true
                }
                .alert("Alert Title", isPresented: $showingAlert) {
                    Button("OK") { }
                    Button("Cancel", role: .cancel) { }
                } message: {
                    Text("This is an alert message.")
                }
            }
            
            Section("Tab View") {
                NavigationLink("Tab Demo", destination: TabDemoView())
            }
        }
        .navigationTitle("Navigation")
    }
}

struct DetailView: View {
    var body: some View {
        VStack {
            Text("Detail View")
                .font(.title2)
            
            Text("This is a detail view accessed via NavigationLink")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
        }
        .navigationTitle("Detail")
    }
}

struct SheetView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Text("Sheet View")
                .font(.title2)
            
            Text("This is a modal sheet presentation")
                .font(.body)
                .padding()
            
            Button("Dismiss") {
                dismiss()
            }
        }
    }
}

struct TabDemoView: View {
    var body: some View {
        TabView {
            VStack {
                Image(systemName: "heart.fill")
                    .font(.title)
                    .foregroundColor(.red)
                Text("Health")
            }
            .tabItem {
                Image(systemName: "heart")
                Text("Health")
            }
            
            VStack {
                Image(systemName: "figure.walk")
                    .font(.title)
                    .foregroundColor(.green)
                Text("Activity")
            }
            .tabItem {
                Image(systemName: "figure.walk")
                Text("Activity")
            }
            
            VStack {
                Image(systemName: "gear")
                    .font(.title)
                    .foregroundColor(.blue)
                Text("Settings")
            }
            .tabItem {
                Image(systemName: "gear")
                Text("Settings")
            }
        }
        .navigationTitle("Tabs")
    }
}
