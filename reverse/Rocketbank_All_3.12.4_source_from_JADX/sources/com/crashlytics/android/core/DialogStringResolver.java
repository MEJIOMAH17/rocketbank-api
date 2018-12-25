package com.crashlytics.android.core;

import android.content.Context;
import com.android.databinding.library.baseAdapters.C0292R;
import io.fabric.sdk.android.services.common.CommonUtils;

final class DialogStringResolver {
    private final Context context;
    private final C0292R promptData$73c74dcd;

    public DialogStringResolver(Context context, C0292R c0292r) {
        this.context = context;
        this.promptData$73c74dcd = c0292r;
    }

    public final String getTitle() {
        Object obj;
        String str = this.promptData$73c74dcd.title;
        String stringsFileValue = CommonUtils.getStringsFileValue(this.context, "com.crashlytics.CrashSubmissionPromptTitle");
        if (stringsFileValue != null) {
            if (stringsFileValue.length() != 0) {
                obj = null;
                return obj == null ? str : stringsFileValue;
            }
        }
        obj = 1;
        if (obj == null) {
        }
    }

    public final String getMessage() {
        Object obj;
        String str = this.promptData$73c74dcd.message;
        String stringsFileValue = CommonUtils.getStringsFileValue(this.context, "com.crashlytics.CrashSubmissionPromptMessage");
        if (stringsFileValue != null) {
            if (stringsFileValue.length() != 0) {
                obj = null;
                return obj == null ? str : stringsFileValue;
            }
        }
        obj = 1;
        if (obj == null) {
        }
    }

    public final String getSendButtonTitle() {
        Object obj;
        String str = this.promptData$73c74dcd.sendButtonTitle;
        String stringsFileValue = CommonUtils.getStringsFileValue(this.context, "com.crashlytics.CrashSubmissionSendTitle");
        if (stringsFileValue != null) {
            if (stringsFileValue.length() != 0) {
                obj = null;
                return obj == null ? str : stringsFileValue;
            }
        }
        obj = 1;
        if (obj == null) {
        }
    }

    public final String getAlwaysSendButtonTitle() {
        Object obj;
        String str = this.promptData$73c74dcd.alwaysSendButtonTitle;
        String stringsFileValue = CommonUtils.getStringsFileValue(this.context, "com.crashlytics.CrashSubmissionAlwaysSendTitle");
        if (stringsFileValue != null) {
            if (stringsFileValue.length() != 0) {
                obj = null;
                return obj == null ? str : stringsFileValue;
            }
        }
        obj = 1;
        if (obj == null) {
        }
    }

    public final String getCancelButtonTitle() {
        Object obj;
        String str = this.promptData$73c74dcd.cancelButtonTitle;
        String stringsFileValue = CommonUtils.getStringsFileValue(this.context, "com.crashlytics.CrashSubmissionCancelTitle");
        if (stringsFileValue != null) {
            if (stringsFileValue.length() != 0) {
                obj = null;
                return obj == null ? str : stringsFileValue;
            }
        }
        obj = 1;
        if (obj == null) {
        }
    }
}
