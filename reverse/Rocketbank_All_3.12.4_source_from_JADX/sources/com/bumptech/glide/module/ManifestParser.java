package com.bumptech.glide.module;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import java.util.ArrayList;
import java.util.List;

public final class ManifestParser {
    private final Context context;

    public ManifestParser(Context context) {
        this.context = context;
    }

    public final List<GlideModule> parse() {
        List<GlideModule> arrayList = new ArrayList();
        try {
            ApplicationInfo applicationInfo = this.context.getPackageManager().getApplicationInfo(this.context.getPackageName(), 128);
            if (applicationInfo.metaData != null) {
                for (String str : applicationInfo.metaData.keySet()) {
                    if ("GlideModule".equals(applicationInfo.metaData.get(str))) {
                        arrayList.add(parseModule(str));
                    }
                }
            }
            return arrayList;
        } catch (Throwable e) {
            throw new RuntimeException("Unable to find metadata to parse GlideModules", e);
        }
    }

    private static GlideModule parseModule(String str) {
        try {
            str = Class.forName(str);
            try {
                Object newInstance = str.newInstance();
                if ((newInstance instanceof GlideModule) != null) {
                    return (GlideModule) newInstance;
                }
                throw new RuntimeException("Expected instanceof GlideModule, but found: ".concat(String.valueOf(newInstance)));
            } catch (Throwable e) {
                throw new RuntimeException("Unable to instantiate GlideModule implementation for ".concat(String.valueOf(str)), e);
            } catch (Throwable e2) {
                throw new RuntimeException("Unable to instantiate GlideModule implementation for ".concat(String.valueOf(str)), e2);
            }
        } catch (String str2) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", str2);
        }
    }
}
