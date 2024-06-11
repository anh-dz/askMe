//
//  hacked.swift
//  askMe?
//
//  Created by Alex on 6/11/24.
//

import SwiftUI

struct hackedView: View {
    var body: some View {
        VStack {
            Text("You got hacked!!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.red)
                .padding()
            Text("""
    1. IP Address (IPv4): 92.28.211.234
    • Valid. This is a correctly formatted IPv4 address.
    2. Coordinates:
    • N: 43.7462 (Latitude)
    • W: 12.4893 (Longitude)
    • Valid. These are plausible geographic coordinates.
    3. Social Security Number: 6979191519182016
    • Invalid. Social Security Numbers (SSNs) in most countries do not follow this format. For example, in the US, SSNs are 9 digits long (XXX-XX-XXXX).
    4. IPv6 Address: fe80::5dcd::ef69::fb22::d9888%12
    • Invalid. IPv6 addresses are typically written as eight groups of four hexadecimal digits. This format is incorrect due to the double colons “::” used multiple times, which is not allowed.
    5. DMZ IP Address: 10.112.42.15
    • Valid. This is a correctly formatted private IPv4 address, often used in DMZ configurations.
    6. MAC Address: 5A:78:3E:7E:00
    • Invalid. A MAC address should have 6 pairs of hexadecimal digits (e.g., 5A:78:3E:7E:00:XX).
    7. ISP: Ucom Universal
    • Potentially valid. The name “Ucom Universal” could represent a fictional or real ISP.
    8. DNS Server: 8.8.8.8
    • Valid. This is Google’s public DNS server.
    9. Alternative DNS Server: 1.1.1.8.1
    • Invalid. This is not a valid IP address for a DNS server. Valid DNS IP addresses include 1.1.1.1 (Cloudflare) and 1.0.0.1.
    10. Dlink WAN IP: 100.23.10.15
    • Valid. This is a correctly formatted IPv4 address.
    11. Gateway: 192.168.0.1
    • Valid. This is a typical private IPv4 address used for gateways.
    12. Subnet Mask: 255.255.0.255
    • Invalid. This is not a valid subnet mask. Valid subnet masks include 255.255.255.0, 255.255.0.0, etc.
    13. UDP Open Ports: 8080, 80
    • Valid. These are common open ports for HTTP traffic.
    14. TCP Open Ports: 443
    • Valid. This is a common port for HTTPS traffic.
    """)
                .padding()
        }
    }
}

struct hacked_Previews: PreviewProvider {
    static var previews: some View {
        hackedView()
    }
}
