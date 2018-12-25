package com.facebook.internal;

import com.facebook.FacebookException;
import com.facebook.share.internal.ShareConstants;
import org.json.JSONArray;
import org.json.JSONObject;

public class GraphUtil {
    private static final String[] dateFormats = new String[]{"yyyy-MM-dd'T'HH:mm:ssZ", "yyyy-MM-dd'T'HH:mm:ss", "yyyy-MM-dd"};

    public static JSONObject createOpenGraphActionForPost(String str) {
        JSONObject jSONObject = new JSONObject();
        if (str != null) {
            try {
                jSONObject.put("type", str);
            } catch (Throwable e) {
                throw new FacebookException("An error occurred while setting up the open graph action", e);
            }
        }
        return jSONObject;
    }

    public static JSONObject createOpenGraphObjectForPost(String str) {
        return createOpenGraphObjectForPost(str, null, null, null, null, null, null);
    }

    public static JSONObject createOpenGraphObjectForPost(String str, String str2, String str3, String str4, String str5, JSONObject jSONObject, String str6) {
        JSONObject jSONObject2 = new JSONObject();
        if (str != null) {
            try {
                jSONObject2.put("type", str);
            } catch (Throwable e) {
                throw new FacebookException("An error occurred while setting up the graph object", e);
            }
        }
        jSONObject2.put(ShareConstants.WEB_DIALOG_PARAM_TITLE, str2);
        if (str3 != null) {
            str = new JSONObject();
            str.put("url", str3);
            str2 = new JSONArray();
            str2.put(str);
            jSONObject2.put("image", str2);
        }
        jSONObject2.put("url", str4);
        jSONObject2.put("description", str5);
        jSONObject2.put(NativeProtocol.OPEN_GRAPH_CREATE_OBJECT_KEY, true);
        if (jSONObject != null) {
            jSONObject2.put(ShareConstants.WEB_DIALOG_PARAM_DATA, jSONObject);
        }
        if (str6 != null) {
            jSONObject2.put("id", str6);
        }
        return jSONObject2;
    }

    public static boolean isOpenGraphObjectForPost(JSONObject jSONObject) {
        return jSONObject != null ? jSONObject.optBoolean(NativeProtocol.OPEN_GRAPH_CREATE_OBJECT_KEY) : null;
    }
}
