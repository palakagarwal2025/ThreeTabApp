//
//  NIST171Page.swift
//  Compliance App
//
//  Created by Palak Agarwal on 11/27/24.
//

import SwiftUI

struct NIST171Page: View {
    @State private var selectedLevel: String = "Level 1" // Default Level 1
    let levels = ["Level 1", "Level 2", "Level 3"] // CMMC Levels

    // Full Level 1 controls
    let level1Controls = [
        CMMCControl(
            title: "AC.L1-3.1.1 – Authorized Access Control [FCI DATA]",
            description: "Limit information system access to authorized users, processes acting on behalf of authorized users, or devices (including other information systems).",
            objectives: [
                "Determine if authorized users are identified.",
                "Determine if processes acting on behalf of authorized users are identified.",
                "Determine if devices (and other systems) authorized to connect to the system are identified.",
                "Determine if system access is limited to authorized users.",
                "Determine if system access is limited to processes acting on behalf of authorized users.",
                "Determine if system access is limited to authorized devices (including other systems)."
            ]
        ),
        CMMCControl(
            title: "AC.L1-3.1.2 – Transaction & Function Control [FCI DATA]",
            description: "Limit system access to the types of transactions and functions that authorized users are permitted to execute.",
            objectives: [
                "Determine if types of transactions authorized users are permitted to execute are identified.",
                "Determine if types of functions authorized users are permitted to execute are identified.",
                "Determine if system access is limited to authorized transactions and functions."
            ]
        ),
        CMMCControl(
            title: "AC.L1-3.1.3 – External Connections [FCI DATA]",
            description: "Verify and control/limit connections to and use of external systems.",
            objectives: [
                "Determine if connections to external systems are verified.",
                "Determine if connections to external systems are limited.",
                "Determine if use of external systems is verified and controlled."
            ]
        ),
        CMMCControl(
            title: "AC.L1-3.1.4 – Control Public Information [FCI DATA]",
            description: "Control information posted or processed on publicly accessible information systems.",
            objectives: [
                "Determine if publicly accessible information systems are identified.",
                "Determine if controls are implemented to limit posting of information on publicly accessible systems.",
                "Determine if information processing on publicly accessible systems is limited."
            ]
        ),
        CMMCControl(
            title: "IA.L1-3.5.1 – Identification [FCI DATA]",
            description: "Identify information system users, processes acting on behalf of users, or devices.",
            objectives: [
                "Determine if information system users are uniquely identified.",
                "Determine if processes acting on behalf of users are uniquely identified.",
                "Determine if devices accessing the information system are uniquely identified."
            ]
        ),
        CMMCControl(
            title: "IA.L1-3.5.2 – Authentication [FCI DATA]",
            description: "Authenticate (or verify) the identities of those users, processes, or devices, as a prerequisite to allowing access to organizational information systems.",
            objectives: [
                "Determine if the identity of each user is authenticated.",
                "Determine if the identity of each process acting on behalf of a user is authenticated.",
                "Determine if the identity of each device accessing the system is authenticated."
            ]
        ),
        CMMCControl(
            title: "MP.L1-3.8.1 – Media Disposal [FCI DATA]",
            description: "Sanitize or destroy information system media containing Federal Contract Information before disposal or release for reuse.",
            objectives: [
                "Determine if information system media containing Federal Contract Information is sanitized before disposal.",
                "Determine if information system media containing Federal Contract Information is destroyed before disposal.",
                "Determine if information system media containing Federal Contract Information is sanitized before being released for reuse."
            ]
        ),
        CMMCControl(
            title: "PE.L1-3.10.1 – Limit Physical Access [FCI DATA]",
            description: "Limit physical access to organizational information systems, equipment, and the respective operating environments to authorized individuals.",
            objectives: [
                "Determine if physical access to information systems is limited to authorized individuals.",
                "Determine if physical access to equipment is limited to authorized individuals.",
                "Determine if physical access to operating environments is limited to authorized individuals."
            ]
        ),
        CMMCControl(
            title: "PE.L1-3.10.3 – Manage Visitors & Physical Access [FCI DATA]",
            description: "Escort visitors and monitor visitor activity.",
            objectives: [
                "Determine if visitors are escorted when accessing information system facilities.",
                "Determine if visitor activity is monitored while visitors are in the information system facilities."
            ]
        ),
        CMMCControl(
            title: "SC.L1-3.13.1 – Boundary Protection [FCI DATA]",
            description: "Monitor, control, and protect organizational communications at the external boundaries and key internal boundaries of the information systems.",
            objectives: [
                "Determine if organizational communications at the external boundaries are monitored, controlled, and protected.",
                "Determine if organizational communications at key internal boundaries are monitored, controlled, and protected."
            ]
        ),
        CMMCControl(
            title: "SC.L1-3.13.5 – Public-Access System Separation [FCI DATA]",
            description: "Implement subnetworks for publicly accessible system components that are physically or logically separated from internal networks.",
            objectives: [
                "Determine if publicly accessible system components are implemented on separate subnetworks.",
                "Determine if publicly accessible system components are logically separated from internal networks.",
                "Determine if publicly accessible system components are physically separated from internal networks."
            ]
        ),
        CMMCControl(
            title: "SI.L1-3.14.1 – Flaw Remediation [FCI DATA]",
            description: "Identify, report, and correct information system flaws in a timely manner.",
            objectives: [
                "Determine if information system flaws are identified.",
                "Determine if information system flaws are reported.",
                "Determine if information system flaws are corrected in a timely manner."
            ]
        ),
        CMMCControl(
            title: "SI.L1-3.14.2 – Malicious Code Protection [FCI DATA]",
            description: "Provide protection from malicious code at appropriate locations within organizational information systems.",
            objectives: [
                "Determine if protections against malicious code are implemented at appropriate locations.",
                "Determine if protections against malicious code are configured to detect and eradicate malicious code."
            ]
        )
    ]


