package com.facebook.login;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.facebook.AccessToken;
import com.facebook.CallbackManager;
import com.facebook.FacebookActivity;
import com.facebook.FacebookAuthorizationException;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.GraphResponse;
import com.facebook.Profile;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.CallbackManagerImpl.Callback;
import com.facebook.internal.CallbackManagerImpl.RequestCodeOffset;
import com.facebook.internal.FragmentWrapper;
import com.facebook.internal.Validate;
import com.facebook.login.LoginClient.Request;
import com.facebook.login.LoginClient.Result;
import com.facebook.share.internal.ShareConstants;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

public class LoginManager {
    private static final String MANAGE_PERMISSION_PREFIX = "manage";
    private static final Set<String> OTHER_PUBLISH_PERMISSIONS = getOtherPublishPermissions();
    private static final String PUBLISH_PERMISSION_PREFIX = "publish";
    private static volatile LoginManager instance;
    private DefaultAudience defaultAudience = DefaultAudience.FRIENDS;
    private LoginBehavior loginBehavior = LoginBehavior.NATIVE_WITH_FALLBACK;

    /* renamed from: com.facebook.login.LoginManager$2 */
    static class C04232 extends HashSet<String> {
        C04232() {
            add("ads_management");
            add("create_event");
            add("rsvp_event");
        }
    }

    private static class LoginLoggerHolder {
        private static volatile LoginLogger logger;

        private LoginLoggerHolder() {
        }

        private static synchronized LoginLogger getLogger(Context context) {
            synchronized (LoginLoggerHolder.class) {
                if (context == null) {
                    context = FacebookSdk.getApplicationContext();
                }
                if (context == null) {
                    return null;
                }
                if (logger == null) {
                    logger = new LoginLogger(context, FacebookSdk.getApplicationId());
                }
                context = logger;
                return context;
            }
        }
    }

    /* renamed from: com.facebook.login.LoginManager$3 */
    class C10303 implements Callback {
        C10303() {
        }

        public boolean onActivityResult(int i, Intent intent) {
            return LoginManager.this.onActivityResult(i, intent);
        }
    }

    private static class ActivityStartActivityDelegate implements StartActivityDelegate {
        private final Activity activity;

        ActivityStartActivityDelegate(Activity activity) {
            Validate.notNull(activity, "activity");
            this.activity = activity;
        }

        public void startActivityForResult(Intent intent, int i) {
            this.activity.startActivityForResult(intent, i);
        }

        public Activity getActivityContext() {
            return this.activity;
        }
    }

    private static class FragmentStartActivityDelegate implements StartActivityDelegate {
        private final FragmentWrapper fragment;

        FragmentStartActivityDelegate(FragmentWrapper fragmentWrapper) {
            Validate.notNull(fragmentWrapper, "fragment");
            this.fragment = fragmentWrapper;
        }

        public void startActivityForResult(Intent intent, int i) {
            this.fragment.startActivityForResult(intent, i);
        }

        public Activity getActivityContext() {
            return this.fragment.getActivity();
        }
    }

    LoginManager() {
        Validate.sdkInitialized();
    }

    public static LoginManager getInstance() {
        if (instance == null) {
            synchronized (LoginManager.class) {
                if (instance == null) {
                    instance = new LoginManager();
                }
            }
        }
        return instance;
    }

    public void resolveError(Activity activity, GraphResponse graphResponse) {
        startLogin(new ActivityStartActivityDelegate(activity), createLoginRequestFromResponse(graphResponse));
    }

    public void resolveError(Fragment fragment, GraphResponse graphResponse) {
        resolveError(new FragmentWrapper(fragment), graphResponse);
    }

    public void resolveError(android.app.Fragment fragment, GraphResponse graphResponse) {
        resolveError(new FragmentWrapper(fragment), graphResponse);
    }

    private void resolveError(FragmentWrapper fragmentWrapper, GraphResponse graphResponse) {
        startLogin(new FragmentStartActivityDelegate(fragmentWrapper), createLoginRequestFromResponse(graphResponse));
    }

    private Request createLoginRequestFromResponse(GraphResponse graphResponse) {
        Validate.notNull(graphResponse, "response");
        graphResponse = graphResponse.getRequest().getAccessToken();
        return createLoginRequest(graphResponse != null ? graphResponse.getPermissions() : null);
    }

    public void registerCallback(CallbackManager callbackManager, final FacebookCallback<LoginResult> facebookCallback) {
        if (callbackManager instanceof CallbackManagerImpl) {
            ((CallbackManagerImpl) callbackManager).registerCallback(RequestCodeOffset.Login.toRequestCode(), new Callback() {
                public boolean onActivityResult(int i, Intent intent) {
                    return LoginManager.this.onActivityResult(i, intent, facebookCallback);
                }
            });
            return;
        }
        throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
    }

    boolean onActivityResult(int i, Intent intent) {
        return onActivityResult(i, intent, null);
    }

