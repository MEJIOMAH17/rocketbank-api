package com.mikepenz.materialize.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import javax.inject.Provider;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Retrofit;
import ru.rocketbank.core.network.api.AccountApi;
import ru.rocketbank.r2d2.C0859R;

@SuppressLint({"InlinedApi"})
public final class UIUtils implements Provider<AccountApi> {
    private final KeyboardUtil module$3d1596a7;
    private final Provider<Retrofit> retrofitProvider;

    public static android.graphics.drawable.Drawable getCompatDrawable(android.content.Context r2, int r3) {
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
        r0 = android.os.Build.VERSION.SDK_INT;	 Catch:{ Exception -> 0x001c }
        r1 = 21;	 Catch:{ Exception -> 0x001c }
        if (r0 >= r1) goto L_0x000f;	 Catch:{ Exception -> 0x001c }
    L_0x0006:
        r2 = r2.getResources();	 Catch:{ Exception -> 0x001c }
        r2 = r2.getDrawable(r3);	 Catch:{ Exception -> 0x001c }
        goto L_0x001d;	 Catch:{ Exception -> 0x001c }
    L_0x000f:
        r0 = r2.getResources();	 Catch:{ Exception -> 0x001c }
        r2 = r2.getTheme();	 Catch:{ Exception -> 0x001c }
        r2 = r0.getDrawable(r3, r2);	 Catch:{ Exception -> 0x001c }
        goto L_0x001d;
    L_0x001c:
        r2 = 0;
    L_0x001d:
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mikepenz.materialize.util.UIUtils.getCompatDrawable(android.content.Context, int):android.graphics.drawable.Drawable");
    }

    public static int getThemeAttributeDimensionSize$1a54e363(Context context) {
        TypedArray typedArray = null;
        try {
            context = context.getTheme().obtainStyledAttributes(new int[]{C0859R.attr.actionBarSize});
            try {
                int dimensionPixelSize = context.getDimensionPixelSize(0, 0);
                if (context != null) {
                    context.recycle();
                }
                return dimensionPixelSize;
            } catch (Throwable th) {
                Throwable th2 = th;
                typedArray = context;
                context = th2;
                if (typedArray != null) {
                    typedArray.recycle();
                }
                throw context;
            }
        } catch (Throwable th3) {
            context = th3;
            if (typedArray != null) {
                typedArray.recycle();
            }
            throw context;
        }
    }

    public static int getStatusBarHeight(Context context, boolean z) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", AbstractSpiCall.ANDROID_CLIENT_TYPE);
        identifier = identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0;
        context = context.getResources().getDimensionPixelSize(C0859R.dimen.tool_bar_top_padding);
        if (context != null || z) {
            return identifier == 0 ? context : identifier;
        } else {
            return 0;
        }
    }

    public static void setFlag(Activity activity, int i, boolean z) {
        activity = activity.getWindow();
        i = activity.getAttributes();
        if (z) {
            i.flags |= true;
        } else {
            i.flags &= true;
        }
        activity.setAttributes(i);
    }

    public UIUtils(KeyboardUtil keyboardUtil, Provider<Retrofit> provider) {
        this.module$3d1596a7 = keyboardUtil;
        this.retrofitProvider = provider;
    }

    public final /* bridge */ /* synthetic */ Object get() {
        Retrofit retrofit = (Retrofit) this.retrofitProvider.get();
        Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
        Object create = retrofit.create(AccountApi.class);
        Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(AccountApi::class.java)");
        AccountApi accountApi = (AccountApi) create;
        String str = "Cannot return null from a non-@Nullable @Provides method";
        if (accountApi != null) {
            return accountApi;
        }
        throw new NullPointerException(str);
    }
}
