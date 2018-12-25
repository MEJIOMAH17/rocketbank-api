package ru.rocketbank.r2d2.fragments;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.NotificationCompat;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.facebook.internal.NativeProtocol;
import java.nio.charset.Charset;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import ru.rocketbank.core.dagger.component.RocketComponent;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.FireCMManager;
import ru.rocketbank.core.manager.GeolocationManager;
import ru.rocketbank.core.manager.TouchManager;
import ru.rocketbank.core.manager.security.RocketFingerPrintListener;
import ru.rocketbank.core.model.LoginResponseData;
import ru.rocketbank.core.model.RegistrationStatus;
import ru.rocketbank.core.model.enums.Status;
import ru.rocketbank.core.network.api.LoginApi;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.ImageHelper;
import ru.rocketbank.core.widgets.RocketSMSGroup;
import ru.rocketbank.core.widgets.RocketSMSGroup.OnCodeResetListener;
import ru.rocketbank.core.widgets.RocketSMSInput.OnCodeInputListener;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.CardBlockActivity;
import ru.rocketbank.r2d2.activities.FirstRefillActivity;
import ru.rocketbank.r2d2.activities.StartupActivity;
import ru.rocketbank.r2d2.fragments.dialogs.ProgressDialogFragment;
import ru.rocketbank.r2d2.widgets.FingerprintDialog;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

/* compiled from: CodeInputDialogFragment.kt */
public final class CodeInputDialogFragment extends DialogFragment implements RocketFingerPrintListener {
    public static final Companion Companion = new Companion();
    private static final int PERMISSIONS_FINGER = 16;
    private static final String SPINNER = "SPINNER";
    public static final String TAG = "CodeInputDialog";
    private HashMap _$_findViewCache;
    private AlertDialogFragment alertDialogFragment;
    private Authorization authorization;
    private CodeInputListener codeInputListener;
    private ImageView coverImageView;
    private RocketTextView errorView;
    private View fingerPrint;
    private FireCMManager fireCMManager;
    private GeolocationManager geolocationManager;
    private final Runnable hideTouch = new CodeInputDialogFragment$hideTouch$1(this);
    private LoginApi loginAPI;
    private final Runnable refreshTouch = new CodeInputDialogFragment$refreshTouch$1(this);
    private Subscription requestSubscription;
    private final Runnable resetTouch = new CodeInputDialogFragment$resetTouch$1(this);
    private RocketSMSGroup rocketSMSGroup;
    private final Handler touchHandler = new Handler();
    private TouchManager touchManager;
    private boolean touchTokenInvalidated;

    /* compiled from: CodeInputDialogFragment.kt */
    public interface CodeInputListener {
        void onCodeCorrect();
    }

    /* compiled from: CodeInputDialogFragment.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public final View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view == null) {
            view = getView();
            if (view == null) {
                return null;
            }
            view = view.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view);
        }
        return view;
    }

    public static final /* synthetic */ View access$getFingerPrint$p(CodeInputDialogFragment codeInputDialogFragment) {
        codeInputDialogFragment = codeInputDialogFragment.fingerPrint;
        if (codeInputDialogFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fingerPrint");
        }
        return codeInputDialogFragment;
    }

    public static final /* synthetic */ RocketSMSGroup access$getRocketSMSGroup$p(CodeInputDialogFragment codeInputDialogFragment) {
        codeInputDialogFragment = codeInputDialogFragment.rocketSMSGroup;
        if (codeInputDialogFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketSMSGroup");
        }
        return codeInputDialogFragment;
    }

    public final CodeInputListener getCodeInputListener() {
        return this.codeInputListener;
    }

