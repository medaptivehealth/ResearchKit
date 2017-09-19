//
//  MHStagedEvent.swift
//  MedApp
//
//  Created by Mauricio Pinatares on 9/14/17.
//  Copyright © 2017 Medaptive Health. All rights reserved.
//

import Foundation

struct MHStagedEvent {

    var activity: String?
    var eventStartDate: Date?
    var eventEndDate: Date?
    var status: MHStagedEventStatus?
    var result: MHStagedEventResult?

}

/*
 activity – id of the activity that this event represents
 eventStartDate – date on which this event (activity instance) appears
 eventEndDate – date on which this event (activity instance) expires. Can be null/nil, meaning no expiration.  Note that the value of this date must be the eventStartDate + the duration (from the MHStagedSchedule)
 status – status string ("New", "In Progress", "Done").
 result –  the result (MHStagedEventResult) of completing the activity.  Will be nil/null until activity has status of "In Progress" or "Done"

 The methods for MHStagedEvent are as follows:
 constructor – MHStagedEvent(eventStartDate, eventEndDate)
 addResult(result, status) – add the dictionary with the result to the event, setting the status appropriately
 */


enum MHStagedEventStatus {
    case new, inProgress, done
}

enum MHStagedEventResult {
    case inProgress, done
}
