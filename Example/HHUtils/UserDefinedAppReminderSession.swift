//
//  UserDefinedAppReminderSession.swift
//  HHObjectiveCDemo
//
//  Created by Michael on 2023/6/19.
//

import UIKit
import RxSwift
import RxCocoa
import HHUtils

struct MomentsDetails: Codable {
    let userDetails: UserDetails
    let moments: [Moment]
    
    struct UserDetails: Codable {
        let id: String
        let name: String
        let avatar: String
        let backgroundImage: String
    }
    
    struct Moment: Codable {
        let id: String
        let userDetails: MomentUserDetails
        let type: MomentType
        let title: String?
        let url: String?
        let photos: [String]
        let createdDate: String
        let isLiked: Bool? // Change to non-optional when removing `isLikeButtonForMomentEnabled` toggle
        let likes: [LikedUserDetails]? // Change to non-optional when removing `isLikeButtonForMomentEnabled` toggle
        
        struct MomentUserDetails: Codable {
            let name: String
            let avatar: String
        }
        
        struct LikedUserDetails: Codable {
            let id: String
            let avatar: String
        }
        
        // swiftlint:disable no_hardcoded_strings
        enum MomentType: String, Codable {
            case url = "URL"
            case photos = "PHOTOS"
        }
        // swiftlint:enable no_hardcoded_strings
    }
}
struct UserDefinedAppReminder: Codable {
    let data: Data
    
    struct Data: Codable {
        let getMomentsDetailsByUserID: MomentsDetails
    }
}
// MARK: 网络请求
struct UserDefinedAppReminderSession: APISession {
    typealias ReponseType = UserDefinedAppReminder
    
    let disposeBag = DisposeBag()
    init() {
        let ss = self.post(API.baseURL_1, path: "api/Tools/UserDefinedAppReminder", headers: [], parameters: [
            "sss" : "",
            "ddd" : "",
        ]).subscribe { response in
            //逻辑处理
//            response.data
        } onError: { error in
            switch error {
            case let apiError as APISessionError:
                switch apiError {
                case .networkError(let error, let statusCode):
                    // 处理网络错误，可以使用 error 和 statusCode 进行进一步处理
                    print("Network error: \(error), Status code: \(statusCode)")
                case .invalidJSON:
                    // 处理无效的 JSON 数据错误
                    print("Invalid JSON")
                case .noData:
                    // 处理无数据错误
                    print("No data")
                }
            default:
                // 处理其他类型的错误
                print("Error: \(error)")
            }
        } onCompleted: {
            //
        } onDisposed: {
            //
        }
        // 将订阅添加到disposeBag中，以便于管理
        ss.disposed(by: disposeBag)
        //        // 将触发Disposables.create中的request.cancel()
        //        ss.dispose()
    }
    
}