    public final void setCodeInputListener(CodeInputListener codeInputListener) {
        this.codeInputListener = codeInputListener;
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        this.loginAPI = RocketApplication.Companion.getInjector().getLoginApi();
        this.authorization = RocketApplication.Companion.getInjector().getAuthorization();
        this.fireCMManager = RocketApplication.Companion.getInjector().getFireCMManager();
        this.geolocationManager = RocketApplication.Companion.getInjector().getGeolocationManager();
        this.touchManager = RocketApplication.Companion.getInjector().getTouchManager();
        bundle = this.geolocationManager;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("geolocationManager");
        }
        bundle.update();
        layoutInflater = layoutInflater.inflate(C0859R.layout.widget_code_input, viewGroup, false);
        viewGroup = layoutInflater.findViewById(C0859R.id.fingerprint);
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view.findViewById(R.id.fingerprint)");
        this.fingerPrint = viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.error);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView");
        }
        this.errorView = (RocketTextView) viewGroup;
        viewGroup = layoutInflater.findViewById(C0859R.id.smsgroup);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketSMSGroup");
        }
        this.rocketSMSGroup = (RocketSMSGroup) viewGroup;
        viewGroup = this.rocketSMSGroup;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketSMSGroup");
        }
        viewGroup.setOnCodeInputListener((OnCodeInputListener) new CodeInputDialogFragment$onCreateView$1(this));
        viewGroup = this.rocketSMSGroup;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketSMSGroup");
        }
        viewGroup.setOnCodeResetListener((OnCodeResetListener) new CodeInputDialogFragment$onCreateView$2(this));
        viewGroup = layoutInflater.findViewById(C0859R.id.imageView);
        if (viewGroup == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
        }
        this.coverImageView = (ImageView) viewGroup;
        viewGroup = this.touchManager;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("touchManager");
        }
        if (viewGroup.isAvailable() == null) {
            viewGroup = this.touchManager;
            if (viewGroup == null) {
                Intrinsics.throwUninitializedPropertyAccessException("touchManager");
            }
            if (viewGroup.gotPermissions() == null) {
                viewGroup = this.touchManager;
                if (viewGroup == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("touchManager");
                }
                bundle = getActivity();
                if (bundle == null) {
                    Intrinsics.throwNpe();
                }
                Intrinsics.checkExpressionValueIsNotNull(bundle, "activity!!");
                viewGroup.requestPermission$3ef636dc((Activity) bundle);
            }
        }
        return layoutInflater;
    }

    public final Dialog onCreateDialog(Bundle bundle) {
        return (Dialog) new CodeInputDialogFragment$onCreateDialog$1(this, getActivity(), getTheme());
    }

    private final void refreshFingerPrint() {
        TouchManager touchManager = this.touchManager;
        if (touchManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("touchManager");
        }
        boolean isAvailable = touchManager.isAvailable();
        RocketSMSGroup rocketSMSGroup = this.rocketSMSGroup;
        if (rocketSMSGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketSMSGroup");
        }
        rocketSMSGroup.setOffImidiate();
        if (isAvailable) {
            RocketSMSGroup rocketSMSGroup2 = this.rocketSMSGroup;
            if (rocketSMSGroup2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rocketSMSGroup");
            }
            rocketSMSGroup2.setTouchWaiting();
            touchManager = this.touchManager;
            if (touchManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("touchManager");
            }
            touchManager.setListener(this);
            touchManager = this.touchManager;
            if (touchManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("touchManager");
            }
            View view;
            if (touchManager.gotValidToken()) {
                touchManager = this.touchManager;
                if (touchManager == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("touchManager");
                }
                if (!touchManager.initialize(false)) {
                    rocketSMSGroup2 = this.rocketSMSGroup;
                    if (rocketSMSGroup2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("rocketSMSGroup");
                    }
                    rocketSMSGroup2.setTouchError(getString(C0859R.string.touch_unavailable));
                    touchManager = this.touchManager;
                    if (touchManager == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("touchManager");
                    }
                    touchManager.clearListener();
                    touchManager = this.touchManager;
                    if (touchManager == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("touchManager");
                    }
                    touchManager.close();
                    this.touchHandler.postDelayed(new CodeInputDialogFragment$refreshFingerPrint$1(this), 5000);
                    this.touchTokenInvalidated = true;
                }
                view = this.fingerPrint;
                if (view == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("fingerPrint");
                }
                view.setVisibility(0);
            } else {
                touchManager = this.touchManager;
                if (touchManager == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("touchManager");
                }
                touchManager.clearListener();
                touchManager = this.touchManager;
                if (touchManager == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("touchManager");
                }
                touchManager.close();
                view = this.fingerPrint;
                if (view == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("fingerPrint");
                }
                view.setVisibility(8);
            }
        }
    }

    public final void onResume() {
        super.onResume();
        ImageHelper imageHelper = ImageHelper.INSTANCE;
        ImageView imageView = this.coverImageView;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("coverImageView");
        }
        Authorization authorization = this.authorization;
        if (authorization == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        imageHelper.loadCover(imageView, authorization.getUserData());
        this.touchHandler.postDelayed(this.refreshTouch, 200);
    }

    public final void onPause() {
        hideSpinner();
        this.touchHandler.removeCallbacks(this.refreshTouch);
        this.touchHandler.removeCallbacks(this.resetTouch);
        TouchManager touchManager = this.touchManager;
        if (touchManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("touchManager");
        }
        touchManager.clearListener();
        touchManager = this.touchManager;
        if (touchManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("touchManager");
        }
        touchManager.close();
        AlertDialogFragment alertDialogFragment = this.alertDialogFragment;
        if (alertDialogFragment != null) {
            alertDialogFragment.dismissAllowingStateLoss();
        }
        ImageView imageView = this.coverImageView;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("coverImageView");
        }
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            drawable.setCallback(null);
        }
        imageView = this.coverImageView;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("coverImageView");
        }
        imageView.setImageDrawable(null);
        Subscription subscription = this.requestSubscription;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        RocketSMSGroup rocketSMSGroup = this.rocketSMSGroup;
        if (rocketSMSGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketSMSGroup");
        }
        rocketSMSGroup.regroup();
        super.onPause();
    }

    public final void onAuthenticationError(int i, String str) {
        Intrinsics.checkParameterIsNotNull(str, "errString");
        this.touchHandler.removeCallbacksAndMessages(null);
        i = this.rocketSMSGroup;
        if (i == 0) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketSMSGroup");
        }
        i.setTouchError(str);
        this.touchHandler.postDelayed(this.hideTouch, 3000);
        i = this.touchManager;
        if (i == 0) {
            Intrinsics.throwUninitializedPropertyAccessException("touchManager");
        }
        i.clearListener();
        i = this.touchManager;
        if (i == 0) {
            Intrinsics.throwUninitializedPropertyAccessException("touchManager");
        }
        i.close();
    }

    public final void onAuthenticationHelp(int i, String str) {
        Intrinsics.checkParameterIsNotNull(str, "helpString");
        i = this.rocketSMSGroup;
        if (i == 0) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketSMSGroup");
        }
        i.setTouchError(str);
        this.touchHandler.removeCallbacksAndMessages(null);
        this.touchHandler.postDelayed(this.resetTouch, 5000);
    }

    public final void onAuthenticationSucceeded(String str) {
        if (requestLogin(str, null) == null) {
            this.touchHandler.postDelayed(this.refreshTouch, 1000);
        }
    }

    public final void onAuthenticationFailed() {
        RocketSMSGroup rocketSMSGroup = this.rocketSMSGroup;
        if (rocketSMSGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketSMSGroup");
        }
        rocketSMSGroup.setTouchError(getString(C0859R.string.touch_not_exists));
        this.touchHandler.removeCallbacksAndMessages(null);
        this.touchHandler.postDelayed(this.resetTouch, 3000);
    }

    public final void onKeyNeedsForUpdate() {
        this.touchTokenInvalidated = true;
    }

    public final void onDestroyView() {
        TouchManager touchManager = this.touchManager;
        if (touchManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("touchManager");
        }
        if (touchManager.isAvailable()) {
            ru.rocketbank.r2d2.widgets.FingerprintDialog.Companion companion = FingerprintDialog.Companion;
            Context context = getContext();
            if (context == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            FragmentManager fragmentManager = getFragmentManager();
            if (fragmentManager == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(fragmentManager, "fragmentManager!!");
            TouchManager touchManager2 = this.touchManager;
            if (touchManager2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("touchManager");
            }
            if (!companion.showSuggestDialogIfNeed(context, fragmentManager, touchManager2)) {
                FragmentActivity activity;
                if (this.touchTokenInvalidated) {
                    touchManager = this.touchManager;
                    if (touchManager == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("touchManager");
                    }
                    touchManager.invalidateToken();
                    companion = FingerprintDialog.Companion;
                    context = getContext();
                    if (context == null) {
                        Intrinsics.throwNpe();
                    }
                    Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
                    activity = getActivity();
                    if (activity == null) {
                        Intrinsics.throwNpe();
                    }
                    Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
                    fragmentManager = activity.getSupportFragmentManager();
                    Intrinsics.checkExpressionValueIsNotNull(fragmentManager, "activity!!.supportFragmentManager");
                    touchManager2 = this.touchManager;
                    if (touchManager2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("touchManager");
                    }
                    String string = getString(C0859R.string.touch_need_refresh);
                    Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.touch_need_refresh)");
                    companion.showConfirmFingerPrintDialog(context, fragmentManager, touchManager2, string);
                } else {
                    companion = FingerprintDialog.Companion;
                    context = getContext();
                    if (context == null) {
                        Intrinsics.throwNpe();
                    }
                    Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
                    activity = getActivity();
                    if (activity == null) {
                        Intrinsics.throwNpe();
                    }
                    Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
                    fragmentManager = activity.getSupportFragmentManager();
                    Intrinsics.checkExpressionValueIsNotNull(fragmentManager, "activity!!.supportFragmentManager");
                    touchManager2 = this.touchManager;
                    if (touchManager2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("touchManager");
                    }
                    companion.checkFingerprint(context, fragmentManager, touchManager2);
                }
            }
        }
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    private final void cancelLoginRequest() {
        AlertDialogFragment alertDialogFragment = this.alertDialogFragment;
        if (alertDialogFragment != null) {
            alertDialogFragment.dismissAllowingStateLoss();
            this.alertDialogFragment = null;
        }
    }

    private final boolean requestLogin(String str, String str2) {
        boolean z = false;
        if (getActivity() == null) {
            return false;
        }
        RocketSMSGroup rocketSMSGroup = this.rocketSMSGroup;
        if (rocketSMSGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketSMSGroup");
        }
        rocketSMSGroup.setOff();
        TouchManager touchManager = this.touchManager;
        if (touchManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("touchManager");
        }
        touchManager.clearListener();
        touchManager = this.touchManager;
        if (touchManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("touchManager");
        }
        touchManager.close();
        this.touchHandler.removeCallbacksAndMessages(null);
        if (str != null) {
            str2 = "Token token=".concat(String.valueOf(str));
        } else {
            StringBuilder stringBuilder = new StringBuilder();
            Authorization authorization = this.authorization;
            if (authorization == null) {
                Intrinsics.throwUninitializedPropertyAccessException("authorization");
            }
            stringBuilder.append(authorization.getLogin());
            stringBuilder.append(":");
            stringBuilder.append(str2);
            str2 = stringBuilder.toString();
            Charset charset = Charsets.UTF_8;
            StringBuilder stringBuilder2 = new StringBuilder("Basic ");
            if (str2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            str2 = str2.getBytes(charset);
            Intrinsics.checkExpressionValueIsNotNull(str2, "(this as java.lang.String).getBytes(charset)");
            stringBuilder2.append(Base64.encodeToString(str2, 2));
            str2 = stringBuilder2.toString();
        }
        showSpinner();
        Authorization authorization2 = this.authorization;
        if (authorization2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        String pusherToken = authorization2.getPusherToken();
        if (str != null) {
            z = true;
        }
        str = this.loginAPI;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loginAPI");
        }
        this.requestSubscription = str.login(pusherToken, str2).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new CodeInputDialogFragment$requestLogin$1(this, z));
        return true;
    }

    private final void dropAllSession() {
        RocketComponent injector = RocketApplication.Companion.getInjector();
        injector.getAuthorizationStorage().removeState();
        injector.getAppInfoManager().resetDeviceToNew();
        restart();
    }

    private final void restart() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            Context context = activity;
            PendingIntent activity2 = PendingIntent.getActivity(context, 123456, new Intent(context, StartupActivity.class), 268435456);
            Object systemService = activity.getSystemService(NotificationCompat.CATEGORY_ALARM);
            if (systemService == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.app.AlarmManager");
            }
            ((AlarmManager) systemService).set(1, System.currentTimeMillis() + 500, activity2);
            System.exit(0);
        }
    }

    private final void handleLogin(boolean z, LoginResponseData loginResponseData) {
        hideSpinner();
        String token = loginResponseData.getToken();
        loginResponseData = loginResponseData.getUser();
        if (token != null) {
            if (loginResponseData != null) {
                RocketApplication.Companion.getInjector().getAnalyticsManager().loginCode();
                try {
                    Authorization authorization = this.authorization;
                    if (authorization == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("authorization");
                    }
                    authorization.setStatus(RegistrationStatus.UserFeed);
                    authorization = this.authorization;
                    if (authorization == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("authorization");
                    }
                    authorization.setToken(token);
                    Authorization authorization2 = this.authorization;
                    if (authorization2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("authorization");
                    }
                    authorization2.setUserModel(loginResponseData);
                    FireCMManager fireCMManager = this.fireCMManager;
                    if (fireCMManager == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("fireCMManager");
                    }
                    fireCMManager.sendTokenIfNeeded();
                    RocketApplication.Companion.getFirebaseAnalytics().setUserId(String.valueOf(loginResponseData.getId()));
                    FragmentActivity activity = getActivity();
                    if (activity != null) {
                        if (loginResponseData.getStatus() == Status.BLOCKED) {
                            CardBlockActivity.Companion.start(activity, loginResponseData.getBlockReason(), false);
                        } else if (loginResponseData.getStatus() == Status.NEW) {
                            FirstRefillActivity.Companion.start(activity);
                        }
                    }
                    loginResponseData = this.codeInputListener;
                    if (loginResponseData != null) {
                        loginResponseData.onCodeCorrect();
                        dismissAllowingStateLoss();
                        return;
                    }
                    dismissAllowingStateLoss();
                    AnalyticsManager.logSignIn(z, true);
                    return;
                } catch (boolean z2) {
                    AnalyticsManager.logException((Throwable) z2);
                    onCodeInputFailed("Не удалось получить данные о пользователе");
                    return;
                }
            }
        }
        onCodeInputFailed("Не удалось получить данные о пользователе");
    }

    private final void handleLoginError(java.lang.Throwable r5, boolean r6) {
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
        r4 = this;
        r0 = "CodeInputDialog";
        r1 = "Failed";
        android.util.Log.e(r0, r1, r5);
        r4.hideSpinner();
        r0 = r4.touchHandler;
        r1 = r4.refreshTouch;
        r2 = 500; // 0x1f4 float:7.0E-43 double:2.47E-321;
        r0.postDelayed(r1, r2);
        r0 = 0;
        ru.rocketbank.core.manager.AnalyticsManager.logSignIn(r6, r0);
        r0 = r5 instanceof ru.rocketbank.core.network.exception.RocketResponseException;
        if (r0 == 0) goto L_0x00b6;
    L_0x001b:
        r0 = r5;
        r0 = (ru.rocketbank.core.network.exception.RocketResponseException) r0;
        r0 = r0.getGenericRequestResponseData();
        r1 = r4.rocketSMSGroup;	 Catch:{ Exception -> 0x009d }
        if (r1 != 0) goto L_0x002b;	 Catch:{ Exception -> 0x009d }
    L_0x0026:
        r2 = "rocketSMSGroup";	 Catch:{ Exception -> 0x009d }
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2);	 Catch:{ Exception -> 0x009d }
    L_0x002b:
        r1.regroup();	 Catch:{ Exception -> 0x009d }
        if (r0 == 0) goto L_0x0035;	 Catch:{ Exception -> 0x009d }
    L_0x0030:
        r1 = r0.getResponse();	 Catch:{ Exception -> 0x009d }
        goto L_0x0036;	 Catch:{ Exception -> 0x009d }
    L_0x0035:
        r1 = 0;	 Catch:{ Exception -> 0x009d }
    L_0x0036:
        if (r1 == 0) goto L_0x008d;	 Catch:{ Exception -> 0x009d }
    L_0x0038:
        if (r6 == 0) goto L_0x0076;	 Catch:{ Exception -> 0x009d }
    L_0x003a:
        r6 = r4.touchManager;	 Catch:{ Exception -> 0x009d }
        if (r6 != 0) goto L_0x0043;	 Catch:{ Exception -> 0x009d }
    L_0x003e:
        r0 = "touchManager";	 Catch:{ Exception -> 0x009d }
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r0);	 Catch:{ Exception -> 0x009d }
    L_0x0043:
        r6.invalidateToken();	 Catch:{ Exception -> 0x009d }
        r6 = r4.fingerPrint;	 Catch:{ Exception -> 0x009d }
        if (r6 != 0) goto L_0x004f;	 Catch:{ Exception -> 0x009d }
    L_0x004a:
        r0 = "fingerPrint";	 Catch:{ Exception -> 0x009d }
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r0);	 Catch:{ Exception -> 0x009d }
    L_0x004f:
        r0 = 4;	 Catch:{ Exception -> 0x009d }
        r6.setVisibility(r0);	 Catch:{ Exception -> 0x009d }
        r6 = r4.touchManager;	 Catch:{ Exception -> 0x009d }
        if (r6 != 0) goto L_0x005c;	 Catch:{ Exception -> 0x009d }
    L_0x0057:
        r0 = "touchManager";	 Catch:{ Exception -> 0x009d }
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r0);	 Catch:{ Exception -> 0x009d }
    L_0x005c:
        r6.clearListener();	 Catch:{ Exception -> 0x009d }
        r6 = r4.touchManager;	 Catch:{ Exception -> 0x009d }
        if (r6 != 0) goto L_0x0068;	 Catch:{ Exception -> 0x009d }
    L_0x0063:
        r0 = "touchManager";	 Catch:{ Exception -> 0x009d }
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r0);	 Catch:{ Exception -> 0x009d }
    L_0x0068:
        r6.close();	 Catch:{ Exception -> 0x009d }
        r6 = 1;	 Catch:{ Exception -> 0x009d }
        r4.touchTokenInvalidated = r6;	 Catch:{ Exception -> 0x009d }
        r6 = 2131821688; // 0x7f110478 float:1.9276126E38 double:1.053259859E-314;	 Catch:{ Exception -> 0x009d }
        r6 = r4.getString(r6);	 Catch:{ Exception -> 0x009d }
        goto L_0x0084;	 Catch:{ Exception -> 0x009d }
    L_0x0076:
        r6 = r0.getResponse();	 Catch:{ Exception -> 0x009d }
        if (r6 == 0) goto L_0x0082;	 Catch:{ Exception -> 0x009d }
    L_0x007c:
        r6 = r6.getDescription();	 Catch:{ Exception -> 0x009d }
        if (r6 != 0) goto L_0x0084;	 Catch:{ Exception -> 0x009d }
    L_0x0082:
        r6 = "Невозможно войти по отпечатку пальца. Используйте пин-код.";	 Catch:{ Exception -> 0x009d }
    L_0x0084:
        r0 = "errorMessage";	 Catch:{ Exception -> 0x009d }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r0);	 Catch:{ Exception -> 0x009d }
        r4.onCodeInputFailed(r6);	 Catch:{ Exception -> 0x009d }
        return;	 Catch:{ Exception -> 0x009d }
    L_0x008d:
        r6 = 2131820734; // 0x7f1100be float:1.9274191E38 double:1.053259388E-314;	 Catch:{ Exception -> 0x009d }
        r6 = r4.getString(r6);	 Catch:{ Exception -> 0x009d }
        r0 = "getString(R.string.check_network)";	 Catch:{ Exception -> 0x009d }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r0);	 Catch:{ Exception -> 0x009d }
        r4.onCodeInputFailed(r6);	 Catch:{ Exception -> 0x009d }
        return;
    L_0x009d:
        r6 = "CodeInputDialog";
        r0 = "Code error";
        android.util.Log.e(r6, r0, r5);
        r5 = r4.rocketSMSGroup;
        if (r5 != 0) goto L_0x00ad;
    L_0x00a8:
        r6 = "rocketSMSGroup";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r6);
    L_0x00ad:
        r5.regroup();
        r5 = "Произошла ошибка";
        r4.onCodeInputFailed(r5);
        return;
    L_0x00b6:
        r5 = r4.rocketSMSGroup;
        if (r5 != 0) goto L_0x00bf;
    L_0x00ba:
        r6 = "rocketSMSGroup";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r6);
    L_0x00bf:
        r5.regroup();
        r5 = "Произошла ошибка";
        r4.onCodeInputFailed(r5);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.CodeInputDialogFragment.handleLoginError(java.lang.Throwable, boolean):void");
    }

    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(2, C0859R.style.Theme.App);
        setCancelable(null);
    }

    private final void onCodeInputFailed(String str) {
        RocketSMSGroup rocketSMSGroup = this.rocketSMSGroup;
        if (rocketSMSGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketSMSGroup");
        }
        rocketSMSGroup.regroup();
        this.alertDialogFragment = AlertDialogFragment.create(str).setOnPositiveListener(CodeInputDialogFragment$onCodeInputFailed$1.INSTANCE);
        str = getFragmentManager();
        if (str != null) {
            str = str.beginTransaction();
            if (str != null) {
                str = str.add(this.alertDialogFragment, "dialog");
                if (str != null) {
                    str.commitAllowingStateLoss();
                }
            }
        }
    }

    private final void hideSpinner() {
        if (getActivity() != null) {
            FragmentActivity activity = getActivity();
            if (activity == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
            ProgressDialogFragment progressDialogFragment = (ProgressDialogFragment) activity.getSupportFragmentManager().findFragmentByTag(SPINNER);
            if (progressDialogFragment != null) {
                progressDialogFragment.dismissAllowingStateLoss();
            }
        }
    }

    private final void showSpinner() {
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
        r3 = this;
        r0 = r3.getActivity();
        if (r0 != 0) goto L_0x0007;
    L_0x0006:
        return;
    L_0x0007:
        r0 = new ru.rocketbank.r2d2.fragments.dialogs.ProgressDialogFragment;	 Catch:{ Exception -> 0x0024 }
        r0.<init>();	 Catch:{ Exception -> 0x0024 }
        r1 = r3.getActivity();	 Catch:{ Exception -> 0x0024 }
        if (r1 != 0) goto L_0x0015;	 Catch:{ Exception -> 0x0024 }
    L_0x0012:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x0024 }
    L_0x0015:
        r2 = "activity!!";	 Catch:{ Exception -> 0x0024 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2);	 Catch:{ Exception -> 0x0024 }
        r1 = r1.getSupportFragmentManager();	 Catch:{ Exception -> 0x0024 }
        r2 = "SPINNER";	 Catch:{ Exception -> 0x0024 }
        r0.show(r1, r2);	 Catch:{ Exception -> 0x0024 }
        return;
    L_0x0024:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.CodeInputDialogFragment.showSpinner():void");
    }

    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Intrinsics.checkParameterIsNotNull(strArr, NativeProtocol.RESULT_ARGS_PERMISSIONS);
        Intrinsics.checkParameterIsNotNull(iArr, "grantResults");
        if (i == 16) {
            onFingerPermission(iArr);
        }
    }

    private final void onFingerPermission(int[] iArr) {
        if ((1 ^ (iArr.length == 0 ? 1 : 0)) != 0 && iArr[0] == null) {
            this.touchHandler.postDelayed(this.refreshTouch, 1000);
        }
    }
}
