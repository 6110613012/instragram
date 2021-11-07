//
//  CommentsView.swift
//  Instragram-Clone
//
//  Created by Sunanta Chuathue on 7/10/21.
//

import SwiftUI

struct CommentsView: View {
    @State var comment = ""
    
    @ObservedObject var viewModel: CommentsViewModel
    
    init(post: Post) {
        viewModel = CommentsViewModel(post: post)
    }
    
    var body: some View {
        VStack {
            ScrollView{
                LazyVStack(alignment: .leading, spacing: 24) {
                    ForEach(viewModel.comments) { comment in
                        CommentCellView(comment: comment)
                    }
                }
            }
            
            CommentInputView(inputText: $comment, action: uploadComment)
        }
    }
    
    func uploadComment() {
        viewModel.uploadComment(comment: comment)
        comment = ""
    }
}

