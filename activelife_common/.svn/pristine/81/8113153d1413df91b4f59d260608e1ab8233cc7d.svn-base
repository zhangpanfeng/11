package com.activelife.common.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
    public static final String SIMPLE_DATE_FORMAT = "yyyy-MM-dd";
    public static final String HHMM_DATE_FORMAT = "yyyy-MM-dd HH:mm";
    public static final String HHMMSS_DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";

    public static String formatDate(Date date, String format) {
        if (date != null) {
            SimpleDateFormat formater = new SimpleDateFormat(format);
            return formater.format(date);
        } else {
            return null;
        }
    }
}
