//
//  PostPreview.swift
//  InstagramReplica
//
//  Created by Надежда on 2022-07-25.
//

import SwiftUI

struct PostPreview: View {
    
    let post: Post
    
    var body: some View {
        VStack {
            HStack(spacing: 16) {
                Image(post.userImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Text(post.userName)
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
                Image(systemName: "ellipsis")
                    .font(.title2)
                    .rotationEffect(.degrees(90))
            }
            .padding(.horizontal, 8)
            
            Image(post.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
                .clipShape(Rectangle())
            HStack(spacing: 16) {
                Image(systemName: "heart")
                Image(systemName: "bubble.right")
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark")
            }
            .font(.title2)
            .padding(8)
            
            VStack(alignment: .leading) {
                HStack {
                    Text("\(post.likes) likes")
                        .font(.headline)
                        .padding(.bottom, 1)
                    Spacer()
                }
                Text(post.userName)
                    .font(.headline)
                + Text(" " + post.description)

                
                Text(post.timestamp)
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding(.top, 1)
            }
            .padding(.horizontal)
            .padding(.bottom)
        }
    }
}

struct PostPreview_Previews: PreviewProvider {
    static var previews: some View {
        PostPreview(post: Post.preview[0])
    }
}
