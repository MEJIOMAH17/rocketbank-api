package com.flurry.sdk;

import java.util.Map;

public class ie extends kk {
    /* renamed from: a */
    private static final String f467a = "ie";

    /* renamed from: a */
    public final String m382a(String str, Map<String, String> map) {
        CharSequence a = m204a(str);
        while (a != null) {
            String valueOf;
            if (kk.m203a("timestamp_epoch_millis", a)) {
                valueOf = String.valueOf(System.currentTimeMillis());
                kf.m176a(3, f467a, "Replacing param timestamp_epoch_millis with: ".concat(String.valueOf(valueOf)));
                str = str.replace(a, lr.m313c(valueOf));
            } else if (kk.m203a("session_duration_millis", a)) {
                jd.m535a();
                valueOf = Long.toString(jd.m539f());
                kf.m176a(3, f467a, "Replacing param session_duration_millis with: ".concat(String.valueOf(valueOf)));
                str = str.replace(a, lr.m313c(valueOf));
            } else if (kk.m203a("fg_timespent_millis", a)) {
                jd.m535a();
                valueOf = Long.toString(jd.m539f());
                kf.m176a(3, f467a, "Replacing param fg_timespent_millis with: ".concat(String.valueOf(valueOf)));
                str = str.replace(a, lr.m313c(valueOf));
            } else if (kk.m203a("install_referrer", a)) {
                valueOf = new hl().m9b();
                if (valueOf == null) {
                    valueOf = "";
                }
                kf.m176a(3, f467a, "Replacing param install_referrer with: ".concat(String.valueOf(valueOf)));
                str = str.replace(a, lr.m313c(valueOf));
            } else if (kk.m203a("geo_latitude", a)) {
                r1 = ji.m552a().m563e();
                r3 = "";
                if (r1 != null) {
                    r4 = new StringBuilder();
                    r4.append(r3);
                    r4.append(lr.m300a(r1.getLatitude()));
                    r3 = r4.toString();
                }
                kf.m176a(3, f467a, "Replacing param geo_latitude with: ".concat(String.valueOf(r3)));
                str = str.replace(a, lr.m313c(r3));
            } else if (kk.m203a("geo_longitude", a)) {
                r1 = ji.m552a().m563e();
                r3 = "";
                if (r1 != null) {
                    r4 = new StringBuilder();
                    r4.append(r3);
                    r4.append(lr.m300a(r1.getLongitude()));
                    r3 = r4.toString();
                }
                kf.m176a(3, f467a, "Replacing param geo_longitude with: ".concat(String.valueOf(r3)));
                str = str.replace(a, lr.m313c(r3));
            } else if (kk.m203a("publisher_user_id", a)) {
                valueOf = (String) li.m651a().m266a("UserId");
                kf.m176a(3, f467a, "Replacing param publisher_user_id with: ".concat(String.valueOf(valueOf)));
                str = str.replace(a, lr.m313c(valueOf));
            } else if (kk.m203a("event_name", a)) {
                if (map.containsKey("event_name")) {
                    valueOf = f467a;
                    r3 = new StringBuilder("Replacing param event_name with: ");
                    r3.append((String) map.get("event_name"));
                    kf.m176a(3, valueOf, r3.toString());
                    str = str.replace(a, lr.m313c((String) map.get("event_name")));
                } else {
                    kf.m176a(3, f467a, "Replacing param event_name with empty string");
                    str = str.replace(a, "");
                }
            } else if (!kk.m203a("event_time_millis", a)) {
                kf.m176a(3, f467a, "Unknown param: ".concat(String.valueOf(a)));
                str = str.replace(a, "");
            } else if (map.containsKey("event_time_millis")) {
                valueOf = f467a;
                r3 = new StringBuilder("Replacing param event_time_millis with: ");
                r3.append((String) map.get("event_time_millis"));
                kf.m176a(3, valueOf, r3.toString());
                str = str.replace(a, lr.m313c((String) map.get("event_time_millis")));
            } else {
                kf.m176a(3, f467a, "Replacing param event_time_millis with empty string");
                str = str.replace(a, "");
            }
            a = m204a(str);
        }
        return str;
    }
}
