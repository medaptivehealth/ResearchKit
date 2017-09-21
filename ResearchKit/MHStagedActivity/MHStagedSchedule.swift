//
//  MHStagedSchedule.swift
//  MedApp
//
//  Created by Mauricio Pinatares on 9/12/17.
//  Copyright © 2017 Medaptive Health. All rights reserved.
//

import Foundation

public struct MHStagedSchedule {

    public var startDate: Date?
    public var endDate: Date?
    public var duration: Int16?
    public var durationUnit: MHDurationUnit?
    public var repeats: MHRepetitionPattern?

}

public enum MHDurationUnit {
    case days, weeks, months
}

public enum MHRepetitionPattern: String, RawRepresentable {
    case daily, weekly, monthlyDate, monthlyDay
}

/*

 startDate – start date for the staged schedule
 endDate – end date for the staged schedule. Can be null/nil.
 duration – the length of time a particular instance of content will remain available after it is created. Can be null/nil, meaning no expiration
 durationType – units for duration (days, weeks, months). Can be null/nil
 repeats – class of type MHRepetitionPattern. Can be null/nil if the activity doesn't repeat.

 The class has the following methods:

 schedule(startDate) – schedule content to become available on a given date, and remain available until acted upon
 limitedSchedule(startDate, duration, durationType) – schedule content to become available on startDate, and remain available for the time period in duration
 repeatingSchedule(startDate, endDate, MHRepetitionPattern) – schedule that has repeating content
 repeatingLimitedSchedule(startDate, endDate, duration, durationType, MHRepetitionPattern) – schedule that has repeating content of limited duration

 */


