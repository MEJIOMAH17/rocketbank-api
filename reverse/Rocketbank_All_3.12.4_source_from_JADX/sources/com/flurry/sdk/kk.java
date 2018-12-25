package com.flurry.sdk;

import android.text.TextUtils;
import java.util.regex.Pattern;

public class kk {
    /* renamed from: a */
    private final Pattern f347a = Pattern.compile(".*?(%\\{\\w+\\}).*?");

    /* renamed from: a */
    public final String m204a(String str) {
        str = this.f347a.matcher(str);
        return str.matches() ? str.group(1) : null;
    }

    /* renamed from: a */
    public static boolean m203a(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder("%{");
        stringBuilder.append(str);
        stringBuilder.append("}");
        return str2.equals(stringBuilder.toString());
    }
}
