package ru.rocketbank.r2d2.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ru.rocketbank.core.manager.DataManager;
import ru.rocketbank.core.manager.RocketShortcutManager;
import ru.rocketbank.core.model.RegistrationStatus;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.rocketkitchen.RocketCafeActivity;
import ru.rocketbank.r2d2.manager.SecurityManager;
import ru.rocketbank.r2d2.registration.RegistrationActivity;
import ru.rocketbank.r2d2.root.lead.LandingActivity;

/* compiled from: StartupActivity.kt */
public final class StartupActivity extends AbstractActivity {
    public static final Companion Companion = new Companion();
    private static final int FORGET = 1;
    private static final int REFILL_KITCHEN = 3;
    private static final int RESET_SHORT_CODE = 2;
    private HashMap _$_findViewCache;
    public DataManager dataManager;
    public RocketShortcutManager rocketShortcutManager;

    /* compiled from: StartupActivity.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: StartupActivity.kt */
    private static final class Starter {
        private final String data;
        private final int resetType;
        private final String token;

        public Starter(int i, String str, String str2) {
            Intrinsics.checkParameterIsNotNull(str, "token");
            this.resetType = i;
            this.token = str;
            this.data = str2;
        }

        public /* synthetic */ Starter(int i, String str, String str2, int i2, Ref ref) {
            if ((i2 & 4) != 0) {
                str2 = null;
            }
            this(i, str, str2);
        }

        public final String getData() {
            return this.data;
        }

        public final int getResetType() {
            return this.resetType;
        }

