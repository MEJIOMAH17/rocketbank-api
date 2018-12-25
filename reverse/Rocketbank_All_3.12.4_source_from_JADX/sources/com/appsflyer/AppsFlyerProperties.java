package com.appsflyer;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build.VERSION;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class AppsFlyerProperties {
    private static AppsFlyerProperties instance = new AppsFlyerProperties();
    private boolean isLaunchCalled;
    private boolean isOnReceiveCalled;
    private Map<String, Object> properties = new HashMap();
    private String referrer;

    public enum EmailsCryptType {
        NONE(0),
        SHA1(1),
        MD5(2);
        
        private final int value;

        private EmailsCryptType(int i) {
            this.value = i;
        }

        public final int getValue() {
            return this.value;
        }
    }

    private AppsFlyerProperties() {
    }

    public static AppsFlyerProperties getInstance() {
        return instance;
    }

    public final void set(String str, String str2) {
        this.properties.put(str, str2);
    }

    public final String getString(String str) {
        return (String) this.properties.get(str);
    }

    public final void set(String str, boolean z) {
        this.properties.put(str, Boolean.toString(z));
    }

    protected final void setOnReceiveCalled() {
        this.isOnReceiveCalled = true;
    }

    protected final boolean isFirstLaunchCalled() {
        return this.isLaunchCalled;
    }

    protected final void setFirstLaunchCalled$1385ff() {
        this.isLaunchCalled = false;
    }

    protected final void setFirstLaunchCalled() {
        this.isLaunchCalled = true;
    }

    public final String getReferrer(Context context) {
        if (this.referrer != null) {
            return this.referrer;
        }
        if (((String) this.properties.get("AF_REFERRER")) == null) {
            return context.getSharedPreferences("appsflyer-data", 0).getString("referrer", null);
        }
        return (String) this.properties.get("AF_REFERRER");
    }

    @SuppressLint({"CommitPrefEdits"})
    public final void saveProperties(Context context) {
        String jSONObject = new JSONObject(this.properties).toString();
        context = context.getSharedPreferences("appsflyer-data", 0).edit();
        context.putString("savedProperties", jSONObject);
        if (VERSION.SDK_INT >= 9) {
            context.apply();
        } else {
            context.commit();
        }
    }

    public final void loadProperties(Context context) {
        context = context.getSharedPreferences("appsflyer-data", 0).getString("savedProperties", null);
        if (context != null) {
            try {
                JSONObject jSONObject = new JSONObject(context);
                context = jSONObject.keys();
                while (context.hasNext()) {
                    String str = (String) context.next();
                    if (this.properties.get(str) == null) {
                        this.properties.put(str, jSONObject.getString(str));
                    }
                }
            } catch (Context context2) {
                AFLogger.afLogE("Failed loading properties", context2);
            }
        }
    }

    public final boolean getBoolean(String str, boolean z) {
        str = (String) this.properties.get(str);
        return str == null ? z : Boolean.valueOf(str).booleanValue();
    }

    protected final void setReferrer(String str) {
        this.properties.put("AF_REFERRER", str);
        this.referrer = str;
    }

    public final boolean isEnableLog() {
        String str = (String) this.properties.get("shouldLog");
        return str == null ? true : Boolean.valueOf(str).booleanValue();
    }
}
