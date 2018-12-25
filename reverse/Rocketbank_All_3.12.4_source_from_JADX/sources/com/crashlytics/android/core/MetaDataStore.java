package com.crashlytics.android.core;

import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.Map;
import org.json.JSONObject;

final class MetaDataStore {
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private final File filesDir;

    public MetaDataStore(File file) {
        this.filesDir = file;
    }

    public final void writeUserData(String str, final UserMetaData userMetaData) {
        File file = this.filesDir;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append("user.meta");
        File file2 = new File(file, stringBuilder.toString());
        str = null;
        try {
            userMetaData = new JSONObject() {
            }.toString();
            Closeable bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file2), UTF_8));
            try {
                bufferedWriter.write(userMetaData);
                bufferedWriter.flush();
                CommonUtils.closeOrLog(bufferedWriter, "Failed to close user metadata file.");
            } catch (String str2) {
                userMetaData = str2;
                str2 = bufferedWriter;
                try {
                    Fabric.getLogger().mo771e("CrashlyticsCore", "Error serializing user metadata.", userMetaData);
                    CommonUtils.closeOrLog(str2, "Failed to close user metadata file.");
                } catch (Throwable th) {
                    userMetaData = th;
                    CommonUtils.closeOrLog(str2, "Failed to close user metadata file.");
                    throw userMetaData;
                }
            } catch (String str22) {
                userMetaData = str22;
                str22 = bufferedWriter;
                CommonUtils.closeOrLog(str22, "Failed to close user metadata file.");
                throw userMetaData;
            }
        } catch (Exception e) {
            userMetaData = e;
            Fabric.getLogger().mo771e("CrashlyticsCore", "Error serializing user metadata.", userMetaData);
            CommonUtils.closeOrLog(str22, "Failed to close user metadata file.");
        }
    }

    public final UserMetaData readUserData(String str) {
        Closeable fileInputStream;
        File file = this.filesDir;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append("user.meta");
        File file2 = new File(file, stringBuilder.toString());
        if (file2.exists() == null) {
            return UserMetaData.EMPTY;
        }
        str = null;
        try {
            fileInputStream = new FileInputStream(file2);
            try {
                JSONObject jSONObject = new JSONObject(CommonUtils.streamToString(fileInputStream));
                String str2 = "userId";
                str2 = !jSONObject.isNull(str2) ? jSONObject.optString(str2, null) : null;
                String str3 = "userName";
                str3 = !jSONObject.isNull(str3) ? jSONObject.optString(str3, null) : null;
                String str4 = "userEmail";
                if (!jSONObject.isNull(str4)) {
                    str = jSONObject.optString(str4, null);
                }
                UserMetaData userMetaData = new UserMetaData(str2, str3, str);
                CommonUtils.closeOrLog(fileInputStream, "Failed to close user metadata file.");
                return userMetaData;
            } catch (Exception e) {
                str = e;
                try {
                    Fabric.getLogger().mo771e("CrashlyticsCore", "Error deserializing user metadata.", str);
                    CommonUtils.closeOrLog(fileInputStream, "Failed to close user metadata file.");
                    return UserMetaData.EMPTY;
                } catch (Throwable th) {
                    str = th;
                    CommonUtils.closeOrLog(fileInputStream, "Failed to close user metadata file.");
                    throw str;
                }
            }
        } catch (Exception e2) {
            fileInputStream = null;
            str = e2;
            Fabric.getLogger().mo771e("CrashlyticsCore", "Error deserializing user metadata.", str);
            CommonUtils.closeOrLog(fileInputStream, "Failed to close user metadata file.");
            return UserMetaData.EMPTY;
        } catch (Throwable th2) {
            fileInputStream = null;
            str = th2;
            CommonUtils.closeOrLog(fileInputStream, "Failed to close user metadata file.");
            throw str;
        }
    }

    public final void writeKeyData(String str, Map<String, String> map) {
        File file = this.filesDir;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append("keys.meta");
        File file2 = new File(file, stringBuilder.toString());
        str = null;
        try {
            map = new JSONObject(map).toString();
            Closeable bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file2), UTF_8));
            try {
                bufferedWriter.write(map);
                bufferedWriter.flush();
                CommonUtils.closeOrLog(bufferedWriter, "Failed to close key/value metadata file.");
            } catch (String str2) {
                map = str2;
                str2 = bufferedWriter;
                try {
                    Fabric.getLogger().mo771e("CrashlyticsCore", "Error serializing key/value metadata.", map);
                    CommonUtils.closeOrLog(str2, "Failed to close key/value metadata file.");
                } catch (Throwable th) {
                    map = th;
                    CommonUtils.closeOrLog(str2, "Failed to close key/value metadata file.");
                    throw map;
                }
            } catch (String str22) {
                map = str22;
                str22 = bufferedWriter;
                CommonUtils.closeOrLog(str22, "Failed to close key/value metadata file.");
                throw map;
            }
        } catch (Exception e) {
            map = e;
            Fabric.getLogger().mo771e("CrashlyticsCore", "Error serializing key/value metadata.", map);
            CommonUtils.closeOrLog(str22, "Failed to close key/value metadata file.");
        }
    }
}
