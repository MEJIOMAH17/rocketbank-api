package com.facebook.applinks;

import android.net.Uri;
import android.os.Bundle;
import bolts.AppLink;
import bolts.AppLink.Target;
import bolts.Task;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.GraphRequest.Callback;
import com.google.maps.android.clustering.ClusterManager.OnClusterItemInfoWindowClickListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class FacebookAppLinkResolver {
    private static final String APP_LINK_ANDROID_TARGET_KEY = "android";
    private static final String APP_LINK_KEY = "app_links";
    private static final String APP_LINK_TARGET_APP_NAME_KEY = "app_name";
    private static final String APP_LINK_TARGET_CLASS_KEY = "class";
    private static final String APP_LINK_TARGET_PACKAGE_KEY = "package";
    private static final String APP_LINK_TARGET_SHOULD_FALLBACK_KEY = "should_fallback";
    private static final String APP_LINK_TARGET_URL_KEY = "url";
    private static final String APP_LINK_WEB_TARGET_KEY = "web";
    private final HashMap<Uri, AppLink> cachedAppLinks = new HashMap();

    public Task<AppLink> getAppLinkFromUrlInBackground(final Uri uri) {
        List arrayList = new ArrayList();
        arrayList.add(uri);
        return getAppLinkFromUrlsInBackground(arrayList).onSuccess$5ad45bad(new OnClusterItemInfoWindowClickListener<Map<Uri, AppLink>, AppLink>() {
            public AppLink then(Task<Map<Uri, AppLink>> task) throws Exception {
                return (AppLink) ((Map) task.getResult()).get(uri);
            }
        });
    }

    public Task<Map<Uri, AppLink>> getAppLinkFromUrlsInBackground(List<Uri> list) {
        final Map hashMap = new HashMap();
        final HashSet hashSet = new HashSet();
        StringBuilder stringBuilder = new StringBuilder();
        for (Uri uri : list) {
            synchronized (this.cachedAppLinks) {
                AppLink appLink = (AppLink) this.cachedAppLinks.get(uri);
            }
            if (appLink != null) {
                hashMap.put(uri, appLink);
            } else {
                if (!hashSet.isEmpty()) {
                    stringBuilder.append(',');
                }
                stringBuilder.append(uri.toString());
                hashSet.add(uri);
            }
        }
        if (hashSet.isEmpty() != null) {
            return Task.forResult(hashMap);
        }
        list = Task.create();
        Bundle bundle = new Bundle();
        bundle.putString("ids", stringBuilder.toString());
        bundle.putString(GraphRequest.FIELDS_PARAM, String.format("%s.fields(%s,%s)", new Object[]{APP_LINK_KEY, "android", "web"}));
        new GraphRequest(AccessToken.getCurrentAccessToken(), "", bundle, null, new Callback() {
            public void onCompleted(com.facebook.GraphResponse r9) {
                /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
                /*
                r8 = this;
                r0 = r9.getError();
                if (r0 == 0) goto L_0x0010;
            L_0x0006:
                r9 = r10;
                r0 = r0.getException();
                r9.setError(r0);
                return;
            L_0x0010:
                r9 = r9.getJSONObject();
                if (r9 != 0) goto L_0x001e;
            L_0x0016:
                r9 = r10;
                r0 = r0;
                r9.setResult(r0);
                return;
            L_0x001e:
                r0 = r1;
                r0 = r0.iterator();
            L_0x0024:
                r1 = r0.hasNext();
                if (r1 == 0) goto L_0x008d;
            L_0x002a:
                r1 = r0.next();
                r1 = (android.net.Uri) r1;
                r2 = r1.toString();
                r2 = r9.has(r2);
                if (r2 == 0) goto L_0x0024;
            L_0x003a:
                r2 = r1.toString();	 Catch:{ JSONException -> 0x0024 }
                r2 = r9.getJSONObject(r2);	 Catch:{ JSONException -> 0x0024 }
                r3 = "app_links";	 Catch:{ JSONException -> 0x0024 }
                r2 = r2.getJSONObject(r3);	 Catch:{ JSONException -> 0x0024 }
                r3 = "android";	 Catch:{ JSONException -> 0x0024 }
                r3 = r2.getJSONArray(r3);	 Catch:{ JSONException -> 0x0024 }
                r4 = r3.length();	 Catch:{ JSONException -> 0x0024 }
                r5 = new java.util.ArrayList;	 Catch:{ JSONException -> 0x0024 }
                r5.<init>(r4);	 Catch:{ JSONException -> 0x0024 }
                r6 = 0;	 Catch:{ JSONException -> 0x0024 }
            L_0x0058:
                if (r6 >= r4) goto L_0x006a;	 Catch:{ JSONException -> 0x0024 }
            L_0x005a:
                r7 = r3.getJSONObject(r6);	 Catch:{ JSONException -> 0x0024 }
                r7 = com.facebook.applinks.FacebookAppLinkResolver.getAndroidTargetFromJson(r7);	 Catch:{ JSONException -> 0x0024 }
                if (r7 == 0) goto L_0x0067;	 Catch:{ JSONException -> 0x0024 }
            L_0x0064:
                r5.add(r7);	 Catch:{ JSONException -> 0x0024 }
            L_0x0067:
                r6 = r6 + 1;	 Catch:{ JSONException -> 0x0024 }
                goto L_0x0058;	 Catch:{ JSONException -> 0x0024 }
            L_0x006a:
                r2 = com.facebook.applinks.FacebookAppLinkResolver.getWebFallbackUriFromJson(r1, r2);	 Catch:{ JSONException -> 0x0024 }
                r3 = new bolts.AppLink;	 Catch:{ JSONException -> 0x0024 }
                r3.<init>(r1, r5, r2);	 Catch:{ JSONException -> 0x0024 }
                r2 = r0;	 Catch:{ JSONException -> 0x0024 }
                r2.put(r1, r3);	 Catch:{ JSONException -> 0x0024 }
                r2 = com.facebook.applinks.FacebookAppLinkResolver.this;	 Catch:{ JSONException -> 0x0024 }
                r2 = r2.cachedAppLinks;	 Catch:{ JSONException -> 0x0024 }
                monitor-enter(r2);	 Catch:{ JSONException -> 0x0024 }
                r4 = com.facebook.applinks.FacebookAppLinkResolver.this;	 Catch:{ all -> 0x008a }
                r4 = r4.cachedAppLinks;	 Catch:{ all -> 0x008a }
                r4.put(r1, r3);	 Catch:{ all -> 0x008a }
                monitor-exit(r2);	 Catch:{ all -> 0x008a }
                goto L_0x0024;	 Catch:{ all -> 0x008a }
            L_0x008a:
                r1 = move-exception;	 Catch:{ all -> 0x008a }
                monitor-exit(r2);	 Catch:{ all -> 0x008a }
                throw r1;	 Catch:{ JSONException -> 0x0024 }
            L_0x008d:
                r9 = r10;
                r0 = r0;
                r9.setResult(r0);
                return;
                */
                throw new UnsupportedOperationException("Method not decompiled: com.facebook.applinks.FacebookAppLinkResolver.2.onCompleted(com.facebook.GraphResponse):void");
            }
        }).executeAsync();
        return list.getTask();
    }

    private static Target getAndroidTargetFromJson(JSONObject jSONObject) {
        Uri uri = null;
        String tryGetStringFromJson = tryGetStringFromJson(jSONObject, APP_LINK_TARGET_PACKAGE_KEY, null);
        if (tryGetStringFromJson == null) {
            return null;
        }
        String tryGetStringFromJson2 = tryGetStringFromJson(jSONObject, APP_LINK_TARGET_CLASS_KEY, null);
        String tryGetStringFromJson3 = tryGetStringFromJson(jSONObject, "app_name", null);
        jSONObject = tryGetStringFromJson(jSONObject, "url", null);
        if (jSONObject != null) {
            uri = Uri.parse(jSONObject);
        }
        return new Target(tryGetStringFromJson, tryGetStringFromJson2, uri, tryGetStringFromJson3);
    }

    private static android.net.Uri getWebFallbackUriFromJson(android.net.Uri r2, org.json.JSONObject r3) {
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
        r0 = "web";	 Catch:{ JSONException -> 0x0021 }
        r3 = r3.getJSONObject(r0);	 Catch:{ JSONException -> 0x0021 }
        r0 = "should_fallback";	 Catch:{ JSONException -> 0x0021 }
        r1 = 1;	 Catch:{ JSONException -> 0x0021 }
        r0 = tryGetBooleanFromJson(r3, r0, r1);	 Catch:{ JSONException -> 0x0021 }
        r1 = 0;	 Catch:{ JSONException -> 0x0021 }
        if (r0 != 0) goto L_0x0011;	 Catch:{ JSONException -> 0x0021 }
    L_0x0010:
        return r1;	 Catch:{ JSONException -> 0x0021 }
    L_0x0011:
        r0 = "url";	 Catch:{ JSONException -> 0x0021 }
        r3 = tryGetStringFromJson(r3, r0, r1);	 Catch:{ JSONException -> 0x0021 }
        if (r3 == 0) goto L_0x001d;	 Catch:{ JSONException -> 0x0021 }
    L_0x0019:
        r1 = android.net.Uri.parse(r3);	 Catch:{ JSONException -> 0x0021 }
    L_0x001d:
        if (r1 == 0) goto L_0x0020;
    L_0x001f:
        return r1;
    L_0x0020:
        return r2;
    L_0x0021:
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.applinks.FacebookAppLinkResolver.getWebFallbackUriFromJson(android.net.Uri, org.json.JSONObject):android.net.Uri");
    }

    private static java.lang.String tryGetStringFromJson(org.json.JSONObject r0, java.lang.String r1, java.lang.String r2) {
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
        r0 = r0.getString(r1);	 Catch:{ JSONException -> 0x0005 }
        return r0;
    L_0x0005:
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.applinks.FacebookAppLinkResolver.tryGetStringFromJson(org.json.JSONObject, java.lang.String, java.lang.String):java.lang.String");
    }

    private static boolean tryGetBooleanFromJson(org.json.JSONObject r0, java.lang.String r1, boolean r2) {
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
        r0 = r0.getBoolean(r1);	 Catch:{ JSONException -> 0x0005 }
        return r0;
    L_0x0005:
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.applinks.FacebookAppLinkResolver.tryGetBooleanFromJson(org.json.JSONObject, java.lang.String, boolean):boolean");
    }
}
