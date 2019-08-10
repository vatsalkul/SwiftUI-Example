//
//  SocialMediaListView.swift
//  Landmark
//
//  Created by Vatsal Kulshreshtha on 08/08/19.
//  Copyright © 2019 Vatsal Kulshreshtha. All rights reserved.
//

import SwiftUI
import SafariServices

struct Account: Identifiable {
    var id: Int
    
    let image, name, username, url: String
}

struct SocialMediaListView: View {
    let accounts: [Account] = [
           .init(id: 0, image: "github", name: "Github", username: "vatsalkul", url: "https://github.com/vatsalkul"),
           .init(id: 1, image: "linkedin", name: "LinkedIn", username: "vatsalkulshreshtha", url: "https://www.linkedin.com/in/vatsal-kulshreshtha-4251375a"),
           .init(id: 2, image: "instagram", name: "Instagram", username: "vatsal_kulshreshtha", url: "http://instagram.com/vatsal_kulshreshtha/")
       ]
    var body: some View {
   
            List(accounts, id: \.id) { acc in
                    HStack {
                        Image(acc.image)
                        .resizable()
                        .frame(width: 50, height: 50)
                    VStack(alignment: .leading) {
                        Text(acc.name)
                            .font(.headline)
                        Text("Username: \(acc.username)")
                            .font(.subheadline)
                        Button(action: {
                            if let url = URL(string: acc.url) {
                                UIApplication.shared.open(url)
                            }
                            }){
                                Text("")
                            }
                    }
                }
            }
        
    }
}

#if DEBUG
struct SocialMediaListView_Previews: PreviewProvider {
    static var previews: some View {
        SocialMediaListView()
    }
}
#endif
