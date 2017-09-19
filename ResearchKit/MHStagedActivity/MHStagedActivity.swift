//
//  MHStagedActivity.swift
//  MedApp
//
//  Created by Mauricio Pinatares on 9/13/17.
//  Copyright © 2017 Medaptive Health. All rights reserved.
//

import Foundation

struct MHStagedActivity {

    var id: String?
    var type: MHStagedActivityType?
    var schedule: MHStagedSchedule?
    var activityInfo: [String: Any]?

}

enum MHStagedActivityType {
    case survey, activeTask, insight
}
