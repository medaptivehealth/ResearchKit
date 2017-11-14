//
//  MHStagedEvent.swift
//  MedApp
//
//  Created by Mauricio Pinatares on 9/14/17.
//  Copyright © 2017 Medaptive Health. All rights reserved.
//

import Foundation

public struct MHStagedEvent {

    public var activity: String?
    public var startDate: Date?
    public var endDate: Date?
    public var progress: Data?
    public var status: MHStagedEventStatus?
    public var result: MHStagedEventResult?
    
    public init(startDate: Date?, endDate: Date?, activity: MHStagedActivity) {
        self.progress = Data()
        self.startDate = startDate
        self.endDate = endDate
        self.activity = activity.id
    }
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


public enum MHStagedEventStatus {
    case new, inProgress, done
}

public enum MHStagedEventResult {
    case inProgress, done
}
