package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import org.json.JSONObject;

public class FacebookWebFallbackDialog extends WebDialog {
    private static final int OS_BACK_BUTTON_RESPONSE_TIMEOUT_MILLISECONDS = 1500;
    private static final String TAG = "com.facebook.internal.FacebookWebFallbackDialog";
    private boolean waitingForDialogToClose;

    /* renamed from: com.facebook.internal.FacebookWebFallbackDialog$1 */
    class C03921 implements Runnable {
        C03921() {
        }

        public void run() {
            super.cancel();
        }
    }

    public FacebookWebFallbackDialog(Context context, String str, String str2) {
        super(context, str);
        setExpectedRedirectUrl(str2);
    }

    protected Bundle parseResponseUri(String str) {
        str = Utility.parseUrlQueryString(Uri.parse(str).getQuery());
        String string = str.getString(ServerProtocol.FALLBACK_DIALOG_PARAM_BRIDGE_ARGS);
        str.remove(ServerProtocol.FALLBACK_DIALOG_PARAM_BRIDGE_ARGS);
        if (!Utility.isNullOrEmpty(string)) {
            try {
                str.putBundle(NativeProtocol.EXTRA_PROTOCOL_BRIDGE_ARGS, BundleJSONConverter.convertToBundle(new JSONObject(string)));
            } catch (Throwable e) {
                Utility.logd(TAG, "Unable to parse bridge_args JSON", e);
            }
        }
        string = str.getString(ServerProtocol.FALLBACK_DIALOG_PARAM_METHOD_RESULTS);
        str.remove(ServerProtocol.FALLBACK_DIALOG_PARAM_METHOD_RESULTS);
        if (!Utility.isNullOrEmpty(string)) {
            if (Utility.isNullOrEmpty(string)) {
                string = "{}";
            }
            try {
                str.putBundle(NativeProtocol.EXTRA_PROTOCOL_METHOD_RESULTS, BundleJSONConverter.convertToBundle(new JSONObject(string)));
            } catch (Throwable e2) {
                Utility.logd(TAG, "Unable to parse bridge_args JSON", e2);
            }
        }
        str.remove(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION);
        str.putInt(NativeProtocol.EXTRA_PROTOCOL_VERSION, NativeProtocol.getLatestKnownVersion());
        return str;
    }

    public void cancel() {
        WebView webView = getWebView();
        if (!(!isPageFinished() || isListenerCalled() || webView == null)) {
            if (webView.isShown()) {
                if (!this.waitingForDialogToClose) {
                    this.waitingForDialogToClose = true;
                    webView.loadUrl("javascript:".concat(String.valueOf("(function() {  var event = document.createEvent('Event');  event.initEvent('fbPlatformDialogMustClose',true,true);  document.dispatchEvent(event);})();")));
                    new Handler(Looper.getMainLooper()).postDelayed(new C03921(), 1500);
                    return;
                }
                return;
            }
        }
        super.cancel();
    }
}
