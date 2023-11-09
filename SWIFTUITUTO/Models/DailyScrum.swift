//
//  DailyScrum.swift
//  SWIFTUITUTO
//
//  Created by 한설 on 2023/11/09.
//

import Foundation

struct DailyScrum : Identifiable { //구조체 선언
    let id: UUID
    var title: String   //변수 선언 var:변수 (let: 상수) 변수(상수명): 변수 타입(지정하지 않고 바로 초기화하면 자동 적용)
    var attendees: [Attendee]
    var lengthInminute: Int
    var lengthInMinutesAsDouble: Double {
        get {
            Double(lengthInminute)
        }
        set {
            lengthInminute = Int(newValue)
        }
    }
    var Theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInminute: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attendee(name: $0) }   //map을 통해 리스트 내 각 배열에 대해 중괄호 내 각각 연산
        self.lengthInminute = lengthInminute
        self.Theme = theme
    }
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    
    static var emptyScrum: DailyScrum {
        DailyScrum(title: "", attendees: [], lengthInminute: 5, theme: .sky)
    }
}

extension DailyScrum {  //확장. 기존에 지정된 구조체, 클래스 혹은 열거형 변수에 기능을 추가하는 것
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design",
                   attendees: ["Cathy", "Daisy", "Simon", "Joonthan"],
                   lengthInminute: 10,
                   theme: .yellow),
        DailyScrum(title: "AppDev",
                   attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"],
                   lengthInminute: 5,
                   theme: .orange),
        DailyScrum(title: "Web Dev",
                   attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"],
                   lengthInminute: 5,
                   theme: .poppy)
    ]
}
