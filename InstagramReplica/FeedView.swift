//
//  FeedView.swift
//  InstagramReplica
//
//  Created by Надежда on 2022-07-25.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                statusView
                Divider()
                    .foregroundColor(.gray)
                ForEach(Post.preview) { post in
                    PostPreview(post: post)
                }
            }
            .navigationTitle("Instagram Copy")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "camera")
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "paperplane")
                }
            }
        }
    }
    
    private var statusView: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                Image("avatar")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 75, height: 75)
                    .clipShape(Circle())
                    .overlay(
                        Image(systemName: "plus")
                            .font(.title3)
                            .foregroundColor(.white)
                            .background(Circle().fill(Color.blue))
                            .padding(.leading, 8)
                        , alignment: .bottomTrailing
                    )
                
                ForEach(1..<5) { index in
                    Image("img\(index)")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 75, height: 75)
                        .clipShape(Circle())
                        .overlay(Circle().strokeBorder(Color.orange, lineWidth: 2))
                }
            }
            .padding([.leading, .top], 8)
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
