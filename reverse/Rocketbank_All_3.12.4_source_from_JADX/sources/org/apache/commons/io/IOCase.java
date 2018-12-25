package org.apache.commons.io;

import java.io.Serializable;

public enum IOCase implements Serializable {
    SENSITIVE("Sensitive", true),
    INSENSITIVE("Insensitive", false),
    SYSTEM("System", FilenameUtils.isSystemWindows() ^ true);
    
    private static final long serialVersionUID = -6343169151696340687L;
    private final String name;
    private final transient boolean sensitive;

    public static IOCase forName(String str) {
        for (IOCase iOCase : values()) {
            if (iOCase.getName().equals(str)) {
                return iOCase;
            }
        }
        throw new IllegalArgumentException("Invalid IOCase name: ".concat(String.valueOf(str)));
    }

    private IOCase(String str, boolean z) {
        this.name = str;
        this.sensitive = z;
    }

    private Object readResolve() {
        return forName(this.name);
    }

    public final String getName() {
        return this.name;
    }

    public final boolean isCaseSensitive() {
        return this.sensitive;
    }

    public final int checkCompareTo(String str, String str2) {
        if (str != null) {
            if (str2 != null) {
                return this.sensitive ? str.compareTo(str2) : str.compareToIgnoreCase(str2);
            }
        }
        throw new NullPointerException("The strings must not be null");
    }

    public final boolean checkEquals(String str, String str2) {
        if (str != null) {
            if (str2 != null) {
                return this.sensitive ? str.equals(str2) : str.equalsIgnoreCase(str2);
            }
        }
        throw new NullPointerException("The strings must not be null");
    }

    public final boolean checkStartsWith(String str, String str2) {
        return str.regionMatches(this.sensitive ^ 1, 0, str2, 0, str2.length());
    }

    public final boolean checkEndsWith(String str, String str2) {
        int length = str2.length();
        return str.regionMatches(this.sensitive ^ 1, str.length() - length, str2, 0, length);
    }

    public final int checkIndexOf(String str, int i, String str2) {
        int length = str.length() - str2.length();
        if (length >= i) {
            while (i <= length) {
                if (checkRegionMatches(str, i, str2)) {
                    return i;
                }
                i++;
            }
        }
        return -1;
    }

    public final boolean checkRegionMatches(String str, int i, String str2) {
        return str.regionMatches(this.sensitive ^ 1, i, str2, 0, str2.length());
    }

    public final String toString() {
        return this.name;
    }
}
