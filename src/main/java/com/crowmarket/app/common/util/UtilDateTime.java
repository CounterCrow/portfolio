package com.crowmarket.app.common.util;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import com.crowmarket.app.common.constants.Constants;

public class UtilDateTime {
	
	
	public static String nowString() throws Exception {
		LocalDateTime localDateTime = LocalDateTime.now();
		String localDateTimeString = localDateTime.format(DateTimeFormatter.ofPattern(Constants.DATETIME_FORMAT_BASIC));
		return localDateTimeString;
	}

}
