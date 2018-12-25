package com.facebook.appevents.internal;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import com.facebook.FacebookSdk;
import java.util.UUID;

class SessionInfo {
    private static final String INTERRUPTION_COUNT_KEY = "com.facebook.appevents.SessionInfo.interruptionCount";
    private static final String LAST_SESSION_INFO_END_KEY = "com.facebook.appevents.SessionInfo.sessionEndTime";
    private static final String LAST_SESSION_INFO_START_KEY = "com.facebook.appevents.SessionInfo.sessionStartTime";
    private static final String SESSION_ID_KEY = "com.facebook.appevents.SessionInfo.sessionId";
    private Long diskRestoreTime;
    private int interruptionCount;
    private UUID sessionId;
    private Long sessionLastEventTime;
    private Long sessionStartTime;
    private SourceApplicationInfo sourceApplicationInfo;

    public SessionInfo(Long l, Long l2) {
        this(l, l2, UUID.randomUUID());
    }

    public SessionInfo(Long l, Long l2, UUID uuid) {
        this.sessionStartTime = l;
        this.sessionLastEventTime = l2;
        this.sessionId = uuid;
    }

    public static SessionInfo getStoredSessionInfo() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(FacebookSdk.getApplicationContext());
        long j = defaultSharedPreferences.getLong(LAST_SESSION_INFO_START_KEY, 0);
        long j2 = defaultSharedPreferences.getLong(LAST_SESSION_INFO_END_KEY, 0);
        String string = defaultSharedPreferences.getString(SESSION_ID_KEY, null);
        if (!(j == 0 || j2 == 0)) {
            if (string != null) {
                SessionInfo sessionInfo = new SessionInfo(Long.valueOf(j), Long.valueOf(j2));
                sessionInfo.interruptionCount = defaultSharedPreferences.getInt(INTERRUPTION_COUNT_KEY, 0);
                sessionInfo.sourceApplicationInfo = SourceApplicationInfo.getStoredSourceApplicatioInfo();
                sessionInfo.diskRestoreTime = Long.valueOf(System.currentTimeMillis());
                sessionInfo.sessionId = UUID.fromString(string);
                return sessionInfo;
            }
        }
        return null;
    }

    public static void clearSavedSessionFromDisk() {
        Editor edit = PreferenceManager.getDefaultSharedPreferences(FacebookSdk.getApplicationContext()).edit();
        edit.remove(LAST_SESSION_INFO_START_KEY);
        edit.remove(LAST_SESSION_INFO_END_KEY);
        edit.remove(INTERRUPTION_COUNT_KEY);
        edit.remove(SESSION_ID_KEY);
        edit.apply();
        SourceApplicationInfo.clearSavedSourceApplicationInfoFromDisk();
    }

    public Long getSessionStartTime() {
        return this.sessionStartTime;
    }

    public Long getSessionLastEventTime() {
        return this.sessionLastEventTime;
    }

    public void setSessionStartTime(Long l) {
        this.sessionStartTime = l;
    }

    public void setSessionLastEventTime(Long l) {
        this.sessionLastEventTime = l;
    }

    public int getInterruptionCount() {
        return this.interruptionCount;
    }

    public void incrementInterruptionCount() {
        this.interruptionCount++;
    }

    public long getDiskRestoreTime() {
        return this.diskRestoreTime == null ? 0 : this.diskRestoreTime.longValue();
    }

    public UUID getSessionId() {
        return this.sessionId;
    }

    public long getSessionLength() {
        if (this.sessionStartTime != null) {
            if (this.sessionLastEventTime != null) {
                return this.sessionLastEventTime.longValue() - this.sessionStartTime.longValue();
            }
        }
        return 0;
    }

    public SourceApplicationInfo getSourceApplicationInfo() {
        return this.sourceApplicationInfo;
    }

    public void setSourceApplicationInfo(SourceApplicationInfo sourceApplicationInfo) {
        this.sourceApplicationInfo = sourceApplicationInfo;
    }

    public void writeSessionToDisk() {
        Editor edit = PreferenceManager.getDefaultSharedPreferences(FacebookSdk.getApplicationContext()).edit();
        edit.putLong(LAST_SESSION_INFO_START_KEY, this.sessionStartTime.longValue());
        edit.putLong(LAST_SESSION_INFO_END_KEY, this.sessionLastEventTime.longValue());
        edit.putInt(INTERRUPTION_COUNT_KEY, this.interruptionCount);
        edit.putString(SESSION_ID_KEY, this.sessionId.toString());
        edit.apply();
        if (this.sourceApplicationInfo != null) {
            this.sourceApplicationInfo.writeSourceApplicationInfoToDisk();
        }
    }
}
