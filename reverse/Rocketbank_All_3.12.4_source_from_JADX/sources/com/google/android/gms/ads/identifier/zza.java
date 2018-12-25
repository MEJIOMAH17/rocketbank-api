package com.google.android.gms.ads.identifier;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.util.Log;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

public class zza {
    public void zzu(String str) {
        StringBuilder stringBuilder;
        Throwable e;
        String str2;
        String valueOf;
        String str3;
        HttpURLConnection httpURLConnection;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode < Callback.DEFAULT_DRAG_ANIMATION_DURATION || responseCode >= 300) {
                stringBuilder = new StringBuilder(65 + String.valueOf(str).length());
                stringBuilder.append("Received non-success response code ");
                stringBuilder.append(responseCode);
                stringBuilder.append(" from pinging URL: ");
                stringBuilder.append(str);
                Log.w("HttpUrlPinger", stringBuilder.toString());
            }
            httpURLConnection.disconnect();
        } catch (IndexOutOfBoundsException e2) {
            e = e2;
            str2 = "HttpUrlPinger";
            valueOf = String.valueOf(e.getMessage());
            stringBuilder = new StringBuilder((32 + String.valueOf(str).length()) + String.valueOf(valueOf).length());
            str3 = "Error while parsing ping URL: ";
            stringBuilder.append(str3);
            stringBuilder.append(str);
            stringBuilder.append(". ");
            stringBuilder.append(valueOf);
            Log.w(str2, stringBuilder.toString(), e);
        } catch (IOException e3) {
            e = e3;
            str2 = "HttpUrlPinger";
            valueOf = String.valueOf(e.getMessage());
            stringBuilder = new StringBuilder((27 + String.valueOf(str).length()) + String.valueOf(valueOf).length());
            str3 = "Error while pinging URL: ";
            stringBuilder.append(str3);
            stringBuilder.append(str);
            stringBuilder.append(". ");
            stringBuilder.append(valueOf);
            Log.w(str2, stringBuilder.toString(), e);
        } catch (Throwable th) {
            httpURLConnection.disconnect();
        }
    }
}