        public final String getToken() {
            return this.token;
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

    public final DataManager getDataManager() {
        DataManager dataManager = this.dataManager;
        if (dataManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataManager");
        }
        return dataManager;
    }

    public final void setDataManager(DataManager dataManager) {
        Intrinsics.checkParameterIsNotNull(dataManager, "<set-?>");
        this.dataManager = dataManager;
    }

    public final RocketShortcutManager getRocketShortcutManager() {
        RocketShortcutManager rocketShortcutManager = this.rocketShortcutManager;
        if (rocketShortcutManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rocketShortcutManager");
        }
        return rocketShortcutManager;
    }

    public final void setRocketShortcutManager(RocketShortcutManager rocketShortcutManager) {
        Intrinsics.checkParameterIsNotNull(rocketShortcutManager, "<set-?>");
        this.rocketShortcutManager = rocketShortcutManager;
    }

    protected final void onCreate(Bundle bundle) {
        this.dataManager = RocketApplication.Companion.getInjector().getDataManager();
        this.rocketShortcutManager = RocketApplication.Companion.getInjector().getRocketShortcutManager();
        super.onCreate(bundle);
        if (getAuthorization().isAuthorized() == null) {
            SecurityManager.Companion.getInstance().onStart();
        }
        bundle = getAuthorization().getStatus();
        if (bundle != null) {
            RocketShortcutManager rocketShortcutManager = this.rocketShortcutManager;
            if (rocketShortcutManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rocketShortcutManager");
            }
            rocketShortcutManager.createSupportShortcut();
            Starter codeResetToken = getCodeResetToken();
            if (codeResetToken != null) {
                bundle = this.dataManager;
                if (bundle == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("dataManager");
                }
                bundle.isResetCodeToken = true;
                this.authorization.setToken(codeResetToken.getToken());
                bundle = codeResetToken.getResetType();
                if (bundle == FORGET) {
                    ChangeCodeActivity.startCode(this, null, false, true);
                } else if (bundle == RESET_SHORT_CODE) {
                    ChangeCodeActivity.startCode(this, null, true, true, null, codeResetToken.getToken());
                } else if (bundle == REFILL_KITCHEN) {
                    bundle = RocketCafeActivity.Companion;
                    Context context = this;
                    String data = codeResetToken.getData();
                    if (data == null) {
                        Intrinsics.throwNpe();
                    }
                    bundle.start(context, Long.parseLong(data));
                }
            } else {
                if (Intrinsics.areEqual(bundle, RegistrationStatus.LeadStatus) != null) {
                    bundle = RegistrationActivity.class;
                } else {
                    bundle = this.rocketShortcutManager;
                    if (bundle == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("rocketShortcutManager");
                    }
                    bundle.createRefillShortcut();
                    bundle = this.rocketShortcutManager;
                    if (bundle == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("rocketShortcutManager");
                    }
                    bundle.createPhoneShortcut();
                    bundle = MainActivity.class;
                }
                Intent intent = new Intent(this, bundle);
                bundle = RocketShortcutManager.KEY_ACTION;
                Intent intent2 = getIntent();
                Intrinsics.checkExpressionValueIsNotNull(intent2, "intent");
                intent.putExtra(bundle, intent2.getAction());
                bundle = RocketShortcutManager.KEY_EXTRAS;
                intent2 = getIntent();
                Intrinsics.checkExpressionValueIsNotNull(intent2, "intent");
                intent.putExtra(bundle, intent2.getExtras());
                startActivity(intent);
            }
        } else {
            startActivity(new Intent(this, LandingActivity.class));
        }
        finish();
    }

    private final ru.rocketbank.r2d2.activities.StartupActivity.Starter getCodeResetToken() {
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
        r8 = this;
        r0 = r8.getIntent();	 Catch:{ Throwable -> 0x00a0 }
        r1 = "intent";	 Catch:{ Throwable -> 0x00a0 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1);	 Catch:{ Throwable -> 0x00a0 }
        r0 = r0.getData();	 Catch:{ Throwable -> 0x00a0 }
        r1 = "uri";	 Catch:{ Throwable -> 0x00a0 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1);	 Catch:{ Throwable -> 0x00a0 }
        r1 = r0.getHost();	 Catch:{ Throwable -> 0x00a0 }
        if (r1 != 0) goto L_0x001a;	 Catch:{ Throwable -> 0x00a0 }
    L_0x0018:
        goto L_0x00a0;	 Catch:{ Throwable -> 0x00a0 }
    L_0x001a:
        r2 = r1.hashCode();	 Catch:{ Throwable -> 0x00a0 }
        r3 = -1853525824; // 0xffffffff918570c0 float:-2.1053188E-28 double:NaN;	 Catch:{ Throwable -> 0x00a0 }
        if (r2 == r3) goto L_0x0083;	 Catch:{ Throwable -> 0x00a0 }
    L_0x0023:
        r3 = -1268784349; // 0xffffffffb45fe323 float:-2.0851125E-7 double:NaN;	 Catch:{ Throwable -> 0x00a0 }
        if (r2 == r3) goto L_0x0066;	 Catch:{ Throwable -> 0x00a0 }
    L_0x0028:
        r3 = -1200398879; // 0xffffffffb8735de1 float:-5.8023146E-5 double:NaN;	 Catch:{ Throwable -> 0x00a0 }
        if (r2 == r3) goto L_0x0049;	 Catch:{ Throwable -> 0x00a0 }
    L_0x002d:
        r3 = -705112156; // 0xffffffffd5f8d7a4 float:-3.42006316E13 double:NaN;	 Catch:{ Throwable -> 0x00a0 }
        if (r2 == r3) goto L_0x0033;	 Catch:{ Throwable -> 0x00a0 }
    L_0x0032:
        goto L_0x00a0;	 Catch:{ Throwable -> 0x00a0 }
    L_0x0033:
        r2 = "kitchen";	 Catch:{ Throwable -> 0x00a0 }
        r1 = r1.equals(r2);	 Catch:{ Throwable -> 0x00a0 }
        if (r1 == 0) goto L_0x00a0;	 Catch:{ Throwable -> 0x00a0 }
    L_0x003b:
        r1 = new ru.rocketbank.r2d2.activities.StartupActivity$Starter;	 Catch:{ Throwable -> 0x00a0 }
        r2 = REFILL_KITCHEN;	 Catch:{ Throwable -> 0x00a0 }
        r0 = r0.getLastPathSegment();	 Catch:{ Throwable -> 0x00a0 }
        r3 = "";	 Catch:{ Throwable -> 0x00a0 }
        r1.<init>(r2, r3, r0);	 Catch:{ Throwable -> 0x00a0 }
        return r1;	 Catch:{ Throwable -> 0x00a0 }
    L_0x0049:
        r2 = "rocketbank.ru";	 Catch:{ Throwable -> 0x00a0 }
        r1 = r1.equals(r2);	 Catch:{ Throwable -> 0x00a0 }
        if (r1 == 0) goto L_0x00a0;	 Catch:{ Throwable -> 0x00a0 }
    L_0x0051:
        r1 = new ru.rocketbank.r2d2.activities.StartupActivity$Starter;	 Catch:{ Throwable -> 0x00a0 }
        r3 = RESET_SHORT_CODE;	 Catch:{ Throwable -> 0x00a0 }
        r4 = r0.getLastPathSegment();	 Catch:{ Throwable -> 0x00a0 }
        r0 = "uri.lastPathSegment";	 Catch:{ Throwable -> 0x00a0 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r4, r0);	 Catch:{ Throwable -> 0x00a0 }
        r5 = 0;	 Catch:{ Throwable -> 0x00a0 }
        r6 = 4;	 Catch:{ Throwable -> 0x00a0 }
        r7 = 0;	 Catch:{ Throwable -> 0x00a0 }
        r2 = r1;	 Catch:{ Throwable -> 0x00a0 }
        r2.<init>(r3, r4, r5, r6, r7);	 Catch:{ Throwable -> 0x00a0 }
        return r1;	 Catch:{ Throwable -> 0x00a0 }
    L_0x0066:
        r2 = "forgot";	 Catch:{ Throwable -> 0x00a0 }
        r1 = r1.equals(r2);	 Catch:{ Throwable -> 0x00a0 }
        if (r1 == 0) goto L_0x00a0;	 Catch:{ Throwable -> 0x00a0 }
    L_0x006e:
        r1 = new ru.rocketbank.r2d2.activities.StartupActivity$Starter;	 Catch:{ Throwable -> 0x00a0 }
        r3 = FORGET;	 Catch:{ Throwable -> 0x00a0 }
        r4 = r0.getLastPathSegment();	 Catch:{ Throwable -> 0x00a0 }
        r0 = "uri.lastPathSegment";	 Catch:{ Throwable -> 0x00a0 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r4, r0);	 Catch:{ Throwable -> 0x00a0 }
        r5 = 0;	 Catch:{ Throwable -> 0x00a0 }
        r6 = 4;	 Catch:{ Throwable -> 0x00a0 }
        r7 = 0;	 Catch:{ Throwable -> 0x00a0 }
        r2 = r1;	 Catch:{ Throwable -> 0x00a0 }
        r2.<init>(r3, r4, r5, r6, r7);	 Catch:{ Throwable -> 0x00a0 }
        return r1;	 Catch:{ Throwable -> 0x00a0 }
    L_0x0083:
        r2 = "reset_short_code";	 Catch:{ Throwable -> 0x00a0 }
        r1 = r1.equals(r2);	 Catch:{ Throwable -> 0x00a0 }
        if (r1 == 0) goto L_0x00a0;	 Catch:{ Throwable -> 0x00a0 }
    L_0x008b:
        r1 = new ru.rocketbank.r2d2.activities.StartupActivity$Starter;	 Catch:{ Throwable -> 0x00a0 }
        r3 = RESET_SHORT_CODE;	 Catch:{ Throwable -> 0x00a0 }
        r4 = r0.getLastPathSegment();	 Catch:{ Throwable -> 0x00a0 }
        r0 = "uri.lastPathSegment";	 Catch:{ Throwable -> 0x00a0 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r4, r0);	 Catch:{ Throwable -> 0x00a0 }
        r5 = 0;	 Catch:{ Throwable -> 0x00a0 }
        r6 = 4;	 Catch:{ Throwable -> 0x00a0 }
        r7 = 0;	 Catch:{ Throwable -> 0x00a0 }
        r2 = r1;	 Catch:{ Throwable -> 0x00a0 }
        r2.<init>(r3, r4, r5, r6, r7);	 Catch:{ Throwable -> 0x00a0 }
        return r1;
    L_0x00a0:
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.activities.StartupActivity.getCodeResetToken():ru.rocketbank.r2d2.activities.StartupActivity$Starter");
    }
}
