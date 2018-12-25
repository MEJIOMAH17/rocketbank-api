package ru.rocketbank.core.utils.format;

import com.facebook.appevents.AppEventsConstants;
import java.text.DecimalFormatSymbols;
import java.util.Locale;

public class FormatMoney {
    private DecimalFormatSymbols decimalFormatSymbols;

    public static class SeparatorInformation {
        public boolean delimiter;
        public int grouping;
        public int trimmedZerosAtStart;
    }

    public FormatMoney() {
        this.decimalFormatSymbols = new DecimalFormatSymbols();
    }

    public FormatMoney(Locale locale) {
        this.decimalFormatSymbols = new DecimalFormatSymbols(locale);
    }

    public String formatAsString(String str) {
        return formatAsString(str, null);
    }

    public String formatAsString(String str, SeparatorInformation separatorInformation) {
        if (separatorInformation != null) {
            separatorInformation.grouping = 0;
            separatorInformation.trimmedZerosAtStart = 0;
            separatorInformation.delimiter = false;
        }
        if (str != null) {
            if (!str.isEmpty()) {
                return formatAsStringCleaned(cleanFormat(str), separatorInformation);
            }
        }
        return str;
    }

    public SeparatorInformation extractSeparatorInformation(String str) {
        SeparatorInformation separatorInformation = new SeparatorInformation();
        if (str == null) {
            return separatorInformation;
        }
        char monetaryDecimalSeparator = this.decimalFormatSymbols.getMonetaryDecimalSeparator();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == ' ') {
                separatorInformation.grouping++;
            }
            if (charAt == monetaryDecimalSeparator) {
                separatorInformation.delimiter = true;
                break;
            }
        }
        return separatorInformation;
    }

    public String cleanFormat(String str) {
        return str.replace(" ", "").replace(this.decimalFormatSymbols.getDecimalSeparator(), '.').replace(this.decimalFormatSymbols.getMonetaryDecimalSeparator(), '.').replaceAll("(\\s)", "");
    }

    private String formatAsStringCleaned(String str, SeparatorInformation separatorInformation) {
        String substring;
        StringBuilder stringBuilder = new StringBuilder();
        char monetaryDecimalSeparator = this.decimalFormatSymbols.getMonetaryDecimalSeparator();
        int indexOf = str.indexOf(46);
        if (indexOf >= 0) {
            String substring2 = str.substring(0, indexOf);
            substring = str.substring(indexOf, str.length());
            str = substring2;
        } else {
            substring = null;
        }
        stringBuilder.append(prepareBeforeSeparator(str, separatorInformation));
        if (substring != null) {
            str = prepareAfterSeparator(substring);
            stringBuilder.append(monetaryDecimalSeparator);
            stringBuilder.append(str);
            if (separatorInformation != null) {
                separatorInformation.delimiter = true;
            }
        } else if (separatorInformation != null) {
            separatorInformation.delimiter = false;
        }
        return stringBuilder.toString();
    }

    private String prepareAfterSeparator(String str) {
        str = str.replace(".", "");
        if (str.length() >= 2) {
            return str.substring(0, 2);
        }
        return str.substring(0, str.length());
    }

    private String prepareBeforeSeparator(String str, SeparatorInformation separatorInformation) {
        int i = 0;
        int i2 = i;
        while (i < str.length() && str.charAt(i) == '0') {
            i2++;
            if (separatorInformation != null) {
                separatorInformation.trimmedZerosAtStart++;
            }
            i++;
        }
        if (i2 > 0) {
            str = str.substring(i2);
        }
        if (str.isEmpty()) {
            return AppEventsConstants.EVENT_PARAM_VALUE_NO;
        }
        i = str.length();
        if (i < 4) {
            return str;
        }
        StringBuilder stringBuilder = new StringBuilder();
        int i3 = (i / 3) + (i % 3 == 0 ? 0 : 1);
        int i4 = i;
        for (i = 0; i < i3; i++) {
            stringBuilder.insert(0, str.substring(i4 >= 3 ? i4 - 3 : 0, i4));
            if (i != i3 - 1) {
                if (separatorInformation != null) {
                    separatorInformation.grouping++;
                }
                stringBuilder.insert(0, ' ');
            }
            i4 -= 3;
        }
        return stringBuilder.toString().replace(" ,", ",");
    }
}
