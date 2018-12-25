package ru.rocketbank.r2d2.root.lead;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AlertDialog.Builder;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.view.View;
import android.widget.ImageView;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.SmsVerificationResponseData;
import ru.rocketbank.core.model.dto.ResponseData;
import ru.rocketbank.core.network.model.SmsVerificationPhoneResponse;
import ru.rocketbank.core.receiver.SmsReceiver;
import ru.rocketbank.core.widgets.RocketNumpad;
import ru.rocketbank.core.widgets.RocketSMSInput;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.activities.AbstractActivity;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

/* compiled from: SmsConfirmationActivity.kt */
public final class SmsConfirmationActivity extends AbstractActivity {
    public static final Companion Companion = new Companion();
    private static final String KEY_PHONE_NUMBER = "KEY_PHONE_NUMBER";
    private static final String KEY_VERIFICATION_ID = "KEY_VERIFICATION_ID";
    private static final String KEY_VERIFY_MODE = "KEY_VERIFY_MODE";
    public static final String MODE_VERIFY_PHONE = "MODE_VERIFY_PHONE";
    public static final String MODE_VERIFY_REGULAR = "MODE_VERIFY_REGULAR";
    public static final int RESULT_NOT_ACCEPT_USER_TERMS = 3;
    public static final int RESULT_NOT_OK = 2;
    public static final int RESULT_OK = 1;
    private static final int VerifyModePhone = 16;
    private static final int VerifyModeRegular = 32;
    private HashMap _$_findViewCache;
    private String _smsVerificationId;
    private AlertDialog alertDialog;
    private BroadcastReceiver smsConfirmationReceiver;
    private SmsVerificationResponseData smsData;
    private RocketSMSInput smsInput;
    private Subscription verificationSubscription;
    private int verifyMode = 32;

    /* compiled from: SmsConfirmationActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public static /* bridge */ /* synthetic */ void startForResult$default(Companion companion, Activity activity, String str, int i, String str2, String str3, int i2, Object obj) {
            if ((i2 & 16) != 0) {
                str3 = SmsConfirmationActivity.MODE_VERIFY_REGULAR;
            }
            companion.startForResult(activity, str, i, str2, str3);
        }

