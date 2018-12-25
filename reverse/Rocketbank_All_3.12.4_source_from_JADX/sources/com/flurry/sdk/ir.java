package com.flurry.sdk;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ir implements kz<hr> {
    /* renamed from: a */
    private static final String f532a = "ir";

    /* renamed from: a */
    public final /* synthetic */ void mo1369a(OutputStream outputStream, Object obj) throws IOException {
        hr hrVar = (hr) obj;
        if (outputStream != null) {
            if (hrVar != null) {
                DataOutputStream c04841 = new DataOutputStream(this, outputStream) {
                    /* renamed from: a */
                    final /* synthetic */ ir f185a;

                    public final void close() {
                    }
                };
                outputStream = new JSONObject();
                try {
                    Object obj2;
                    JSONObject jSONObject;
                    m471a(outputStream, "project_key", hrVar.f59a);
                    m471a(outputStream, "bundle_id", hrVar.f60b);
                    m471a(outputStream, "app_version", hrVar.f61c);
                    outputStream.put("sdk_version", hrVar.f62d);
                    outputStream.put("platform", hrVar.f63e);
                    m471a(outputStream, "platform_version", hrVar.f64f);
                    outputStream.put("limit_ad_tracking", hrVar.f65g);
                    Object obj3 = null;
                    if (hrVar.f66h == null || hrVar.f66h.f78a == null) {
                        obj2 = null;
                    } else {
                        obj2 = new JSONObject();
                        JSONObject jSONObject2 = new JSONObject();
                        m471a(jSONObject2, "model", hrVar.f66h.f78a.f38a);
                        m471a(jSONObject2, "brand", hrVar.f66h.f78a.f39b);
                        m471a(jSONObject2, "id", hrVar.f66h.f78a.f40c);
                        m471a(jSONObject2, "device", hrVar.f66h.f78a.f41d);
                        m471a(jSONObject2, "product", hrVar.f66h.f78a.f42e);
                        m471a(jSONObject2, "version_release", hrVar.f66h.f78a.f43f);
                        obj2.put("com.flurry.proton.generated.avro.v2.AndroidTags", jSONObject2);
                    }
                    if (obj2 != null) {
                        outputStream.put("device_tags", obj2);
                    } else {
                        outputStream.put("device_tags", JSONObject.NULL);
                    }
                    JSONArray jSONArray = new JSONArray();
                    for (ht htVar : hrVar.f67i) {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("type", htVar.f76a);
                        m471a(jSONObject3, "id", htVar.f77b);
                        jSONArray.put(jSONObject3);
                    }
                    outputStream.put("device_ids", jSONArray);
                    if (!(hrVar.f68j == null || hrVar.f68j.f84a == null)) {
                        obj3 = new JSONObject();
                        jSONObject = new JSONObject();
                        jSONObject.putOpt("latitude", Double.valueOf(hrVar.f68j.f84a.f81a));
                        jSONObject.putOpt("longitude", Double.valueOf(hrVar.f68j.f84a.f82b));
                        jSONObject.putOpt("accuracy", Float.valueOf(hrVar.f68j.f84a.f83c));
                        obj3.put("com.flurry.proton.generated.avro.v2.Geolocation", jSONObject);
                    }
                    if (obj3 != null) {
                        outputStream.put("geo", obj3);
                    } else {
                        outputStream.put("geo", JSONObject.NULL);
                    }
                    jSONObject = new JSONObject();
                    if (hrVar.f69k != null) {
                        m471a(jSONObject, "string", hrVar.f69k.f95a);
                        outputStream.put("publisher_user_id", jSONObject);
                    } else {
                        outputStream.put("publisher_user_id", JSONObject.NULL);
                    }
                    String str = f532a;
                    StringBuilder stringBuilder = new StringBuilder("Proton Request String: ");
                    stringBuilder.append(outputStream.toString());
                    kf.m176a(5, str, stringBuilder.toString());
                    c04841.write(outputStream.toString().getBytes());
                    c04841.flush();
                    c04841.close();
                } catch (OutputStream outputStream2) {
                    throw new IOException("Invalid Json", outputStream2);
                } catch (Throwable th) {
                    c04841.close();
                }
            }
        }
    }

    /* renamed from: a */
    private static void m471a(JSONObject jSONObject, String str, String str2) throws IOException, JSONException {
        if (str2 != null) {
            jSONObject.put(str, str2);
        } else {
            jSONObject.put(str, JSONObject.NULL);
        }
    }

    /* renamed from: a */
    public final /* synthetic */ Object mo1368a(InputStream inputStream) throws IOException {
        throw new IOException("Deserialize not supported for request");
    }
}