    // Full Level 2 controls
    let level2Controls = [
        CMMCControl(
            title: "AC.L2-3.1.5 – Account Management",
            description: "Employ the principle of least privilege, including for specific security functions and privileged accounts.",
            objectives: [
                "Determine if privileged accounts are identified.",
                "Determine if privileged accounts are granted least privilege access.",
                "Determine if privileged account access is periodically reviewed."
            ]
        ),
        CMMCControl(
            title: "AC.L2-3.1.6 – Session Lock",
            description: "Use session lock with pattern-hiding displays to prevent access and viewing of data after a period of inactivity.",
            objectives: [
                "Determine if session locks are implemented after a period of inactivity.",
                "Determine if session locks hide patterns of data on display.",
                "Determine if session locks require user reauthentication to unlock."
            ]
        ),
        CMMCControl(
            title: "AC.L2-3.1.7 – Least Privilege",
            description: "Prevent non-privileged users from executing privileged functions and capture the execution of such functions in audit logs.",
            objectives: [
                "Determine if non-privileged users are prevented from executing privileged functions.",
                "Determine if privileged functions executed by non-privileged users are captured in audit logs."
            ]
        ),
        CMMCControl(
            title: "AC.L2-3.1.8 – Remote Access",
            description: "Limit remote access to authorized users and tightly control remote sessions.",
            objectives: [
                "Determine if remote access is limited to authorized users.",
                "Determine if remote sessions are monitored and controlled."
            ]
        ),
        CMMCControl(
            title: "AC.L2-3.1.9 – Wireless Access",
            description: "Control wireless access to organizational information systems.",
            objectives: [
                "Determine if wireless access is authorized and controlled.",
                "Determine if encryption is implemented for wireless communications."
            ]
        ),
        CMMCControl(
            title: "AC.L2-3.1.10 – Mobile Device Access",
            description: "Protect and control access to organizational information systems from mobile devices.",
            objectives: [
                "Determine if mobile devices are authorized to access information systems.",
                "Determine if access from mobile devices is controlled."
            ]
        ),
        CMMCControl(
            title: "IA.L2-3.5.3 – Multifactor Authentication",
            description: "Use multifactor authentication for network access to privileged and non-privileged accounts.",
            objectives: [
                "Determine if multifactor authentication is implemented for privileged accounts.",
                "Determine if multifactor authentication is implemented for non-privileged accounts accessing the network."
            ]
        ),
        CMMCControl(
            title: "IA.L2-3.5.4 – Identifier Management",
            description: "Manage identifiers (e.g., username) by uniquely identifying users and ensuring that each identifier is assigned to only one user.",
            objectives: [
                "Determine if unique identifiers are assigned to users.",
                "Determine if identifiers are reused after an appropriate period of dormancy."
            ]
        ),
        CMMCControl(
            title: "MP.L2-3.8.2 – Media Sanitization",
            description: "Sanitize or destroy information system media containing sensitive data before disposal or reuse.",
            objectives: [
                "Determine if media containing sensitive data is sanitized before disposal or reuse.",
                "Determine if media sanitization processes meet organizational requirements."
            ]
        ),
        CMMCControl(
            title: "SC.L2-3.13.2 – Encryption of Data in Transit",
            description: "Use encryption to protect the confidentiality of data in transit.",
            objectives: [
                "Determine if encryption is used to protect data in transit.",
                "Determine if encryption algorithms meet organizational requirements."
            ]
        ),
        CMMCControl(
            title: "SC.L2-3.13.3 – Cryptographic Methods",
            description: "Use cryptographic methods to protect data.",
            objectives: [
                "Determine if cryptographic methods meet organization security requirements.",
                "Determine if cryptographic keys are securely managed and protected."
            ]
        ),
        CMMCControl(
            title: "SC.L2-3.13.4 – Public Key Infrastructure",
            description: "Implement a public key infrastructure to protect data and communications.",
            objectives: [
                "Determine if public key infrastructure is implemented for encryption.",
                "Determine if public key certificates are managed properly."
            ]
        ),
        CMMCControl(
            title: "SC.L2-3.13.5 – Secure Remote Access",
            description: "Protect remote access to organizational information systems using strong encryption.",
            objectives: [
                "Determine if remote access is encrypted.",
                "Determine if remote access encryption meets organizational requirements."
            ]
        ),
        CMMCControl(
            title: "SI.L2-3.14.3 – System Monitoring",
            description: "Monitor information systems for unauthorized access and suspicious activity.",
            objectives: [
                "Determine if information systems are monitored for unauthorized access.",
                "Determine if monitoring includes suspicious activity detection."
            ]
        ),
        CMMCControl(
            title: "SI.L2-3.14.4 – Incident Response",
            description: "Establish an incident response process to detect and respond to security incidents.",
            objectives: [
                "Determine if an incident response process is implemented.",
                "Determine if incidents are documented and remediated."
            ]
        ),
        CMMCControl(
            title: "SI.L2-3.14.5 – Anti-Malware Tools",
            description: "Implement anti-malware tools to detect and prevent malicious code.",
            objectives: [
                "Determine if anti-malware tools are implemented.",
                "Determine if anti-malware tools are updated and configured correctly."
            ]
        )
    ]

