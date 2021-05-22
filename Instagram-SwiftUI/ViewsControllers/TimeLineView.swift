//
//  TimeLineView.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 03/04/21.
//

import SwiftUI

struct TimeLineView: View {
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(MockData().stories) {
                        StoryView(story: $0)
                    }
                }
            }
            ForEach(MockData().posts) {
                PostView(post: $0, screenWidth: UIScreen.main.bounds.size.width)
            }
        }
        .navigationBarTitle("", displayMode: .inline)
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarLeading) {
                Image("instagram")
                    .resizable()
                    .renderingMode(.template)
                    .scaledToFit()
                    .frame(width: 130)
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                HStack {
                    Image(systemName: "plus.square.on.square")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding(.trailing, 10)
                    Image(systemName: "message")
                        .resizable()
                        .frame(width: 25, height: 25)
                }
            }
        })
    }
}

struct TimeLineView_Previews: PreviewProvider {
    static var previews: some View {
        TimeLineView()
    }
}
