package com.flurry.sdk;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class is implements kz<hs> {
    /* renamed from: a */
    private static final String f533a = "is";

    /* renamed from: a */
    public final /* synthetic */ Object mo1368a(InputStream inputStream) throws IOException {
        return m477b(inputStream);
    }

    /* renamed from: b */
    private static hs m477b(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        String str = new String(lr.m309a(inputStream));
        kf.m176a(5, f533a, "Proton response string: ".concat(String.valueOf(str)));
        inputStream = new hs();
        try {
            JSONObject jSONObject = new JSONObject(str);
            inputStream.f70a = jSONObject.optLong("issued_at", -1);
            inputStream.f71b = jSONObject.optLong("refresh_ttl", 3600);
            inputStream.f72c = jSONObject.optLong("expiration_ttl", 86400);
            JSONObject optJSONObject = jSONObject.optJSONObject("global_settings");
            inputStream.f73d = new hz();
            if (optJSONObject != null) {
                inputStream.f73d.f85a = m478b(optJSONObject.optString("log_level"));
            }
            optJSONObject = jSONObject.optJSONObject("pulse");
            hq hqVar = new hq();
            if (optJSONObject != null) {
                m476a(hqVar, optJSONObject.optJSONArray("callbacks"));
                hqVar.f55b = optJSONObject.optInt("max_callback_retries", 3);
                hqVar.f56c = optJSONObject.optInt("max_callback_attempts_per_report", 15);
                hqVar.f57d = optJSONObject.optInt("max_report_delay_seconds", 600);
                hqVar.f58e = optJSONObject.optString("agent_report_url", "");
            }
            inputStream.f74e = hqVar;
            optJSONObject = jSONObject.optJSONObject("analytics");
            inputStream.f75f = new ic();
            if (optJSONObject != null) {
                inputStream.f75f.f97b = optJSONObject.optBoolean("analytics_enabled", true);
                inputStream.f75f.f96a = optJSONObject.optInt("max_session_properties", 10);
            }
            return inputStream;
        } catch (InputStream inputStream2) {
            throw new IOException("Exception while deserialize: ", inputStream2);
        }
    }

    /* renamed from: a */
    private static void m476a(hq hqVar, JSONArray jSONArray) throws JSONException {
        if (jSONArray != null) {
            List arrayList = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    hp hpVar = new hp();
                    hpVar.f45b = optJSONObject.optString("partner", "");
                    m475a(hpVar, optJSONObject.optJSONArray("events"));
                    hpVar.f47d = m474a(optJSONObject.optString("method"));
                    hpVar.f48e = optJSONObject.optString("uri_template", "");
                    JSONObject optJSONObject2 = optJSONObject.optJSONObject("body_template");
                    if (optJSONObject2 != null) {
                        String optString = optJSONObject2.optString("string", "null");
                        if (!optString.equals("null")) {
                            hpVar.f49f = optString;
                        }
                    }
                    hpVar.f50g = optJSONObject.optInt("max_redirects", 5);
                    hpVar.f51h = optJSONObject.optInt("connect_timeout", 20);
                    hpVar.f52i = optJSONObject.optInt("request_timeout", 20);
                    hpVar.f44a = optJSONObject.optLong("callback_id", -1);
                    optJSONObject = optJSONObject.optJSONObject("headers");
                    if (optJSONObject != null) {
                        optJSONObject = optJSONObject.optJSONObject("map");
                        if (optJSONObject != null) {
                            hpVar.f53j = lt.m326a(optJSONObject);
                        }
                    }
                    arrayList.add(hpVar);
                }
            }
            hqVar.f54a = arrayList;
        }
    }

    /* renamed from: a */
    private static void m475a(hp hpVar, JSONArray jSONArray) {
        if (jSONArray != null) {
            List list = null;
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    if (optJSONObject.has("string")) {
                        if (list == null) {
                            list = new ArrayList();
                        }
                        hv hvVar = new hv();
                        hvVar.f79a = optJSONObject.optString("string", "");
                        list.add(hvVar);
                    } else if (optJSONObject.has("com.flurry.proton.generated.avro.v2.EventParameterCallbackTrigger")) {
                        if (list == null) {
                            list = new ArrayList();
                        }
                        optJSONObject = optJSONObject.optJSONObject("com.flurry.proton.generated.avro.v2.EventParameterCallbackTrigger");
                        if (optJSONObject != null) {
                            String[] strArr;
                            hw hwVar = new hw();
                            hwVar.a = optJSONObject.optString("event_name", "");
                            hwVar.f465c = optJSONObject.optString("event_parameter_name", "");
                            JSONArray optJSONArray = optJSONObject.optJSONArray("event_parameter_values");
                            if (optJSONArray != null) {
                                strArr = new String[optJSONArray.length()];
                                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                    strArr[i2] = optJSONArray.optString(i2, "");
                                }
                            } else {
                                strArr = new String[0];
                            }
                            hwVar.f466d = strArr;
                            list.add(hwVar);
                        }
                    }
                }
            }
            hpVar.f46c = list;
        }
    }

    /* renamed from: a */
    private static com.flurry.sdk.ip m474a(java.lang.String r2) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = com.flurry.sdk.ip.GET;
        r1 = android.text.TextUtils.isEmpty(r2);	 Catch:{ Exception -> 0x0011 }
        if (r1 != 0) goto L_0x0011;	 Catch:{ Exception -> 0x0011 }
    L_0x0008:
        r1 = com.flurry.sdk.ip.class;	 Catch:{ Exception -> 0x0011 }
        r2 = java.lang.Enum.valueOf(r1, r2);	 Catch:{ Exception -> 0x0011 }
        r2 = (com.flurry.sdk.ip) r2;	 Catch:{ Exception -> 0x0011 }
        r0 = r2;
    L_0x0011:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.is.a(java.lang.String):com.flurry.sdk.ip");
    }

    /* renamed from: b */
    private static com.flurry.sdk.ia m478b(java.lang.String r2) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = com.flurry.sdk.ia.OFF;
        r1 = android.text.TextUtils.isEmpty(r2);	 Catch:{ Exception -> 0x0011 }
        if (r1 != 0) goto L_0x0011;	 Catch:{ Exception -> 0x0011 }
    L_0x0008:
        r1 = com.flurry.sdk.ia.class;	 Catch:{ Exception -> 0x0011 }
        r2 = java.lang.Enum.valueOf(r1, r2);	 Catch:{ Exception -> 0x0011 }
        r2 = (com.flurry.sdk.ia) r2;	 Catch:{ Exception -> 0x0011 }
        r0 = r2;
    L_0x0011:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.is.b(java.lang.String):com.flurry.sdk.ia");
    }

    /* renamed from: a */
    public final /* synthetic */ void mo1369a(OutputStream outputStream, Object obj) throws IOException {
        throw new IOException("Serialize not supported for response");
    }
}