    // Full Level 3 controls
    let level3Controls = [
        CMMCControl(
            title: "AC.L3-3.1.12 – Information Flow Enforcement",
            description: "Enforce approved authorizations for controlling the flow of information within the system and between interconnected systems.",
            objectives: [
                "Determine if approved authorizations for information flow control are enforced.",
                "Determine if information flow policies include constraints for processing sensitive data."
            ]
        ),
        CMMCControl(
            title: "AC.L3-3.1.13 – Use of Non-Organizational Systems",
            description: "Use only approved, controlled, and managed systems for processing, storing, or transmitting organizational information.",
            objectives: [
                "Determine if non-organizational systems are approved for processing organizational information.",
                "Determine if controls are implemented for managing non-organizational systems."
            ]
        ),
        CMMCControl(
            title: "AC.L3-3.1.14 – Session Termination",
            description: "Automatically terminate a user session after a defined condition (e.g., period of inactivity).",
            objectives: [
                "Determine if session termination is configured for inactivity.",
                "Determine if sessions are terminated based on policy-defined conditions."
            ]
        ),
        CMMCControl(
            title: "AC.L3-3.1.15 – Concurrent Session Control",
            description: "Limit the number of concurrent sessions for each system account.",
            objectives: [
                "Determine if concurrent session limits are defined.",
                "Determine if session limits are enforced for each system account."
            ]
        ),
        CMMCControl(
            title: "AC.L3-3.1.16 – Remote Access Authentication",
            description: "Employ multifactor authentication for remote access to organizational systems.",
            objectives: [
                "Determine if multifactor authentication is enforced for remote access.",
                "Determine if remote access is secured with appropriate authentication mechanisms."
            ]
        ),
        CMMCControl(
            title: "AU.L3-3.3.5 – Audit Storage Capacity",
            description: "Provide sufficient audit storage capacity to retain audit records for a defined retention period.",
            objectives: [
                "Determine if sufficient storage capacity is allocated for audit logs.",
                "Determine if retention periods for audit logs meet organizational policy."
            ]
        ),
        CMMCControl(
            title: "CM.L3-3.4.8 – Configuration for Least Functionality",
            description: "Configure organizational systems to provide only essential capabilities and services.",
            objectives: [
                "Determine if unnecessary system capabilities are disabled.",
                "Determine if configuration management policies enforce least functionality."
            ]
        ),
        CMMCControl(
            title: "CM.L3-3.4.9 – Authorized Software",
            description: "Allow only authorized software to execute on organizational systems.",
            objectives: [
                "Determine if software authorization policies are enforced.",
                "Determine if unauthorized software execution is prevented."
            ]
        ),
        CMMCControl(
            title: "CM.L3-3.4.10 – User-Installed Software",
            description: "Prohibit or restrict the use of user-installed software.",
            objectives: [
                "Determine if user-installed software is restricted or prohibited.",
                "Determine if mechanisms are in place to enforce this restriction."
            ]
        ),
        CMMCControl(
            title: "IR.L3-3.6.4 – Incident Correlation",
            description: "Correlate information from different sources to identify and manage incidents.",
            objectives: [
                "Determine if incident correlation mechanisms are implemented.",
                "Determine if sources of incident data are appropriately integrated."
            ]
        ),
        CMMCControl(
            title: "IR.L3-3.6.5 – Incident Impact Analysis",
            description: "Perform root cause and impact analysis on security incidents.",
            objectives: [
                "Determine if root cause analysis is performed on incidents.",
                "Determine if impact analysis identifies affected systems and data."
            ]
        ),
        CMMCControl(
            title: "IR.L3-3.6.6 – Incident Response Testing",
            description: "Test the organization's incident response capability on a regular basis.",
            objectives: [
                "Determine if incident response tests are conducted.",
                "Determine if incident response test results are documented and reviewed."
            ]
        ),
        CMMCControl(
            title: "MA.L3-3.7.5 – Maintenance Personnel Authorization",
            description: "Ensure only authorized personnel perform maintenance on organizational systems.",
            objectives: [
                "Determine if maintenance personnel are authorized and verified.",
                "Determine if unauthorized personnel are restricted from performing maintenance."
            ]
        ),
        CMMCControl(
            title: "MA.L3-3.7.6 – Remote Maintenance Restrictions",
            description: "Ensure remote maintenance sessions are authorized, monitored, and controlled.",
            objectives: [
                "Determine if remote maintenance is authorized prior to initiation.",
                "Determine if remote maintenance sessions are monitored and controlled."
            ]
        ),
        CMMCControl(
            title: "SC.L3-3.13.17 – Redundant Systems",
            description: "Employ redundant systems to maintain system availability during disruptions.",
            objectives: [
                "Determine if redundant systems are implemented to maintain availability.",
                "Determine if redundancy mechanisms are tested regularly."
            ]
        ),
        CMMCControl(
            title: "SC.L3-3.13.18 – Network Segmentation",
            description: "Segment organizational networks based on role and data sensitivity.",
            objectives: [
                "Determine if network segmentation is implemented based on sensitivity.",
                "Determine if segmentation policies restrict data flow appropriately."
            ]
        ),
        CMMCControl(
            title: "SI.L3-3.14.6 – Unauthorized Software Detection",
            description: "Monitor organizational systems to detect the presence of unauthorized software.",
            objectives: [
                "Determine if unauthorized software is detected on organizational systems.",
                "Determine if mechanisms are in place to prevent or remove unauthorized software."
            ]
        )
    ]



