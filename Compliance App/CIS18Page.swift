//
//  CIS18Page.swift
//  Compliance App
//
//  Created by Palak Agarwal on 11/27/24.
//

import SwiftUI

struct CIS18Page: View {
    // List of CIS 18 Controls with their associated explanations
    let cisControls = [
        CISControl(name: "1. Inventory and Control of Enterprise Assets", description: "Actively manage (inventory, track, and correct) all enterprise assets to ensure only authorized devices are given access."),
        CISControl(name: "2. Inventory and Control of Software Assets", description: "Actively manage all software on the network so only authorized software is installed and can execute."),
        CISControl(name: "3. Data Protection", description: "Develop processes and technical controls to identify, classify, secure, and dispose of data."),
        CISControl(name: "4. Secure Configuration of Enterprise Assets and Software", description: "Establish and maintain secure configurations of enterprise assets and software."),
        CISControl(name: "5. Account Management", description: "Use processes and tools to manage access to enterprise assets and associated data."),
        CISControl(name: "6. Access Control Management", description: "Use processes and tools to create, assign, manage, and revoke access credentials and privileges for user, administrator, and service accounts."),
        CISControl(name: "7. Continuous Vulnerability Management", description: "Develop a plan to continuously assess and remediate vulnerabilities."),
        CISControl(name: "8. Audit Log Management", description: "Collect, alert, review, and retain audit logs of events."),
        CISControl(name: "9. Email and Web Browser Protections", description: "Improve protections against malicious email and web content."),
        CISControl(name: "10. Malware Defenses", description: "Control the installation, spread, and execution of malicious code."),
        CISControl(name: "11. Data Recovery", description: "Establish processes and tools to back up critical information with a proven methodology for timely recovery."),
        CISControl(name: "12. Network Infrastructure Management", description: "Establish and maintain secure network infrastructure."),
        CISControl(name: "13. Network Monitoring and Defense", description: "Operate processes and tools to prevent, detect, and respond to network attacks."),
        CISControl(name: "14. Security Awareness and Skills Training", description: "Establish and maintain a security awareness program to train the workforce."),
        CISControl(name: "15. Service Provider Management", description: "Develop processes and tools to evaluate service providers who manage enterprise assets and data."),
        CISControl(name: "16. Application Software Security", description: "Prevent, detect, and correct security weaknesses in application software."),
        CISControl(name: "17. Incident Response Management", description: "Establish an incident response program to prepare for, detect, and respond to security incidents."),
        CISControl(name: "18. Penetration Testing", description: "Test the effectiveness and resilience of enterprise assets and personnel against attacks.")
    ]
    
    var body: some View {
        List(cisControls) { control in
            DisclosureGroup(control.name) {
                Text(control.description)
                    .font(.body)
                    .padding(.vertical, 5)
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("CIS 18 Controls")
    }
}

// Model for a CIS Control
struct CISControl: Identifiable {
    let id = UUID()
    let name: String
    let description: String
}

struct CIS18Page_Previews: PreviewProvider {
    static var previews: some View {
        CIS18Page()
    }
}

#Preview {
    CIS18Page()
}
