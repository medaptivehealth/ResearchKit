//
//  MHStagedActivity.swift
//  MedApp
//
//  Created by Mauricio Pinatares on 9/13/17.
//  Copyright © 2017 Medaptive Health. All rights reserved.
//

import Foundation

public struct MHStagedActivity {

    public var id: String!
    public var title: String?
    public var type: MHStagedActivityType?
    public var schedule: MHStagedSchedule?
    public var activityInfo: [String: Any]?

}

public enum MHStagedActivityType {
    case survey, activeTask, insight
}


