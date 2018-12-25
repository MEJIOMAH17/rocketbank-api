package com.facebook.internal;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import android.support.customtabs.CustomTabsIntent;
import android.support.customtabs.CustomTabsIntent.Builder;
import android.support.v4.content.ContextCompat;
import com.facebook.FacebookSdk;

public class CustomTab {
    private Uri uri;

    public CustomTab(String str, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        String dialogAuthority = ServerProtocol.getDialogAuthority();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(FacebookSdk.getGraphApiVersion());
        stringBuilder.append("/dialog/");
        stringBuilder.append(str);
        this.uri = Utility.buildUri(dialogAuthority, stringBuilder.toString(), bundle);
    }

    public void openCustomTab(Activity activity, String str) {
        CustomTabsIntent build = new Builder().build();
        build.intent.setPackage(str);
        build.intent.addFlags(1073741824);
        build.intent.setData(this.uri);
        ContextCompat.startActivity(activity, build.intent, null);
    }
}
