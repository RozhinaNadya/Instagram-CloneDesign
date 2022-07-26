//
//  ContentView.swift
//  InstagramReplica
//
//  Created by Надежда on 2022-07-25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                headerView
                descriptionView
                highlightsView
                imagesView
            }
            .navigationTitle("Xcoder")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "chevron.left")
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "ellipsis")
                }
            }
        }
    }
    
    private var headerView: some View {
        HStack {
            Image("avatar")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().strokeBorder(Color.orange, lineWidth: 2))
            
            VStack(spacing: 12) {
                HStack {
                    Spacer()
                    VStack {
                        Text("4,400")
                            .fontWeight(.semibold)
                        Text("posts")
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    VStack {
                        Text("40,300")
                            .fontWeight(.semibold)
                        Text("followers")
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    VStack {
                        Text("400")
                            .fontWeight(.semibold)
                        Text("following")
                            .foregroundColor(.gray)
                    }
                }
                HStack(spacing: 8) {
                    Text("Message")
                        .padding(4)
                        .frame(height: 30)
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 4).stroke(Color.gray))
                        .padding(.leading, 8)
                    HStack {
                        Image(systemName: "person")
                        Image(systemName: "checkmark")
                    }
                    .padding(4)
                    .frame(height: 30)
                    .background(RoundedRectangle(cornerRadius: 4).stroke(Color.gray))
                    
                    Image(systemName: "arrowtriangle.down.fill")
                        .font(.footnote)
                        .padding(4)
                        .frame(height: 30)
                        .padding(.horizontal, 4)
                        .background(RoundedRectangle(cornerRadius: 4).stroke(Color.gray))
                }
            }
        }
        .padding(.horizontal)
    }
    
    private var descriptionView: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Nadya Rozhina")
                .fontWeight(.semibold)
            Text("IOS Developer")
            Text("Beginner SwiftUI user, studying Combine and other Frameworks")
                .foregroundColor(.gray)
            HStack { Spacer() }
        }
        .padding(.horizontal)
    }
    
    private var highlightsView: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(1..<6) { index in
                    Image("img\(index)")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 75, height: 75)
                        .clipShape(Circle())
                        .overlay(Circle().strokeBorder(Color.orange, lineWidth: 2))
                }
            }
        }
        .padding(.leading)
    }
    
    private var imagesView: some View {
        VStack (spacing: 8) {
            HStack {
                Spacer()
                Image(systemName: "rectangle.split.3x3")
                    .foregroundColor(.black)
                Spacer()
                Image(systemName: "squares.below.rectangle")
                    .foregroundColor(.black)
                Spacer()
                Image(systemName: "person.crop.rectangle")
                    .foregroundColor(.black)
                Spacer()
            }
            .font(.title2)
            .padding(.top, 4)
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 0) {
                ForEach(1..<15) { index in
                    Image("img\(index)")
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width / 3, height: UIScreen.main.bounds.width / 3)
                        .clipped()
                        .padding(.bottom, 2)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
