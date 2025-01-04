import SwiftUI

struct ControlFamilyDetailView: View {
    let familyName: String
    let controls: [Control] = [
        Control(name: "Control 1: Policy and Procedures", description: "Develop, document, and disseminate access control policies and procedures."),
        Control(name: "Control 2: Account Management", description: "Manage information system accounts, including establishing, activating, modifying, and reviewing them.")
    ]
    
    var body: some View {
        List(controls) { control in
            DisclosureGroup(control.name) {
                Text(control.description)
                    .font(.body)
                    .padding(.vertical, 5)
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("\(familyName) Controls")
    }
}

struct Control: Identifiable {
    let id = UUID()
    let name: String
    let description: String
}

struct ControlFamilyDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ControlFamilyDetailView(familyName: "Access Control")
    }
}