        public final void startForResult(Activity activity, String str, int i, String str2, String str3) {
            Intrinsics.checkParameterIsNotNull(activity, "activity");
            Intrinsics.checkParameterIsNotNull(str3, "verifyMode");
            Intent intent = new Intent(activity, SmsConfirmationActivity.class);
            intent.putExtra(SmsConfirmationActivity.KEY_VERIFICATION_ID, str);
            intent.putExtra(SmsConfirmationActivity.KEY_PHONE_NUMBER, str2);
            intent.putExtra(SmsConfirmationActivity.KEY_VERIFY_MODE, str3);
            activity.startActivityForResult(intent, i);
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
        if (view != null) {
            return view;
        }
        view = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), view);
        return view;
    }

    public static final /* synthetic */ SmsVerificationResponseData access$getSmsData$p(SmsConfirmationActivity smsConfirmationActivity) {
        smsConfirmationActivity = smsConfirmationActivity.smsData;
        if (smsConfirmationActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("smsData");
        }
        return smsConfirmationActivity;
    }

    public static final /* synthetic */ RocketSMSInput access$getSmsInput$p(SmsConfirmationActivity smsConfirmationActivity) {
        smsConfirmationActivity = smsConfirmationActivity.smsInput;
        if (smsConfirmationActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("smsInput");
        }
        return smsConfirmationActivity;
    }

    private final void setAlertDialog(AlertDialog alertDialog) {
        this.alertDialog = alertDialog;
    }

    public final AlertDialog getAlertDialog() {
        return this.alertDialog;
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C0859R.layout.activity_sms_confirmation);
        bundle = findViewById(C0859R.id.background);
        if (bundle == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
        }
        LeadConfig.INSTANCE.showBackground((ImageView) bundle);
        this._smsVerificationId = getIntent().getStringExtra(KEY_VERIFICATION_ID);
        bundle = getIntent().getStringExtra(KEY_VERIFY_MODE);
        if (bundle == null) {
            bundle = MODE_VERIFY_REGULAR;
        }
        this.verifyMode = Intrinsics.areEqual(bundle, MODE_VERIFY_PHONE) != null ? 16 : 32;
        bundle = findView(C0859R.id.sms_input);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "findView(R.id.sms_input)");
        this.smsInput = (RocketSMSInput) bundle;
        bundle = this.smsInput;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("smsInput");
        }
        bundle.setOnCodeInputListener(new SmsConfirmationActivity$onCreate$1(this));
        this.smsConfirmationReceiver = (BroadcastReceiver) new SmsReceiver(new SmsConfirmationActivity$onCreate$2(this));
        bundle = findViewById(C0859R.id.numpad);
        if (bundle == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketNumpad");
        }
        RocketNumpad rocketNumpad = (RocketNumpad) bundle;
        rocketNumpad.setResetEnabled(false);
        rocketNumpad.setOnNumberListener(new SmsConfirmationActivity$onCreate$3(this, rocketNumpad));
        Utils.closeKeyboardIfExists(this);
        setResult(2);
    }

    protected final void onResume() {
        super.onResume();
        if (VERSION.SDK_INT >= 19) {
            registerReceiver(this.smsConfirmationReceiver, new IntentFilter("android.provider.Telephony.SMS_RECEIVED"));
        }
    }

    protected final void onPause() {
        super.onPause();
        Subscription subscription = this.verificationSubscription;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        this.verificationSubscription = null;
        if (VERSION.SDK_INT >= 19) {
            unregisterReceiver(this.smsConfirmationReceiver);
        }
    }

    private final void requestSmsVerification(String str) {
        showProgressDialog();
        String str2 = this._smsVerificationId;
        if (str2 != null) {
            getLocalBus().removeStickyEvent(SmsVerificationEvent.class);
            getLocalBus().postSticky(new SmsVerificationEvent(str, str2));
            if (this.verifyMode == 32) {
                verifyCode(str, str2);
            } else {
                verifyPhone(str, str2);
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void processResponseData(ru.rocketbank.core.model.SmsVerificationResponseData r5) {
        /*
        r4 = this;
        r0 = r5.getResponse();
        r1 = r4.checkResponse(r0);
        if (r1 == 0) goto L_0x000b;
    L_0x000a:
        return;
    L_0x000b:
        r1 = "response";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1);
        r1 = r0.getRegistrationStatus();
        if (r1 != 0) goto L_0x0023;
    L_0x0016:
        r5 = new ru.rocketbank.core.exceptions.RocketException;
        r0 = "Не удалось получить статус регистрации.";
        r5.<init>(r0);
        r5 = (java.lang.Throwable) r5;
        r4.handleError(r5);
        return;
    L_0x0023:
        r1 = r4.getIntent();
        r2 = "KEY_PHONE_NUMBER";
        r1 = r1.getStringExtra(r2);
        if (r1 == 0) goto L_0x004a;
    L_0x002f:
        r2 = r1.length();
        r2 = r2 + -5;
        if (r1 != 0) goto L_0x003f;
    L_0x0037:
        r5 = new kotlin.TypeCastException;
        r0 = "null cannot be cast to non-null type java.lang.String";
        r5.<init>(r0);
        throw r5;
    L_0x003f:
        r1 = r1.substring(r2);
        r2 = "(this as java.lang.String).substring(startIndex)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2);
        if (r1 != 0) goto L_0x004c;
    L_0x004a:
        r1 = "";
    L_0x004c:
        r2 = r4.analyticsManager;
        r2.phoneConfirm(r1);
        r1 = ru.rocketbank.r2d2.RocketApplication.Companion;
        r1 = r1.getInjector();
        r1 = r1.getAuthorization();
        r0 = r0.getRegistrationStatus();
        if (r0 != 0) goto L_0x0062;
    L_0x0061:
        return;
    L_0x0062:
        r2 = r0.hashCode();
        r3 = 339106194; // 0x14365992 float:9.2063165E-27 double:1.675407207E-315;
        if (r2 == r3) goto L_0x0084;
    L_0x006b:
        r1 = 1603694133; // 0x5f966e35 float:2.167932E19 double:7.923301776E-315;
        if (r2 == r1) goto L_0x0071;
    L_0x0070:
        goto L_0x00af;
    L_0x0071:
        r1 = "lead_status";
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x00af;
    L_0x0079:
        r4.smsData = r5;
        r5 = r4.analyticsManager;
        r5.newUserPhoneEnter();
        r4.showPrivacy();
        return;
    L_0x0084:
        r2 = "user_feed";
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x00af;
    L_0x008c:
        r0 = "user_feed";
        r1.setStatus(r0);
        r0 = new android.content.Intent;
        r1 = r4;
        r1 = (android.content.Context) r1;
        r2 = ru.rocketbank.r2d2.activities.MainActivity.class;
        r0.<init>(r1, r2);
        r1 = 268468224; // 0x10008000 float:2.5342157E-29 double:1.326409265E-315;
        r0 = r0.setFlags(r1);
        r4.startActivity(r0);
        r4.saveUser(r5);
        r5 = 1;
        r4.setResult(r5);
        r4.finish();
    L_0x00af:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.root.lead.SmsConfirmationActivity.processResponseData(ru.rocketbank.core.model.SmsVerificationResponseData):void");
    }

    private final void saveUser(ru.rocketbank.core.model.SmsVerificationResponseData r3) {
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
        r2 = this;
        r0 = r2.authorization;
        r1 = r3.getToken();
        r0.setToken(r1);
        r0 = r2.authorization;	 Catch:{ NullPointerException -> 0x0013 }
        r3 = r3.getUser();	 Catch:{ NullPointerException -> 0x0013 }
        r0.setUserModel(r3);	 Catch:{ NullPointerException -> 0x0013 }
        return;
    L_0x0013:
        r3 = new ru.rocketbank.core.exceptions.RocketException;
        r0 = "Не удалось получить статус регистрации.";
        r3.<init>(r0);
        r3 = (java.lang.Throwable) r3;
        r2.handleError(r3);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.root.lead.SmsConfirmationActivity.saveUser(ru.rocketbank.core.model.SmsVerificationResponseData):void");
    }

    private final boolean checkResponse(ResponseData responseData) {
        if (responseData == null) {
            handleError((Throwable) new Exception("Не удалось получить информацию о запросе."));
            return true;
        } else if (responseData.getCode() == null) {
            handleError((Throwable) new Exception("Не удалось получить код проверки."));
            return true;
        } else if (responseData.getStatus() == Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
            return null;
        } else {
            handleError(new Exception(responseData.getDescription()));
            return true;
        }
    }

    private final void processResponseData(SmsVerificationPhoneResponse smsVerificationPhoneResponse) {
        if (checkResponse(smsVerificationPhoneResponse.getResponse()) == null) {
        }
    }

    private final void showPrivacy() {
        showProgressDialog();
        this.rocketApi.privacy().subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new SmsConfirmationActivity$showPrivacy$1(this));
    }

    private final void showNetworkErrorDialog(String str) {
        new Builder(this).setMessage(str).setPositiveButton(C0859R.string.repeat, new SmsConfirmationActivity$showNetworkErrorDialog$1(this)).setNegativeButton(17039360, SmsConfirmationActivity$showNetworkErrorDialog$2.INSTANCE).create().show();
    }

    public final void handleError(java.lang.Throwable r3) {
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
        r2 = this;
        r0 = "e";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r3, r0);
        r2.hideProgressDialog();
        r0 = r3.getMessage();
        r1 = r3 instanceof ru.rocketbank.core.network.exception.RocketResponseException;
        if (r1 == 0) goto L_0x001a;
    L_0x0010:
        r3 = (ru.rocketbank.core.network.exception.RocketResponseException) r3;
        r0 = r3.getDescription();
        if (r0 != 0) goto L_0x001a;
    L_0x0018:
        r0 = "";
    L_0x001a:
        r3 = ru.rocketbank.r2d2.fragments.AlertDialogFragment.create(r0);	 Catch:{ Throwable -> 0x0033 }
        r0 = new ru.rocketbank.r2d2.root.lead.SmsConfirmationActivity$handleError$1;	 Catch:{ Throwable -> 0x0033 }
        r0.<init>(r2);	 Catch:{ Throwable -> 0x0033 }
        r0 = (ru.rocketbank.r2d2.fragments.AlertDialogFragment.OnPositiveListener) r0;	 Catch:{ Throwable -> 0x0033 }
        r3 = r3.setOnPositiveListener(r0);	 Catch:{ Throwable -> 0x0033 }
        r0 = r2.getSupportFragmentManager();	 Catch:{ Throwable -> 0x0033 }
        r1 = "dialog";	 Catch:{ Throwable -> 0x0033 }
        r3.show(r0, r1);	 Catch:{ Throwable -> 0x0033 }
        return;
    L_0x0033:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.root.lead.SmsConfirmationActivity.handleError(java.lang.Throwable):void");
    }

    private final void verifyCode(String str, String str2) {
        this.verificationSubscription = RocketApplication.Companion.getInjector().getPhoneApi().verify(str2, str2, str).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new SmsConfirmationActivity$verifyCode$1(this));
    }

    private final void verifyPhone(String str, String str2) {
        getInjector().getPhoneApi().smsVerification(str2, str2, str).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new SmsConfirmationActivity$verifyPhone$1(this));
    }
}