    var body: some View {
        VStack {
            // Picker for Levels
            Picker("CMMC Level", selection: $selectedLevel) {
                ForEach(levels, id: \.self) { level in
                    Text(level)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            // Scrollable content
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    if selectedLevel == "Level 1" {
                        ForEach(level1Controls) { control in
                            DisclosureGroupView(
                                title: control.title,
                                description: control.description,
                                objectives: control.objectives
                            )
                        }
                    } else if selectedLevel == "Level 2" {
                        ForEach(level2Controls) { control in
                            DisclosureGroupView(
                                title: control.title,
                                description: control.description,
                                objectives: control.objectives
                            )
                        }
                    } else if selectedLevel == "Level 3" {
                        ForEach(level3Controls) { control in
                            DisclosureGroupView(
                                title: control.title,
                                description: control.description,
                                objectives: control.objectives
                            )
                        }
                    }
                }
                .padding(.horizontal, 20)
            }
        }
        .navigationTitle("CMMC Controls")
    }
}

// Control model
struct CMMCControl: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let objectives: [String]
}

// Reusable view for a control
struct DisclosureGroupView: View {
    let title: String
    let description: String
    let objectives: [String]

    @State private var isExpanded: Bool = false // State to track expansion

    var body: some View {
        DisclosureGroup(isExpanded: $isExpanded) {
            VStack(alignment: .leading, spacing: 10) {
                Text(description)
                    .font(.body)
                    .padding(.bottom, 5)

                Text("Assessment Objectives:")
                    .font(.subheadline)
                    .bold()
                    .padding(.bottom, 5)

                ForEach(objectives, id: \.self) { objective in
                    Text("• \(objective)")
                        .font(.body)
                        .padding(.bottom, 2)
                }
            }
            .padding(.vertical, 5)
        } label: {
            Text(title)
                .font(.headline)
                .foregroundColor(.primary)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}

// Preview
struct NIST171Page_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NIST171Page()
        }
    }
}

#Preview {
    NIST171Page()
}

