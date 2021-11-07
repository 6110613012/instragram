//
//  UserStat.swift
//  Instragram-Clone
//
//  Created by Sunanta Chuathue on 14/10/21.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.system(size: 15,weight: .semibold))
            
            Text(title)
                .font(.system(size: 15))
        }
        .frame(width: 80, alignment: .center)
    }
}


