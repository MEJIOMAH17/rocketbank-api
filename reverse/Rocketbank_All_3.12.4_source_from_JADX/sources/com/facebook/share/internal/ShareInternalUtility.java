package com.facebook.share.internal;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.util.Pair;
import com.facebook.AccessToken;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookGraphResponseException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphRequest.ParcelableResourceWithMimeType;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.CallbackManagerImpl.Callback;
import com.facebook.internal.NativeAppCallAttachmentStore;
import com.facebook.internal.NativeAppCallAttachmentStore.Attachment;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Utility.Mapper;
import com.facebook.share.Sharer.Result;
import com.facebook.share.internal.OpenGraphJSONUtility.PhotoJSONProcessor;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;
import com.facebook.share.widget.LikeView.ObjectType;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class ShareInternalUtility {
    public static final String MY_PHOTOS = "me/photos";
    private static final String MY_STAGING_RESOURCES = "me/staging_resources";
    private static final String STAGING_PARAM = "file";

    /* renamed from: com.facebook.share.internal.ShareInternalUtility$5 */
    static class C10605 implements Mapper<Attachment, String> {
        C10605() {
        }

        public final String apply(Attachment attachment) {
            return attachment.getAttachmentUrl();
        }
    }

    /* renamed from: com.facebook.share.internal.ShareInternalUtility$8 */
    static class C10638 implements PhotoJSONProcessor {
        C10638() {
        }

        public final JSONObject toJSONObject(SharePhoto sharePhoto) {
            sharePhoto = sharePhoto.getImageUrl();
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("url", sharePhoto.toString());
                return jSONObject;
            } catch (Throwable e) {
                throw new FacebookException("Unable to attach images", e);
            }
        }
    }

    public static void invokeCallbackWithException(FacebookCallback<Result> facebookCallback, Exception exception) {
        if (exception instanceof FacebookException) {
            invokeOnErrorCallback((FacebookCallback) facebookCallback, (FacebookException) exception);
            return;
        }
        StringBuilder stringBuilder = new StringBuilder("Error preparing share content: ");
        stringBuilder.append(exception.getLocalizedMessage());
        invokeCallbackWithError(facebookCallback, stringBuilder.toString());
    }

    public static void invokeCallbackWithError(FacebookCallback<Result> facebookCallback, String str) {
        invokeOnErrorCallback((FacebookCallback) facebookCallback, str);
    }

    public static void invokeCallbackWithResults(FacebookCallback<Result> facebookCallback, String str, GraphResponse graphResponse) {
        FacebookRequestError error = graphResponse.getError();
        if (error != null) {
            str = error.getErrorMessage();
            if (Utility.isNullOrEmpty(str)) {
                str = "Unexpected error sharing.";
            }
            invokeOnErrorCallback(facebookCallback, graphResponse, str);
            return;
        }
        invokeOnSuccessCallback(facebookCallback, str);
    }

    public static String getNativeDialogCompletionGesture(Bundle bundle) {
        if (bundle.containsKey(NativeProtocol.RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY)) {
            return bundle.getString(NativeProtocol.RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY);
        }
        return bundle.getString(NativeProtocol.EXTRA_DIALOG_COMPLETION_GESTURE_KEY);
    }

    public static String getShareDialogPostId(Bundle bundle) {
        if (bundle.containsKey(ShareConstants.RESULT_POST_ID)) {
            return bundle.getString(ShareConstants.RESULT_POST_ID);
        }
        if (bundle.containsKey(ShareConstants.EXTRA_RESULT_POST_ID)) {
            return bundle.getString(ShareConstants.EXTRA_RESULT_POST_ID);
        }
        return bundle.getString(ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID);
    }

    public static boolean handleActivityResult(int i, int i2, Intent intent, ResultProcessor resultProcessor) {
        i = getAppCallFromActivityResult(i, i2, intent);
        if (i == 0) {
            return false;
        }
        NativeAppCallAttachmentStore.cleanupAttachmentsForCall(i.getCallId());
        if (resultProcessor == null) {
            return true;
        }
        FacebookException exceptionFromErrorData = NativeProtocol.getExceptionFromErrorData(NativeProtocol.getErrorDataFromResultIntent(intent));
        if (exceptionFromErrorData == null) {
            resultProcessor.onSuccess(i, NativeProtocol.getSuccessResultsFromIntent(intent));
        } else if ((exceptionFromErrorData instanceof FacebookOperationCanceledException) != null) {
            resultProcessor.onCancel(i);
        } else {
            resultProcessor.onError(i, exceptionFromErrorData);
        }
        return true;
    }

    public static ResultProcessor getShareResultProcessor(final FacebookCallback<Result> facebookCallback) {
        return new ResultProcessor(facebookCallback) {
            public final void onSuccess(AppCall appCall, Bundle bundle) {
                if (bundle != null) {
                    appCall = ShareInternalUtility.getNativeDialogCompletionGesture(bundle);
                    if (appCall != null) {
                        if (!"post".equalsIgnoreCase(appCall)) {
                            if ("cancel".equalsIgnoreCase(appCall) != null) {
                                ShareInternalUtility.invokeOnCancelCallback(facebookCallback);
                                return;
                            }
                            ShareInternalUtility.invokeOnErrorCallback(facebookCallback, new FacebookException(NativeProtocol.ERROR_UNKNOWN_ERROR));
                        }
                    }
                    ShareInternalUtility.invokeOnSuccessCallback(facebookCallback, ShareInternalUtility.getShareDialogPostId(bundle));
                }
            }

            public final void onCancel(AppCall appCall) {
                ShareInternalUtility.invokeOnCancelCallback(facebookCallback);
            }

            public final void onError(AppCall appCall, FacebookException facebookException) {
                ShareInternalUtility.invokeOnErrorCallback(facebookCallback, facebookException);
            }
        };
    }

    private static AppCall getAppCallFromActivityResult(int i, int i2, Intent intent) {
        i2 = NativeProtocol.getCallIdFromIntent(intent);
        if (i2 == 0) {
            return 0;
        }
        return AppCall.finishPendingCall(i2, i);
    }

    public static void registerStaticShareCallback(final int i) {
        CallbackManagerImpl.registerStaticCallback(i, new Callback() {
            public final boolean onActivityResult(int i, Intent intent) {
                return ShareInternalUtility.handleActivityResult(i, i, intent, ShareInternalUtility.getShareResultProcessor(null));
            }
        });
    }

    public static void registerSharerCallback(final int i, CallbackManager callbackManager, final FacebookCallback<Result> facebookCallback) {
        if (callbackManager instanceof CallbackManagerImpl) {
            ((CallbackManagerImpl) callbackManager).registerCallback(i, new Callback() {
                public final boolean onActivityResult(int i, Intent intent) {
                    return ShareInternalUtility.handleActivityResult(i, i, intent, ShareInternalUtility.getShareResultProcessor(facebookCallback));
                }
            });
            return;
        }
        throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
    }

    public static List<String> getPhotoUrls(SharePhotoContent sharePhotoContent, final UUID uuid) {
        if (sharePhotoContent != null) {
            sharePhotoContent = sharePhotoContent.getPhotos();
            if (sharePhotoContent != null) {
                sharePhotoContent = Utility.map(sharePhotoContent, new Mapper<SharePhoto, Attachment>() {
                    public final Attachment apply(SharePhoto sharePhoto) {
                        return ShareInternalUtility.getAttachment(uuid, sharePhoto);
                    }
                });
                uuid = Utility.map(sharePhotoContent, new C10605());
                NativeAppCallAttachmentStore.addAttachments(sharePhotoContent);
                return uuid;
            }
        }
        return null;
    }

    public static String getVideoUrl(ShareVideoContent shareVideoContent, UUID uuid) {
        if (shareVideoContent != null) {
            if (shareVideoContent.getVideo() != null) {
                shareVideoContent = NativeAppCallAttachmentStore.createAttachment(uuid, shareVideoContent.getVideo().getLocalUrl());
                uuid = new ArrayList(1);
                uuid.add(shareVideoContent);
                NativeAppCallAttachmentStore.addAttachments(uuid);
                return shareVideoContent.getAttachmentUrl();
            }
        }
        return null;
    }

    public static List<Bundle> getMediaInfos(ShareMediaContent shareMediaContent, final UUID uuid) {
        if (shareMediaContent != null) {
            shareMediaContent = shareMediaContent.getMedia();
            if (shareMediaContent != null) {
                final Collection arrayList = new ArrayList();
                shareMediaContent = Utility.map(shareMediaContent, new Mapper<ShareMedia, Bundle>() {
                    public final Bundle apply(ShareMedia shareMedia) {
                        Attachment access$000 = ShareInternalUtility.getAttachment(uuid, shareMedia);
                        arrayList.add(access$000);
                        Bundle bundle = new Bundle();
                        bundle.putString("type", shareMedia.getMediaType().name());
                        bundle.putString(ShareConstants.MEDIA_URI, access$000.getAttachmentUrl());
                        return bundle;
                    }
                });
                NativeAppCallAttachmentStore.addAttachments(arrayList);
                return shareMediaContent;
            }
        }
        return null;
    }

    public static JSONObject toJSONObjectForCall(final UUID uuid, ShareOpenGraphContent shareOpenGraphContent) throws JSONException {
        ShareOpenGraphAction action = shareOpenGraphContent.getAction();
        final Collection arrayList = new ArrayList();
        uuid = OpenGraphJSONUtility.toJSONObject(action, new PhotoJSONProcessor() {
            public final JSONObject toJSONObject(SharePhoto sharePhoto) {
                Attachment access$000 = ShareInternalUtility.getAttachment(uuid, sharePhoto);
                if (access$000 == null) {
                    return null;
                }
                arrayList.add(access$000);
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("url", access$000.getAttachmentUrl());
                    if (sharePhoto.getUserGenerated() != null) {
                        jSONObject.put(NativeProtocol.IMAGE_USER_GENERATED_KEY, true);
                    }
                    return jSONObject;
                } catch (Throwable e) {
                    throw new FacebookException("Unable to attach images", e);
                }
            }
        });
        NativeAppCallAttachmentStore.addAttachments(arrayList);
        if (shareOpenGraphContent.getPlaceId() != null && Utility.isNullOrEmpty(uuid.optString("place"))) {
            uuid.put("place", shareOpenGraphContent.getPlaceId());
        }
        if (shareOpenGraphContent.getPeopleIds() != null) {
            JSONArray optJSONArray = uuid.optJSONArray("tags");
            Collection hashSet = optJSONArray == null ? new HashSet() : Utility.jsonArrayToSet(optJSONArray);
            for (String add : shareOpenGraphContent.getPeopleIds()) {
                hashSet.add(add);
            }
            uuid.put("tags", new JSONArray(hashSet));
        }
        return uuid;
    }

    public static JSONObject toJSONObjectForWeb(ShareOpenGraphContent shareOpenGraphContent) throws JSONException {
        return OpenGraphJSONUtility.toJSONObject(shareOpenGraphContent.getAction(), new C10638());
    }

    public static JSONArray removeNamespacesFromOGJsonArray(JSONArray jSONArray, boolean z) throws JSONException {
        JSONArray jSONArray2 = new JSONArray();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if (obj instanceof JSONArray) {
                obj = removeNamespacesFromOGJsonArray((JSONArray) obj, z);
            } else if (obj instanceof JSONObject) {
                obj = removeNamespacesFromOGJsonObject((JSONObject) obj, z);
            }
            jSONArray2.put(obj);
        }
        return jSONArray2;
    }

    public static org.json.JSONObject removeNamespacesFromOGJsonObject(org.json.JSONObject r9, boolean r10) {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        if (r9 != 0) goto L_0x0004;
    L_0x0002:
        r9 = 0;
        return r9;
    L_0x0004:
        r0 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x0086 }
        r0.<init>();	 Catch:{ JSONException -> 0x0086 }
        r1 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x0086 }
        r1.<init>();	 Catch:{ JSONException -> 0x0086 }
        r2 = r9.names();	 Catch:{ JSONException -> 0x0086 }
        r3 = 0;	 Catch:{ JSONException -> 0x0086 }
    L_0x0013:
        r4 = r2.length();	 Catch:{ JSONException -> 0x0086 }
        if (r3 >= r4) goto L_0x007a;	 Catch:{ JSONException -> 0x0086 }
    L_0x0019:
        r4 = r2.getString(r3);	 Catch:{ JSONException -> 0x0086 }
        r5 = r9.get(r4);	 Catch:{ JSONException -> 0x0086 }
        r6 = r5 instanceof org.json.JSONObject;	 Catch:{ JSONException -> 0x0086 }
        r7 = 1;	 Catch:{ JSONException -> 0x0086 }
        if (r6 == 0) goto L_0x002d;	 Catch:{ JSONException -> 0x0086 }
    L_0x0026:
        r5 = (org.json.JSONObject) r5;	 Catch:{ JSONException -> 0x0086 }
        r5 = removeNamespacesFromOGJsonObject(r5, r7);	 Catch:{ JSONException -> 0x0086 }
        goto L_0x0037;	 Catch:{ JSONException -> 0x0086 }
    L_0x002d:
        r6 = r5 instanceof org.json.JSONArray;	 Catch:{ JSONException -> 0x0086 }
        if (r6 == 0) goto L_0x0037;	 Catch:{ JSONException -> 0x0086 }
    L_0x0031:
        r5 = (org.json.JSONArray) r5;	 Catch:{ JSONException -> 0x0086 }
        r5 = removeNamespacesFromOGJsonArray(r5, r7);	 Catch:{ JSONException -> 0x0086 }
    L_0x0037:
        r6 = getFieldNameAndNamespaceFromFullName(r4);	 Catch:{ JSONException -> 0x0086 }
        r7 = r6.first;	 Catch:{ JSONException -> 0x0086 }
        r7 = (java.lang.String) r7;	 Catch:{ JSONException -> 0x0086 }
        r6 = r6.second;	 Catch:{ JSONException -> 0x0086 }
        r6 = (java.lang.String) r6;	 Catch:{ JSONException -> 0x0086 }
        if (r10 == 0) goto L_0x0066;	 Catch:{ JSONException -> 0x0086 }
    L_0x0045:
        if (r7 == 0) goto L_0x0053;	 Catch:{ JSONException -> 0x0086 }
    L_0x0047:
        r8 = "fbsdk";	 Catch:{ JSONException -> 0x0086 }
        r8 = r7.equals(r8);	 Catch:{ JSONException -> 0x0086 }
        if (r8 == 0) goto L_0x0053;	 Catch:{ JSONException -> 0x0086 }
    L_0x004f:
        r0.put(r4, r5);	 Catch:{ JSONException -> 0x0086 }
        goto L_0x0077;	 Catch:{ JSONException -> 0x0086 }
    L_0x0053:
        if (r7 == 0) goto L_0x0062;	 Catch:{ JSONException -> 0x0086 }
    L_0x0055:
        r4 = "og";	 Catch:{ JSONException -> 0x0086 }
        r4 = r7.equals(r4);	 Catch:{ JSONException -> 0x0086 }
        if (r4 == 0) goto L_0x005e;	 Catch:{ JSONException -> 0x0086 }
    L_0x005d:
        goto L_0x0062;	 Catch:{ JSONException -> 0x0086 }
    L_0x005e:
        r1.put(r6, r5);	 Catch:{ JSONException -> 0x0086 }
        goto L_0x0077;	 Catch:{ JSONException -> 0x0086 }
    L_0x0062:
        r0.put(r6, r5);	 Catch:{ JSONException -> 0x0086 }
        goto L_0x0077;	 Catch:{ JSONException -> 0x0086 }
    L_0x0066:
        if (r7 == 0) goto L_0x0074;	 Catch:{ JSONException -> 0x0086 }
    L_0x0068:
        r8 = "fb";	 Catch:{ JSONException -> 0x0086 }
        r7 = r7.equals(r8);	 Catch:{ JSONException -> 0x0086 }
        if (r7 == 0) goto L_0x0074;	 Catch:{ JSONException -> 0x0086 }
    L_0x0070:
        r0.put(r4, r5);	 Catch:{ JSONException -> 0x0086 }
        goto L_0x0077;	 Catch:{ JSONException -> 0x0086 }
    L_0x0074:
        r0.put(r6, r5);	 Catch:{ JSONException -> 0x0086 }
    L_0x0077:
        r3 = r3 + 1;	 Catch:{ JSONException -> 0x0086 }
        goto L_0x0013;	 Catch:{ JSONException -> 0x0086 }
    L_0x007a:
        r9 = r1.length();	 Catch:{ JSONException -> 0x0086 }
        if (r9 <= 0) goto L_0x0085;	 Catch:{ JSONException -> 0x0086 }
    L_0x0080:
        r9 = "data";	 Catch:{ JSONException -> 0x0086 }
        r0.put(r9, r1);	 Catch:{ JSONException -> 0x0086 }
    L_0x0085:
        return r0;
    L_0x0086:
        r9 = new com.facebook.FacebookException;
        r10 = "Failed to create json object from share content";
        r9.<init>(r10);
        throw r9;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.share.internal.ShareInternalUtility.removeNamespacesFromOGJsonObject(org.json.JSONObject, boolean):org.json.JSONObject");
    }

    public static Pair<String, String> getFieldNameAndNamespaceFromFullName(String str) {
        Object substring;
        int indexOf = str.indexOf(58);
        if (indexOf != -1) {
            int i = indexOf + 1;
            if (str.length() > i) {
                substring = str.substring(0, indexOf);
                str = str.substring(i);
                return new Pair(substring, str);
            }
        }
        substring = null;
        return new Pair(substring, str);
    }

    private static Attachment getAttachment(UUID uuid, ShareMedia shareMedia) {
        Bitmap bitmap;
        Uri imageUrl;
        if (shareMedia instanceof SharePhoto) {
            SharePhoto sharePhoto = (SharePhoto) shareMedia;
            bitmap = sharePhoto.getBitmap();
            imageUrl = sharePhoto.getImageUrl();
        } else if (shareMedia instanceof ShareVideo) {
            imageUrl = ((ShareVideo) shareMedia).getLocalUrl();
            bitmap = null;
        } else {
            imageUrl = null;
            bitmap = imageUrl;
        }
        if (bitmap != null) {
            return NativeAppCallAttachmentStore.createAttachment(uuid, bitmap);
        }
        if (imageUrl != null) {
            return NativeAppCallAttachmentStore.createAttachment(uuid, imageUrl);
        }
        return null;
    }

    static void invokeOnCancelCallback(FacebookCallback<Result> facebookCallback) {
        logShareResult(AnalyticsEvents.PARAMETER_SHARE_OUTCOME_CANCELLED, null);
        if (facebookCallback != null) {
            facebookCallback.onCancel();
        }
    }

    static void invokeOnSuccessCallback(FacebookCallback<Result> facebookCallback, String str) {
        logShareResult(AnalyticsEvents.PARAMETER_SHARE_OUTCOME_SUCCEEDED, null);
        if (facebookCallback != null) {
            facebookCallback.onSuccess(new Result(str));
        }
    }

    static void invokeOnErrorCallback(FacebookCallback<Result> facebookCallback, GraphResponse graphResponse, String str) {
        logShareResult("error", str);
        if (facebookCallback != null) {
            facebookCallback.onError(new FacebookGraphResponseException(graphResponse, str));
        }
    }

    static void invokeOnErrorCallback(FacebookCallback<Result> facebookCallback, String str) {
        logShareResult("error", str);
        if (facebookCallback != null) {
            facebookCallback.onError(new FacebookException(str));
        }
    }

    static void invokeOnErrorCallback(FacebookCallback<Result> facebookCallback, FacebookException facebookException) {
        logShareResult("error", facebookException.getMessage());
        if (facebookCallback != null) {
            facebookCallback.onError(facebookException);
        }
    }

    private static void logShareResult(String str, String str2) {
        AppEventsLogger newLogger = AppEventsLogger.newLogger(FacebookSdk.getApplicationContext());
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsEvents.PARAMETER_SHARE_OUTCOME, str);
        if (str2 != null) {
            bundle.putString(AnalyticsEvents.PARAMETER_SHARE_ERROR_MESSAGE, str2);
        }
        newLogger.logSdkEvent(AnalyticsEvents.EVENT_SHARE_RESULT, null, bundle);
    }

    public static GraphRequest newUploadStagingResourceWithImageRequest(AccessToken accessToken, Bitmap bitmap, GraphRequest.Callback callback) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable(STAGING_PARAM, bitmap);
        return new GraphRequest(accessToken, MY_STAGING_RESOURCES, bundle, HttpMethod.POST, callback);
    }

    public static GraphRequest newUploadStagingResourceWithImageRequest(AccessToken accessToken, File file, GraphRequest.Callback callback) throws FileNotFoundException {
        Parcelable parcelableResourceWithMimeType = new ParcelableResourceWithMimeType(ParcelFileDescriptor.open(file, 268435456), "image/png");
        Bundle bundle = new Bundle(1);
        bundle.putParcelable(STAGING_PARAM, parcelableResourceWithMimeType);
        return new GraphRequest(accessToken, MY_STAGING_RESOURCES, bundle, HttpMethod.POST, callback);
    }

    public static GraphRequest newUploadStagingResourceWithImageRequest(AccessToken accessToken, Uri uri, GraphRequest.Callback callback) throws FileNotFoundException {
        if (Utility.isFileUri(uri)) {
            return newUploadStagingResourceWithImageRequest(accessToken, new File(uri.getPath()), callback);
        }
        if (Utility.isContentUri(uri)) {
            Parcelable parcelableResourceWithMimeType = new ParcelableResourceWithMimeType((Parcelable) uri, "image/png");
            Bundle bundle = new Bundle(1);
            bundle.putParcelable(STAGING_PARAM, parcelableResourceWithMimeType);
            return new GraphRequest(accessToken, MY_STAGING_RESOURCES, bundle, HttpMethod.POST, callback);
        }
        throw new FacebookException("The image Uri must be either a file:// or content:// Uri");
    }

    public static ObjectType getMostSpecificObjectType(ObjectType objectType, ObjectType objectType2) {
        if (objectType == objectType2) {
            return objectType;
        }
        if (objectType == ObjectType.UNKNOWN) {
            return objectType2;
        }
        return objectType2 == ObjectType.UNKNOWN ? objectType : null;
    }
}
