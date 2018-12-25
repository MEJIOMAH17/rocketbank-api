package com.facebook.share;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookGraphResponseException;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.GraphRequest.Callback;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.internal.CollectionMapper;
import com.facebook.internal.CollectionMapper.OnErrorListener;
import com.facebook.internal.CollectionMapper.OnMapValueCompleteListener;
import com.facebook.internal.CollectionMapper.OnMapperCompleteListener;
import com.facebook.internal.CollectionMapper.ValueMapper;
import com.facebook.internal.Mutable;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.share.Sharer.Result;
import com.facebook.share.internal.ShareConstants;
import com.facebook.share.internal.ShareContentValidation;
import com.facebook.share.internal.ShareInternalUtility;
import com.facebook.share.internal.VideoUploader;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.ShareOpenGraphObject;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class ShareApi {
    private static final String DEFAULT_CHARSET = "UTF-8";
    private static final String DEFAULT_GRAPH_NODE = "me";
    private static final String GRAPH_PATH_FORMAT = "%s/%s";
    private static final String PHOTOS_EDGE = "photos";
    private static final String TAG = "ShareApi";
    private String graphNode = DEFAULT_GRAPH_NODE;
    private String message;
    private final ShareContent shareContent;

    /* renamed from: com.facebook.share.ShareApi$7 */
    class C10397 implements ValueMapper {
        C10397() {
        }

        public void mapValue(Object obj, OnMapValueCompleteListener onMapValueCompleteListener) {
            if (obj instanceof ArrayList) {
                ShareApi.this.stageArrayList((ArrayList) obj, onMapValueCompleteListener);
            } else if (obj instanceof ShareOpenGraphObject) {
                ShareApi.this.stageOpenGraphObject((ShareOpenGraphObject) obj, onMapValueCompleteListener);
            } else if (obj instanceof SharePhoto) {
                ShareApi.this.stagePhoto((SharePhoto) obj, onMapValueCompleteListener);
            } else {
                onMapValueCompleteListener.onComplete(obj);
            }
        }
    }

    public static void share(ShareContent shareContent, FacebookCallback<Result> facebookCallback) {
        new ShareApi(shareContent).share(facebookCallback);
    }

    public ShareApi(ShareContent shareContent) {
        this.shareContent = shareContent;
    }

    public final String getMessage() {
        return this.message;
    }

    public final void setMessage(String str) {
        this.message = str;
    }

    public final String getGraphNode() {
        return this.graphNode;
    }

    public final void setGraphNode(String str) {
        this.graphNode = str;
    }

    public final ShareContent getShareContent() {
        return this.shareContent;
    }

    public final boolean canShare() {
        if (getShareContent() == null) {
            return false;
        }
        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
        if (currentAccessToken == null) {
            return false;
        }
        Set permissions = currentAccessToken.getPermissions();
        if (permissions == null || !permissions.contains("publish_actions")) {
            Log.w(TAG, "The publish_actions permissions are missing, the share will fail unless this app was authorized to publish in another installation.");
        }
        return true;
    }

    public final void share(FacebookCallback<Result> facebookCallback) {
        if (canShare()) {
            ShareContent shareContent = getShareContent();
            try {
                ShareContentValidation.validateForApiShare(shareContent);
                if (shareContent instanceof ShareLinkContent) {
                    shareLinkContent((ShareLinkContent) shareContent, facebookCallback);
                    return;
                } else if (shareContent instanceof SharePhotoContent) {
                    sharePhotoContent((SharePhotoContent) shareContent, facebookCallback);
                    return;
                } else if (shareContent instanceof ShareVideoContent) {
                    shareVideoContent((ShareVideoContent) shareContent, facebookCallback);
                    return;
                } else {
                    if (shareContent instanceof ShareOpenGraphContent) {
                        shareOpenGraphContent((ShareOpenGraphContent) shareContent, facebookCallback);
                    }
                    return;
                }
            } catch (Exception e) {
                ShareInternalUtility.invokeCallbackWithException(facebookCallback, e);
                return;
            }
        }
        ShareInternalUtility.invokeCallbackWithError(facebookCallback, "Insufficient permissions for sharing content via Api.");
    }

    private java.lang.String getGraphPath(java.lang.String r7) {
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
        r6 = this;
        r0 = java.util.Locale.ROOT;	 Catch:{ UnsupportedEncodingException -> 0x001c }
        r1 = "%s/%s";	 Catch:{ UnsupportedEncodingException -> 0x001c }
        r2 = 2;	 Catch:{ UnsupportedEncodingException -> 0x001c }
        r2 = new java.lang.Object[r2];	 Catch:{ UnsupportedEncodingException -> 0x001c }
        r3 = 0;	 Catch:{ UnsupportedEncodingException -> 0x001c }
        r4 = r6.getGraphNode();	 Catch:{ UnsupportedEncodingException -> 0x001c }
        r5 = "UTF-8";	 Catch:{ UnsupportedEncodingException -> 0x001c }
        r4 = java.net.URLEncoder.encode(r4, r5);	 Catch:{ UnsupportedEncodingException -> 0x001c }
        r2[r3] = r4;	 Catch:{ UnsupportedEncodingException -> 0x001c }
        r3 = 1;	 Catch:{ UnsupportedEncodingException -> 0x001c }
        r2[r3] = r7;	 Catch:{ UnsupportedEncodingException -> 0x001c }
        r7 = java.lang.String.format(r0, r1, r2);	 Catch:{ UnsupportedEncodingException -> 0x001c }
        return r7;
    L_0x001c:
        r7 = 0;
        return r7;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.share.ShareApi.getGraphPath(java.lang.String):java.lang.String");
    }

    private void addCommonParameters(Bundle bundle, ShareContent shareContent) {
        Collection peopleIds = shareContent.getPeopleIds();
        if (!Utility.isNullOrEmpty(peopleIds)) {
            bundle.putString("tags", TextUtils.join(", ", peopleIds));
        }
        if (!Utility.isNullOrEmpty(shareContent.getPlaceId())) {
            bundle.putString("place", shareContent.getPlaceId());
        }
        if (!Utility.isNullOrEmpty(shareContent.getRef())) {
            bundle.putString("ref", shareContent.getRef());
        }
    }

    private void shareOpenGraphContent(ShareOpenGraphContent shareOpenGraphContent, final FacebookCallback<Result> facebookCallback) {
        final Callback c10351 = new Callback() {
            public void onCompleted(GraphResponse graphResponse) {
                String str;
                JSONObject jSONObject = graphResponse.getJSONObject();
                if (jSONObject == null) {
                    str = null;
                } else {
                    str = jSONObject.optString("id");
                }
                ShareInternalUtility.invokeCallbackWithResults(facebookCallback, str, graphResponse);
            }
        };
        final ShareOpenGraphAction action = shareOpenGraphContent.getAction();
        Bundle bundle = action.getBundle();
        addCommonParameters(bundle, shareOpenGraphContent);
        if (Utility.isNullOrEmpty(getMessage()) == null) {
            bundle.putString(ShareConstants.WEB_DIALOG_PARAM_MESSAGE, getMessage());
        }
        final Bundle bundle2 = bundle;
        final FacebookCallback<Result> facebookCallback2 = facebookCallback;
        stageOpenGraphAction(bundle, new OnMapperCompleteListener() {
            public void onComplete() {
                try {
                    ShareApi.handleImagesOnAction(bundle2);
                    new GraphRequest(AccessToken.getCurrentAccessToken(), ShareApi.this.getGraphPath(URLEncoder.encode(action.getActionType(), ShareApi.DEFAULT_CHARSET)), bundle2, HttpMethod.POST, c10351).executeAsync();
                } catch (Exception e) {
                    ShareInternalUtility.invokeCallbackWithException(facebookCallback2, e);
                }
            }

            public void onError(FacebookException facebookException) {
                ShareInternalUtility.invokeCallbackWithException(facebookCallback2, facebookException);
            }
        });
    }

    private static void handleImagesOnAction(android.os.Bundle r9) {
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
        r0 = "image";
        r0 = r9.getString(r0);
        if (r0 == 0) goto L_0x004e;
    L_0x0008:
        r1 = 0;
        r2 = new org.json.JSONArray;	 Catch:{ JSONException -> 0x0040 }
        r2.<init>(r0);	 Catch:{ JSONException -> 0x0040 }
        r3 = r1;	 Catch:{ JSONException -> 0x0040 }
    L_0x000f:
        r4 = r2.length();	 Catch:{ JSONException -> 0x0040 }
        if (r3 >= r4) goto L_0x003a;	 Catch:{ JSONException -> 0x0040 }
    L_0x0015:
        r4 = r2.optJSONObject(r3);	 Catch:{ JSONException -> 0x0040 }
        if (r4 == 0) goto L_0x001f;	 Catch:{ JSONException -> 0x0040 }
    L_0x001b:
        putImageInBundleWithArrayFormat(r9, r3, r4);	 Catch:{ JSONException -> 0x0040 }
        goto L_0x0037;	 Catch:{ JSONException -> 0x0040 }
    L_0x001f:
        r4 = r2.getString(r3);	 Catch:{ JSONException -> 0x0040 }
        r5 = java.util.Locale.ROOT;	 Catch:{ JSONException -> 0x0040 }
        r6 = "image[%d][url]";	 Catch:{ JSONException -> 0x0040 }
        r7 = 1;	 Catch:{ JSONException -> 0x0040 }
        r7 = new java.lang.Object[r7];	 Catch:{ JSONException -> 0x0040 }
        r8 = java.lang.Integer.valueOf(r3);	 Catch:{ JSONException -> 0x0040 }
        r7[r1] = r8;	 Catch:{ JSONException -> 0x0040 }
        r5 = java.lang.String.format(r5, r6, r7);	 Catch:{ JSONException -> 0x0040 }
        r9.putString(r5, r4);	 Catch:{ JSONException -> 0x0040 }
    L_0x0037:
        r3 = r3 + 1;	 Catch:{ JSONException -> 0x0040 }
        goto L_0x000f;	 Catch:{ JSONException -> 0x0040 }
    L_0x003a:
        r2 = "image";	 Catch:{ JSONException -> 0x0040 }
        r9.remove(r2);	 Catch:{ JSONException -> 0x0040 }
        return;
    L_0x0040:
        r2 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x004e }
        r2.<init>(r0);	 Catch:{ JSONException -> 0x004e }
        putImageInBundleWithArrayFormat(r9, r1, r2);	 Catch:{ JSONException -> 0x004e }
        r0 = "image";	 Catch:{ JSONException -> 0x004e }
        r9.remove(r0);	 Catch:{ JSONException -> 0x004e }
        return;
    L_0x004e:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.share.ShareApi.handleImagesOnAction(android.os.Bundle):void");
    }

    private static void putImageInBundleWithArrayFormat(Bundle bundle, int i, JSONObject jSONObject) throws JSONException {
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            Object[] objArr = new Object[]{Integer.valueOf(i), (String) keys.next()};
            bundle.putString(String.format(Locale.ROOT, "image[%d][%s]", objArr), jSONObject.get((String) keys.next()).toString());
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void sharePhotoContent(com.facebook.share.model.SharePhotoContent r19, com.facebook.FacebookCallback<com.facebook.share.Sharer.Result> r20) {
        /*
        r18 = this;
        r7 = r18;
        r8 = r20;
        r9 = new com.facebook.internal.Mutable;
        r1 = 0;
        r1 = java.lang.Integer.valueOf(r1);
        r9.<init>(r1);
        r16 = com.facebook.AccessToken.getCurrentAccessToken();
        r15 = new java.util.ArrayList;
        r15.<init>();
        r3 = new java.util.ArrayList;
        r3.<init>();
        r4 = new java.util.ArrayList;
        r4.<init>();
        r17 = new com.facebook.share.ShareApi$3;
        r1 = r17;
        r2 = r7;
        r5 = r9;
        r6 = r8;
        r1.<init>(r3, r4, r5, r6);
        r1 = r19.getPhotos();	 Catch:{ FileNotFoundException -> 0x00b2 }
        r1 = r1.iterator();	 Catch:{ FileNotFoundException -> 0x00b2 }
    L_0x0033:
        r2 = r1.hasNext();	 Catch:{ FileNotFoundException -> 0x00b2 }
        if (r2 == 0) goto L_0x0089;
    L_0x0039:
        r2 = r1.next();	 Catch:{ FileNotFoundException -> 0x00b2 }
        r2 = (com.facebook.share.model.SharePhoto) r2;	 Catch:{ FileNotFoundException -> 0x00b2 }
        r3 = r19;
        r14 = r7.getSharePhotoCommonParameters(r2, r3);	 Catch:{ JSONException -> 0x0084 }
        r12 = r2.getBitmap();	 Catch:{ FileNotFoundException -> 0x00b2 }
        r4 = r2.getImageUrl();	 Catch:{ FileNotFoundException -> 0x00b2 }
        r2 = r2.getCaption();	 Catch:{ FileNotFoundException -> 0x00b2 }
        if (r2 != 0) goto L_0x0057;
    L_0x0053:
        r2 = r18.getMessage();	 Catch:{ FileNotFoundException -> 0x00b2 }
    L_0x0057:
        r13 = r2;
        if (r12 == 0) goto L_0x006d;
    L_0x005a:
        r2 = "photos";
        r11 = r7.getGraphPath(r2);	 Catch:{ FileNotFoundException -> 0x00b2 }
        r10 = r16;
        r2 = r15;
        r15 = r17;
        r4 = com.facebook.GraphRequest.newUploadPhotoRequest(r10, r11, r12, r13, r14, r15);	 Catch:{ FileNotFoundException -> 0x00b2 }
        r2.add(r4);	 Catch:{ FileNotFoundException -> 0x00b2 }
        goto L_0x0082;
    L_0x006d:
        r2 = r15;
        if (r4 == 0) goto L_0x0082;
    L_0x0070:
        r5 = "photos";
        r11 = r7.getGraphPath(r5);	 Catch:{ FileNotFoundException -> 0x00b2 }
        r10 = r16;
        r12 = r4;
        r15 = r17;
        r4 = com.facebook.GraphRequest.newUploadPhotoRequest(r10, r11, r12, r13, r14, r15);	 Catch:{ FileNotFoundException -> 0x00b2 }
        r2.add(r4);	 Catch:{ FileNotFoundException -> 0x00b2 }
    L_0x0082:
        r15 = r2;
        goto L_0x0033;
    L_0x0084:
        r0 = move-exception;
        com.facebook.share.internal.ShareInternalUtility.invokeCallbackWithException(r8, r0);	 Catch:{ FileNotFoundException -> 0x00b2 }
        return;
    L_0x0089:
        r2 = r15;
        r1 = r9.value;	 Catch:{ FileNotFoundException -> 0x00b2 }
        r1 = (java.lang.Integer) r1;	 Catch:{ FileNotFoundException -> 0x00b2 }
        r1 = r1.intValue();	 Catch:{ FileNotFoundException -> 0x00b2 }
        r3 = r2.size();	 Catch:{ FileNotFoundException -> 0x00b2 }
        r1 = r1 + r3;
        r1 = java.lang.Integer.valueOf(r1);	 Catch:{ FileNotFoundException -> 0x00b2 }
        r9.value = r1;	 Catch:{ FileNotFoundException -> 0x00b2 }
        r1 = r2.iterator();	 Catch:{ FileNotFoundException -> 0x00b2 }
    L_0x00a1:
        r2 = r1.hasNext();	 Catch:{ FileNotFoundException -> 0x00b2 }
        if (r2 == 0) goto L_0x00b1;
    L_0x00a7:
        r2 = r1.next();	 Catch:{ FileNotFoundException -> 0x00b2 }
        r2 = (com.facebook.GraphRequest) r2;	 Catch:{ FileNotFoundException -> 0x00b2 }
        r2.executeAsync();	 Catch:{ FileNotFoundException -> 0x00b2 }
        goto L_0x00a1;
    L_0x00b1:
        return;
    L_0x00b2:
        r0 = move-exception;
        r1 = r0;
        com.facebook.share.internal.ShareInternalUtility.invokeCallbackWithException(r8, r1);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.share.ShareApi.sharePhotoContent(com.facebook.share.model.SharePhotoContent, com.facebook.FacebookCallback):void");
    }

    private void shareLinkContent(ShareLinkContent shareLinkContent, final FacebookCallback<Result> facebookCallback) {
        Callback c10374 = new Callback() {
            public void onCompleted(GraphResponse graphResponse) {
                String str;
                JSONObject jSONObject = graphResponse.getJSONObject();
                if (jSONObject == null) {
                    str = null;
                } else {
                    str = jSONObject.optString("id");
                }
                ShareInternalUtility.invokeCallbackWithResults(facebookCallback, str, graphResponse);
            }
        };
        Bundle bundle = new Bundle();
        addCommonParameters(bundle, shareLinkContent);
        bundle.putString(ShareConstants.WEB_DIALOG_PARAM_MESSAGE, getMessage());
        bundle.putString("link", Utility.getUriString(shareLinkContent.getContentUrl()));
        bundle.putString("picture", Utility.getUriString(shareLinkContent.getImageUrl()));
        bundle.putString("name", shareLinkContent.getContentTitle());
        bundle.putString("description", shareLinkContent.getContentDescription());
        bundle.putString("ref", shareLinkContent.getRef());
        new GraphRequest(AccessToken.getCurrentAccessToken(), getGraphPath("feed"), bundle, HttpMethod.POST, c10374).executeAsync();
    }

    private void shareVideoContent(ShareVideoContent shareVideoContent, FacebookCallback<Result> facebookCallback) {
        try {
            VideoUploader.uploadAsync(shareVideoContent, getGraphNode(), facebookCallback);
        } catch (ShareVideoContent shareVideoContent2) {
            ShareInternalUtility.invokeCallbackWithException(facebookCallback, shareVideoContent2);
        }
    }

    private Bundle getSharePhotoCommonParameters(SharePhoto sharePhoto, SharePhotoContent sharePhotoContent) throws JSONException {
        sharePhoto = sharePhoto.getParameters();
        if (!(sharePhoto.containsKey("place") || Utility.isNullOrEmpty(sharePhotoContent.getPlaceId()))) {
            sharePhoto.putString("place", sharePhotoContent.getPlaceId());
        }
        if (!(sharePhoto.containsKey("tags") || Utility.isNullOrEmpty(sharePhotoContent.getPeopleIds()))) {
            Collection<String> peopleIds = sharePhotoContent.getPeopleIds();
            if (!Utility.isNullOrEmpty((Collection) peopleIds)) {
                JSONArray jSONArray = new JSONArray();
                for (String str : peopleIds) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("tag_uid", str);
                    jSONArray.put(jSONObject);
                }
                sharePhoto.putString("tags", jSONArray.toString());
            }
        }
        if (!(sharePhoto.containsKey("ref") || Utility.isNullOrEmpty(sharePhotoContent.getRef()))) {
            sharePhoto.putString("ref", sharePhotoContent.getRef());
        }
        return sharePhoto;
    }

    private void stageArrayList(final ArrayList arrayList, final OnMapValueCompleteListener onMapValueCompleteListener) {
        final JSONArray jSONArray = new JSONArray();
        stageCollectionValues(new CollectionMapper.Collection<Integer>() {
            public Iterator<Integer> keyIterator() {
                final int size = arrayList.size();
                final Mutable mutable = new Mutable(Integer.valueOf(0));
                return new Iterator<Integer>() {
                    public void remove() {
                    }

                    public boolean hasNext() {
                        return ((Integer) mutable.value).intValue() < size;
                    }

                    public Integer next() {
                        Integer num = (Integer) mutable.value;
                        Mutable mutable = mutable;
                        mutable.value = Integer.valueOf(((Integer) mutable.value).intValue() + 1);
                        return num;
                    }
                };
            }

            public Object get(Integer num) {
                return arrayList.get(num.intValue());
            }

            public void set(Integer num, Object obj, OnErrorListener onErrorListener) {
                try {
                    jSONArray.put(num.intValue(), obj);
                } catch (Integer num2) {
                    String localizedMessage = num2.getLocalizedMessage();
                    if (localizedMessage == null) {
                        localizedMessage = "Error staging object.";
                    }
                    onErrorListener.onError(new FacebookException(localizedMessage));
                }
            }
        }, new OnMapperCompleteListener() {
            public void onComplete() {
                onMapValueCompleteListener.onComplete(jSONArray);
            }

            public void onError(FacebookException facebookException) {
                onMapValueCompleteListener.onError(facebookException);
            }
        });
    }

    private <T> void stageCollectionValues(CollectionMapper.Collection<T> collection, OnMapperCompleteListener onMapperCompleteListener) {
        CollectionMapper.iterate(collection, new C10397(), onMapperCompleteListener);
    }

    private void stageOpenGraphAction(final Bundle bundle, OnMapperCompleteListener onMapperCompleteListener) {
        stageCollectionValues(new CollectionMapper.Collection<String>() {
            public Iterator<String> keyIterator() {
                return bundle.keySet().iterator();
            }

            public Object get(String str) {
                return bundle.get(str);
            }

            public void set(String str, Object obj, OnErrorListener onErrorListener) {
                if (Utility.putJSONValueInBundle(bundle, str, obj) == null) {
                    StringBuilder stringBuilder = new StringBuilder("Unexpected value: ");
                    stringBuilder.append(obj.toString());
                    onErrorListener.onError(new FacebookException(stringBuilder.toString()));
                }
            }
        }, onMapperCompleteListener);
    }

    private void stageOpenGraphObject(final ShareOpenGraphObject shareOpenGraphObject, final OnMapValueCompleteListener onMapValueCompleteListener) {
        String string = shareOpenGraphObject.getString("type");
        if (string == null) {
            string = shareOpenGraphObject.getString("og:type");
        }
        final String str = string;
        if (str == null) {
            onMapValueCompleteListener.onError(new FacebookException("Open Graph objects must contain a type value."));
            return;
        }
        final JSONObject jSONObject = new JSONObject();
        CollectionMapper.Collection c10419 = new CollectionMapper.Collection<String>() {
            public Iterator<String> keyIterator() {
                return shareOpenGraphObject.keySet().iterator();
            }

            public Object get(String str) {
                return shareOpenGraphObject.get(str);
            }

            public void set(String str, Object obj, OnErrorListener onErrorListener) {
                try {
                    jSONObject.put(str, obj);
                } catch (String str2) {
                    str2 = str2.getLocalizedMessage();
                    if (str2 == null) {
                        str2 = "Error staging object.";
                    }
                    onErrorListener.onError(new FacebookException(str2));
                }
            }
        };
        final Callback anonymousClass10 = new Callback() {
            public void onCompleted(GraphResponse graphResponse) {
                FacebookRequestError error = graphResponse.getError();
                String errorMessage;
                if (error != null) {
                    errorMessage = error.getErrorMessage();
                    if (errorMessage == null) {
                        errorMessage = "Error staging Open Graph object.";
                    }
                    onMapValueCompleteListener.onError(new FacebookGraphResponseException(graphResponse, errorMessage));
                    return;
                }
                JSONObject jSONObject = graphResponse.getJSONObject();
                if (jSONObject == null) {
                    onMapValueCompleteListener.onError(new FacebookGraphResponseException(graphResponse, "Error staging Open Graph object."));
                    return;
                }
                errorMessage = jSONObject.optString("id");
                if (errorMessage == null) {
                    onMapValueCompleteListener.onError(new FacebookGraphResponseException(graphResponse, "Error staging Open Graph object."));
                } else {
                    onMapValueCompleteListener.onComplete(errorMessage);
                }
            }
        };
        final OnMapValueCompleteListener onMapValueCompleteListener2 = onMapValueCompleteListener;
        stageCollectionValues(c10419, new OnMapperCompleteListener() {
            public void onComplete() {
                String jSONObject = jSONObject.toString();
                Bundle bundle = new Bundle();
                bundle.putString("object", jSONObject);
                try {
                    AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
                    ShareApi shareApi = ShareApi.this;
                    StringBuilder stringBuilder = new StringBuilder("objects/");
                    stringBuilder.append(URLEncoder.encode(str, ShareApi.DEFAULT_CHARSET));
                    new GraphRequest(currentAccessToken, shareApi.getGraphPath(stringBuilder.toString()), bundle, HttpMethod.POST, anonymousClass10).executeAsync();
                } catch (UnsupportedEncodingException e) {
                    jSONObject = e.getLocalizedMessage();
                    if (jSONObject == null) {
                        jSONObject = "Error staging Open Graph object.";
                    }
                    onMapValueCompleteListener2.onError(new FacebookException(jSONObject));
                }
            }

            public void onError(FacebookException facebookException) {
                onMapValueCompleteListener2.onError(facebookException);
            }
        });
    }

    private void stagePhoto(final SharePhoto sharePhoto, final OnMapValueCompleteListener onMapValueCompleteListener) {
        Bitmap bitmap = sharePhoto.getBitmap();
        Uri imageUrl = sharePhoto.getImageUrl();
        if (bitmap == null) {
            if (imageUrl == null) {
                onMapValueCompleteListener.onError(new FacebookException("Photos must have an imageURL or bitmap."));
                return;
            }
        }
        Callback anonymousClass12 = new Callback() {
            public void onCompleted(GraphResponse graphResponse) {
                FacebookRequestError error = graphResponse.getError();
                if (error != null) {
                    String errorMessage = error.getErrorMessage();
                    if (errorMessage == null) {
                        errorMessage = "Error staging photo.";
                    }
                    onMapValueCompleteListener.onError(new FacebookGraphResponseException(graphResponse, errorMessage));
                    return;
                }
                graphResponse = graphResponse.getJSONObject();
                if (graphResponse == null) {
                    onMapValueCompleteListener.onError(new FacebookException("Error staging photo."));
                    return;
                }
                graphResponse = graphResponse.optString(ShareConstants.MEDIA_URI);
                if (graphResponse == null) {
                    onMapValueCompleteListener.onError(new FacebookException("Error staging photo."));
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("url", graphResponse);
                    jSONObject.put(NativeProtocol.IMAGE_USER_GENERATED_KEY, sharePhoto.getUserGenerated());
                    onMapValueCompleteListener.onComplete(jSONObject);
                } catch (GraphResponse graphResponse2) {
                    String localizedMessage = graphResponse2.getLocalizedMessage();
                    if (localizedMessage == null) {
                        localizedMessage = "Error staging photo.";
                    }
                    onMapValueCompleteListener.onError(new FacebookException(localizedMessage));
                }
            }
        };
        if (bitmap != null) {
            ShareInternalUtility.newUploadStagingResourceWithImageRequest(AccessToken.getCurrentAccessToken(), bitmap, anonymousClass12).executeAsync();
            return;
        }
        try {
            ShareInternalUtility.newUploadStagingResourceWithImageRequest(AccessToken.getCurrentAccessToken(), imageUrl, anonymousClass12).executeAsync();
        } catch (SharePhoto sharePhoto2) {
            String localizedMessage = sharePhoto2.getLocalizedMessage();
            if (localizedMessage == null) {
                localizedMessage = "Error staging photo.";
            }
            onMapValueCompleteListener.onError(new FacebookException(localizedMessage));
        }
    }
}
