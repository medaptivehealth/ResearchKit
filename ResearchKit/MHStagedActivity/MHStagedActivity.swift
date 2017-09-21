//
//  MHStagedActivity.swift
//  MedApp
//
//  Created by Mauricio Pinatares on 9/13/17.
//  Copyright © 2017 Medaptive Health. All rights reserved.
//

import Foundation

public struct MHStagedActivity {

    public var id: String?
    public var type: MHStagedActivityType?
    public var schedule: MHStagedSchedule?
    public var activityInfo: [String: Any]?


    public func generateEvents() -> [MHStagedEvent] {
        guard let repeatPattern = self.schedule?.repeats else {
            let startDate = schedule?.startDate
            let endDate = schedule?.endDate
            return [MHStagedEvent(startDate: startDate, endDate: endDate, activity: self)]
        }
        switch repeatPattern {
        case .daily:

            break
        case .weekly:

            break
        case .monthlyDate:

            break
        case .monthlyDay:

            break
        }
        return []
    }
}

public enum MHStagedActivityType {
    case survey, activeTask, insight
}