    boolean onActivityResult(int i, Intent intent, FacebookCallback<LoginResult> facebookCallback) {
        Map map;
        Code code;
        boolean z;
        AccessToken accessToken;
        Request request;
        int i2 = i;
        Intent intent2 = intent;
        Code code2 = Code.ERROR;
        Exception exception = null;
        boolean z2 = false;
        if (intent2 != null) {
            AccessToken accessToken2;
            Map map2;
            Request request2;
            Result result = (Result) intent2.getParcelableExtra("com.facebook.LoginFragment:Result");
            if (result != null) {
                Request request3 = result.request;
                Code code3 = result.code;
                if (i2 != -1) {
                    if (i2 == 0) {
                        z2 = true;
                    }
                    accessToken2 = null;
                } else if (result.code == Code.SUCCESS) {
                    accessToken2 = result.token;
                } else {
                    exception = new FacebookAuthorizationException(result.errorMessage);
                    accessToken2 = null;
                }
                map2 = result.loggingExtras;
                Code code4 = code3;
                request2 = request3;
                code2 = code4;
            } else {
                accessToken2 = null;
                map2 = accessToken2;
                request2 = map2;
            }
            map = map2;
            code = code2;
            z = z2;
            Request request4 = request2;
            accessToken = accessToken2;
            request = request4;
        } else if (i2 == 0) {
            code = Code.CANCEL;
            z = true;
            request = null;
            accessToken = request;
            map = accessToken;
        } else {
            code = code2;
            request = null;
            accessToken = request;
            map = accessToken;
            z = false;
        }
        if (exception == null && accessToken == null && !z) {
            exception = new FacebookException("Unexpected call to LoginManager.onActivityResult");
        }
        logCompleteLogin(null, code, map, exception, true, request);
        finishLogin(accessToken, request, exception, z, facebookCallback);
        return true;
    }

    public LoginBehavior getLoginBehavior() {
        return this.loginBehavior;
    }

    public LoginManager setLoginBehavior(LoginBehavior loginBehavior) {
        this.loginBehavior = loginBehavior;
        return this;
    }

    public DefaultAudience getDefaultAudience() {
        return this.defaultAudience;
    }

    public LoginManager setDefaultAudience(DefaultAudience defaultAudience) {
        this.defaultAudience = defaultAudience;
        return this;
    }

    public void logOut() {
        AccessToken.setCurrentAccessToken(null);
        Profile.setCurrentProfile(null);
    }

    public void logInWithReadPermissions(Fragment fragment, Collection<String> collection) {
        logInWithReadPermissions(new FragmentWrapper(fragment), (Collection) collection);
    }

    public void logInWithReadPermissions(android.app.Fragment fragment, Collection<String> collection) {
        logInWithReadPermissions(new FragmentWrapper(fragment), (Collection) collection);
    }

    private void logInWithReadPermissions(FragmentWrapper fragmentWrapper, Collection<String> collection) {
        validateReadPermissions(collection);
        startLogin(new FragmentStartActivityDelegate(fragmentWrapper), createLoginRequest(collection));
    }

    public void logInWithReadPermissions(Activity activity, Collection<String> collection) {
        validateReadPermissions(collection);
        startLogin(new ActivityStartActivityDelegate(activity), createLoginRequest(collection));
    }

    public void logInWithPublishPermissions(Fragment fragment, Collection<String> collection) {
        logInWithPublishPermissions(new FragmentWrapper(fragment), (Collection) collection);
    }

    public void logInWithPublishPermissions(android.app.Fragment fragment, Collection<String> collection) {
        logInWithPublishPermissions(new FragmentWrapper(fragment), (Collection) collection);
    }

    private void logInWithPublishPermissions(FragmentWrapper fragmentWrapper, Collection<String> collection) {
        validatePublishPermissions(collection);
        startLogin(new FragmentStartActivityDelegate(fragmentWrapper), createLoginRequest(collection));
    }

    public void logInWithPublishPermissions(Activity activity, Collection<String> collection) {
        validatePublishPermissions(collection);
        startLogin(new ActivityStartActivityDelegate(activity), createLoginRequest(collection));
    }

    private void validateReadPermissions(Collection<String> collection) {
        if (collection != null) {
            for (String isPublishPermission : collection) {
                if (isPublishPermission(isPublishPermission)) {
                    throw new FacebookException(String.format("Cannot pass a publish or manage permission (%s) to a request for read authorization", new Object[]{(String) collection.next()}));
                }
            }
        }
    }

    private void validatePublishPermissions(Collection<String> collection) {
        if (collection != null) {
            for (String isPublishPermission : collection) {
                if (!isPublishPermission(isPublishPermission)) {
                    throw new FacebookException(String.format("Cannot pass a read permission (%s) to a request for publish authorization", new Object[]{(String) collection.next()}));
                }
            }
        }
    }

