package com.facebook;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.share.internal.ShareConstants;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class TestUserManager {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String LOG_TAG = "TestUserManager";
    private Map<String, JSONObject> appTestAccounts;
    private String testApplicationId;
    private String testApplicationSecret;

    private enum Mode {
        PRIVATE,
        SHARED
    }

    public TestUserManager(String str, String str2) {
        if (!Utility.isNullOrEmpty(str2)) {
            if (!Utility.isNullOrEmpty(str)) {
                this.testApplicationSecret = str;
                this.testApplicationId = str2;
                return;
            }
        }
        throw new FacebookException("Must provide app ID and secret");
    }

    public AccessToken getAccessTokenForPrivateUser(List<String> list) {
        return getAccessTokenForUser(list, Mode.PRIVATE, null);
    }

    public AccessToken getAccessTokenForSharedUser(List<String> list) {
        return getAccessTokenForSharedUser(list, null);
    }

    public AccessToken getAccessTokenForSharedUser(List<String> list, String str) {
        return getAccessTokenForUser(list, Mode.SHARED, str);
    }

    public synchronized String getTestApplicationId() {
        return this.testApplicationId;
    }

    public synchronized String getTestApplicationSecret() {
        return this.testApplicationSecret;
    }

    private AccessToken getAccessTokenForUser(List<String> list, Mode mode, String str) {
        retrieveTestAccountsForAppIfNeeded();
        if (Utility.isNullOrEmpty((Collection) list)) {
            list = Arrays.asList(new String[]{"email", "publish_actions"});
        }
        List<String> list2 = list;
        if (mode == Mode.PRIVATE) {
            list = createTestAccount(list2, mode, str);
        } else {
            list = findOrCreateSharedTestAccount(list2, mode, str);
        }
        return new AccessToken(list.optString("access_token"), this.testApplicationId, list.optString("id"), list2, null, AccessTokenSource.TEST_USER, null, null);
    }

    private synchronized void retrieveTestAccountsForAppIfNeeded() {
        if (this.appTestAccounts == null) {
            this.appTestAccounts = new HashMap();
            GraphRequest.setDefaultBatchApplicationId(this.testApplicationId);
            Bundle bundle = new Bundle();
            bundle.putString("access_token", getAppAccessToken());
            GraphRequest graphRequest = new GraphRequest(null, "app/accounts/test-users", bundle, null);
            graphRequest.setBatchEntryName("testUsers");
            graphRequest.setBatchEntryOmitResultOnSuccess(false);
            Bundle bundle2 = new Bundle();
            bundle2.putString("access_token", getAppAccessToken());
            bundle2.putString("ids", "{result=testUsers:$.data.*.id}");
            bundle2.putString(GraphRequest.FIELDS_PARAM, "name");
            new GraphRequest(null, "", bundle2, null).setBatchEntryDependsOn("testUsers");
            List executeBatchAndWait = GraphRequest.executeBatchAndWait(graphRequest, r4);
            if (executeBatchAndWait != null) {
                if (executeBatchAndWait.size() == 2) {
                    populateTestAccounts(((GraphResponse) executeBatchAndWait.get(0)).getJSONObject().optJSONArray(ShareConstants.WEB_DIALOG_PARAM_DATA), ((GraphResponse) executeBatchAndWait.get(1)).getJSONObject());
                    return;
                }
            }
            throw new FacebookException("Unexpected number of results from TestUsers batch query");
        }
    }

    private synchronized void populateTestAccounts(JSONArray jSONArray, JSONObject jSONObject) {
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            try {
                optJSONObject.put("name", jSONObject.optJSONObject(optJSONObject.optString("id")).optString("name"));
            } catch (Throwable e) {
                Log.e(LOG_TAG, "Could not set name", e);
            }
            storeTestAccount(optJSONObject);
        }
    }

    private synchronized void storeTestAccount(JSONObject jSONObject) {
        this.appTestAccounts.put(jSONObject.optString("id"), jSONObject);
    }

    private synchronized JSONObject findTestAccountMatchingIdentifier(String str) {
        for (JSONObject jSONObject : this.appTestAccounts.values()) {
            if (jSONObject.optString("name").contains(str)) {
                return jSONObject;
            }
        }
        return null;
    }

    final String getAppAccessToken() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.testApplicationId);
        stringBuilder.append("|");
        stringBuilder.append(this.testApplicationSecret);
        return stringBuilder.toString();
    }

    private JSONObject findOrCreateSharedTestAccount(List<String> list, Mode mode, String str) {
        JSONObject findTestAccountMatchingIdentifier = findTestAccountMatchingIdentifier(getSharedTestAccountIdentifier(list, str));
        if (findTestAccountMatchingIdentifier != null) {
            return findTestAccountMatchingIdentifier;
        }
        return createTestAccount(list, mode, str);
    }

    private String getSharedTestAccountIdentifier(List<String> list, String str) {
        return validNameStringFromInteger((((long) getPermissionsString(list).hashCode()) & 4294967295L) ^ (str != null ? ((long) str.hashCode()) & 4294967295L : 0));
    }

    private String validNameStringFromInteger(long j) {
        j = Long.toString(j);
        StringBuilder stringBuilder = new StringBuilder("Perm");
        j = j.toCharArray();
        int i = 0;
        int length = j.length;
        char c = '\u0000';
        while (i < length) {
            char c2 = j[i];
            c = c2 == c ? (char) (c2 + 10) : c2;
            stringBuilder.append((char) ((c + 97) - 48));
            i++;
        }
        return stringBuilder.toString();
    }

    private JSONObject createTestAccount(List<String> list, Mode mode, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("installed", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        bundle.putString(NativeProtocol.RESULT_ARGS_PERMISSIONS, getPermissionsString(list));
        bundle.putString("access_token", getAppAccessToken());
        if (mode == Mode.SHARED) {
            bundle.putString("name", String.format("Shared %s Testuser", new Object[]{getSharedTestAccountIdentifier(list, str)}));
        }
        list = new GraphRequest(null, String.format("%s/accounts/test-users", new Object[]{this.testApplicationId}), bundle, HttpMethod.POST).executeAndWait();
        str = list.getError();
        list = list.getJSONObject();
        if (str != null) {
            return null;
        }
        if (mode == Mode.SHARED) {
            try {
                list.put("name", bundle.getString("name"));
            } catch (Mode mode2) {
                Log.e(LOG_TAG, "Could not set name", mode2);
            }
            storeTestAccount(list);
        }
        return list;
    }

    private String getPermissionsString(List<String> list) {
        return TextUtils.join(",", list);
    }
}
