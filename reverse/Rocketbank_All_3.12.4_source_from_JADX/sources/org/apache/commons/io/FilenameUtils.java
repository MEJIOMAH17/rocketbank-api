package org.apache.commons.io;

import java.io.File;
import java.util.ArrayList;
import java.util.Stack;
import org.slf4j.Marker;

public final class FilenameUtils {
    public static final String EXTENSION_SEPARATOR_STR = Character.toString('.');
    private static final char OTHER_SEPARATOR;
    private static final char SYSTEM_SEPARATOR;

    static {
        char c = File.separatorChar;
        SYSTEM_SEPARATOR = c;
        if ((c == '\\' ? 1 : null) != null) {
            OTHER_SEPARATOR = '/';
        } else {
            OTHER_SEPARATOR = '\\';
        }
    }

    static boolean isSystemWindows() {
        return SYSTEM_SEPARATOR == '\\';
    }

    private static int indexOfExtension(String str) {
        if (str == null) {
            return -1;
        }
        int lastIndexOf = str.lastIndexOf(46);
        if (str == null) {
            str = -1;
        } else {
            str = Math.max(str.lastIndexOf(47), str.lastIndexOf(92));
        }
        if (str > lastIndexOf) {
            return -1;
        }
        return lastIndexOf;
    }

    public static String getExtension(String str) {
        if (str == null) {
            return null;
        }
        int indexOfExtension = indexOfExtension(str);
        if (indexOfExtension == -1) {
            return "";
        }
        return str.substring(indexOfExtension + 1);
    }

    public static boolean wildcardMatch(String str, String str2) {
        return wildcardMatch(str, str2, IOCase.SENSITIVE);
    }

    public static boolean wildcardMatch(String str, String str2, IOCase iOCase) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str != null) {
            if (str2 != null) {
                if (iOCase == null) {
                    iOCase = IOCase.SENSITIVE;
                }
                str2 = splitOnTokens(str2);
                Stack stack = new Stack();
                boolean z = false;
                boolean z2 = z;
                int i = z2;
                while (true) {
                    boolean z3;
                    if (stack.size() > 0) {
                        int[] iArr = (int[]) stack.pop();
                        int i2 = iArr[0];
                        z = iArr[1];
                        i = i2;
                        z2 = true;
                    } else {
                        z3 = z2;
                        z2 = z;
                        z = z3;
                    }
                    while (i < str2.length) {
                        if (str2[i].equals("?")) {
                            z++;
                            if (z > str.length()) {
                                break;
                            }
                        } else if (str2[i].equals(Marker.ANY_MARKER)) {
                            if (i == str2.length - 1) {
                                z = str.length();
                            }
                            z2 = true;
                            i++;
                        } else {
                            if (!z2) {
                                if (!iOCase.checkRegionMatches(str, z, str2[i])) {
                                    break;
                                }
                            }
                            z = iOCase.checkIndexOf(str, z, str2[i]);
                            if (z) {
                                break;
                            }
                            if (iOCase.checkIndexOf(str, z + 1, str2[i]) >= 0) {
                                stack.push(new int[]{i, iOCase.checkIndexOf(str, z + 1, str2[i])});
                            }
                            z = r3 + str2[i].length();
                        }
                        z2 = false;
                        i++;
                    }
                    if (i == str2.length && z == str.length()) {
                        return true;
                    }
                    if (stack.size() <= 0) {
                        return false;
                    }
                    z3 = z2;
                    z2 = z;
                    z = z3;
                }
            }
        }
        return false;
    }

    private static String[] splitOnTokens(String str) {
        if (str.indexOf(63) == -1 && str.indexOf(42) == -1) {
            return new String[]{str};
        }
        str = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        StringBuilder stringBuilder = new StringBuilder();
        int length = str.length;
        int i = 0;
        int i2 = i;
        while (i < length) {
            char c;
            char c2 = str[i];
            if (c2 != '?') {
                if (c2 != '*') {
                    stringBuilder.append(c2);
                    i++;
                    c = c2;
                }
            }
            if (stringBuilder.length() != 0) {
                arrayList.add(stringBuilder.toString());
                stringBuilder.setLength(0);
            }
            if (c2 == '?') {
                arrayList.add("?");
            } else if (i2 != 42) {
                arrayList.add(Marker.ANY_MARKER);
            }
            i++;
            c = c2;
        }
        if (stringBuilder.length() != null) {
            arrayList.add(stringBuilder.toString());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean isExtension(String str, String str2) {
        if (str == null) {
            return false;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (str.charAt(i) == '\u0000') {
                throw new IllegalArgumentException("Null byte present in file/path name. There are no known legitimate use cases for such data, but several injection attacks may use it");
            }
        }
        if (!str2.isEmpty()) {
            if (str == null) {
                str = null;
            } else {
                int indexOfExtension = indexOfExtension(str);
                str = indexOfExtension == -1 ? "" : str.substring(indexOfExtension + 1);
            }
            return str.equals(str2);
        } else if (indexOfExtension(str) == -1) {
            return true;
        } else {
            return false;
        }
    }
}