    static boolean isPublishPermission(String str) {
        return (str == null || !(str.startsWith(PUBLISH_PERMISSION_PREFIX) || str.startsWith(MANAGE_PERMISSION_PREFIX) || OTHER_PUBLISH_PERMISSIONS.contains(str) != null)) ? null : true;
    }

    private static Set<String> getOtherPublishPermissions() {
        return Collections.unmodifiableSet(new C04232());
    }

    protected Request createLoginRequest(Collection<String> collection) {
        Request request = new Request(this.loginBehavior, Collections.unmodifiableSet(collection != null ? new HashSet(collection) : new HashSet()), this.defaultAudience, FacebookSdk.getApplicationId(), UUID.randomUUID().toString());
        request.setRerequest(AccessToken.getCurrentAccessToken() != null ? true : null);
        return request;
    }

    private void startLogin(StartActivityDelegate startActivityDelegate, Request request) throws FacebookException {
        logStartLogin(startActivityDelegate.getActivityContext(), request);
        CallbackManagerImpl.registerStaticCallback(RequestCodeOffset.Login.toRequestCode(), new C10303());
        if (!tryFacebookActivity(startActivityDelegate, request)) {
            Exception facebookException = new FacebookException("Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest.");
            logCompleteLogin(startActivityDelegate.getActivityContext(), Code.ERROR, null, facebookException, false, request);
            throw facebookException;
        }
    }

    private void logStartLogin(Context context, Request request) {
        context = LoginLoggerHolder.getLogger(context);
        if (context != null && request != null) {
            context.logStartLogin(request);
        }
    }

    private void logCompleteLogin(Context context, Code code, Map<String, String> map, Exception exception, boolean z, Request request) {
        LoginLogger access$000 = LoginLoggerHolder.getLogger(context);
        if (access$000 != null) {
            if (request == null) {
                access$000.logUnexpectedError("fb_mobile_login_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.");
                return;
            }
            Map hashMap = new HashMap();
            hashMap.put("try_login_activity", z ? AppEventsConstants.EVENT_PARAM_VALUE_YES : AppEventsConstants.EVENT_PARAM_VALUE_NO);
            access$000.logCompleteLogin(request.getAuthId(), hashMap, code, map, exception);
        }
    }

    private boolean tryFacebookActivity(com.facebook.login.StartActivityDelegate r3, com.facebook.login.LoginClient.Request r4) {
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
        r2 = this;
        r4 = r2.getFacebookActivityIntent(r4);
        r0 = r2.resolveIntent(r4);
        r1 = 0;
        if (r0 != 0) goto L_0x000c;
    L_0x000b:
        return r1;
    L_0x000c:
        r0 = com.facebook.login.LoginClient.getLoginRequestCode();	 Catch:{ ActivityNotFoundException -> 0x0015 }
        r3.startActivityForResult(r4, r0);	 Catch:{ ActivityNotFoundException -> 0x0015 }
        r3 = 1;
        return r3;
    L_0x0015:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.LoginManager.tryFacebookActivity(com.facebook.login.StartActivityDelegate, com.facebook.login.LoginClient$Request):boolean");
    }

    private boolean resolveIntent(Intent intent) {
        return FacebookSdk.getApplicationContext().getPackageManager().resolveActivity(intent, 0) != null;
    }

    protected Intent getFacebookActivityIntent(Request request) {
        Intent intent = new Intent();
        intent.setClass(FacebookSdk.getApplicationContext(), FacebookActivity.class);
        intent.setAction(request.getLoginBehavior().toString());
        Bundle bundle = new Bundle();
        bundle.putParcelable(ShareConstants.WEB_DIALOG_RESULT_PARAM_REQUEST_ID, request);
        intent.putExtra("com.facebook.LoginFragment:Request", bundle);
        return intent;
    }

    static LoginResult computeLoginResult(Request request, AccessToken accessToken) {
        Collection permissions = request.getPermissions();
        Object hashSet = new HashSet(accessToken.getPermissions());
        if (request.isRerequest() != null) {
            hashSet.retainAll(permissions);
        }
        request = new HashSet(permissions);
        request.removeAll(hashSet);
        return new LoginResult(accessToken, hashSet, request);
    }

    private void finishLogin(AccessToken accessToken, Request request, FacebookException facebookException, boolean z, FacebookCallback<LoginResult> facebookCallback) {
        if (accessToken != null) {
            AccessToken.setCurrentAccessToken(accessToken);
            Profile.fetchProfileForCurrentAccessToken();
        }
        if (facebookCallback != null) {
            request = accessToken != null ? computeLoginResult(request, accessToken) : null;
            if (!z) {
                if (request == null || request.getRecentlyGrantedPermissions().size()) {
                    if (facebookException != null) {
                        facebookCallback.onError(facebookException);
                        return;
                    } else if (accessToken != null) {
                        facebookCallback.onSuccess(request);
                    }
                }
            }
            facebookCallback.onCancel();
        }
    }
}
