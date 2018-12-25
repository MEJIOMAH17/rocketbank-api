package ru.rocketbank.r2d2.helpers;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.os.Build.VERSION;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AlertDialog.Builder;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.widget.ActionMenuView;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.SearchView;
import android.support.v7.widget.Toolbar;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.util.ArrayList;
import ru.rocketbank.core.network.exception.RocketResponseException;
import ru.rocketbank.core.widgets.RocketSnackbar;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.manager.UIManager;
import rx.functions.Action0;
import rx.functions.Func1;

public final class UIHelper {
    private static int bottom;
    private static int right;
    private static int top;

    public static void setActivity(Activity activity) {
        UIManager uIManager = new UIManager(activity);
        bottom = uIManager.getBottom();
        right = uIManager.getRight();
        top = uIManager.getTop();
    }

    public static int getBottom() {
        return bottom;
    }

    public static int getRight() {
        return right;
    }

    public static int getTop() {
        return top;
    }

    public static void setPadding(boolean z, final View view, final boolean z2, final boolean z3, final boolean z4) {
        if (z) {
            view.post(new Runnable() {
                public final void run() {
                    UIHelper.set(true, view, z2, z3, z4);
                }
            });
        } else {
            set(false, view, z2, z3, z4);
        }
    }

    private static void set(boolean z, View view, boolean z2, boolean z3, boolean z4) {
        z2 = z2 ? bottom : false;
        z3 = z3 ? right : false;
        z4 = z4 ? top : false;
        if (z) {
            view.getLayoutParams().height = (view.getHeight() + z2) + z4;
        }
        view.setPadding(0, z4, z3, z2);
    }

    public static AlertDialog showPrivacyDialog(Context context, String str, final Action0 action0, final Action0 action02, final Action0 action03) {
        Builder builder = new Builder(context);
        View relativeLayout = new RelativeLayout(context);
        View webView = new WebView(context);
        relativeLayout.setBackgroundColor(-1);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        int dpToPx = Utils.dpToPx(context, 10);
        layoutParams.setMargins(dpToPx, dpToPx, dpToPx, 0);
        webView.setLayoutParams(layoutParams);
        relativeLayout.addView(webView);
        builder.setView(relativeLayout);
        builder.setNegativeButton(C0859R.string.disagree, new OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                if (action03 != null) {
                    action03.call();
                }
            }
        });
        builder.setPositiveButton(C0859R.string.agree, new OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                if (action02 != null) {
                    action02.call();
                }
            }
        });
        webView.setWebViewClient(new WebViewClient() {
            public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
                webView.loadUrl(str);
                return true;
            }

            public final void onPageFinished(WebView webView, String str) {
                if (action0 != null) {
                    action0.call();
                }
            }
        });
        webView.loadUrl(str);
        str = builder.show();
        str.getButton(-1).setTextColor(ContextCompat.getColor(context, C0859R.color.orange_variant_2));
        str.getButton(-2).setTextColor(ContextCompat.getColor(context, C0859R.color.gray60));
        return str;
    }

    public static boolean supportsViewElevation() {
        return VERSION.SDK_INT >= 21;
    }

    public static void colorizeToolbar(Toolbar toolbar, final int i, Activity activity) {
        final ColorFilter porterDuffColorFilter = new PorterDuffColorFilter(i, Mode.MULTIPLY);
        for (int i2 = 0; i2 < toolbar.getChildCount(); i2++) {
            View childAt = toolbar.getChildAt(i2);
            if (childAt instanceof ImageButton) {
                ((ImageButton) childAt).getDrawable().setColorFilter(porterDuffColorFilter);
            }
            if (childAt instanceof ActionMenuView) {
                int i3 = 0;
                while (true) {
                    ActionMenuView actionMenuView = (ActionMenuView) childAt;
                    if (i3 >= actionMenuView.getChildCount()) {
                        break;
                    }
                    final View childAt2 = actionMenuView.getChildAt(i3);
                    if (childAt2 instanceof ActionMenuItemView) {
                        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) childAt2;
                        int length = actionMenuItemView.getCompoundDrawables().length;
                        for (int i4 = 0; i4 < length; i4++) {
                            if (actionMenuItemView.getCompoundDrawables()[i4] != null) {
                                childAt2.post(new Runnable() {
                                    public final void run() {
                                        ((ActionMenuItemView) childAt2).getCompoundDrawables()[i4].setColorFilter(porterDuffColorFilter);
                                    }
                                });
                            }
                        }
                    }
                    if (childAt2 instanceof SearchView) {
                        childAt2.post(new Runnable() {
                            public final void run() {
                                UIHelper.recursiveColorize((SearchView) childAt2, i, porterDuffColorFilter);
                            }
                        });
                    }
                    i3++;
                }
            }
        }
        toolbar.setTitleTextColor(i);
        toolbar.setSubtitleTextColor(i);
        setOverflowButtonColor(activity, porterDuffColorFilter);
    }

    private static void recursiveColorize(android.view.ViewGroup r3, int r4, android.graphics.PorterDuffColorFilter r5) {
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
        r0 = 0;
    L_0x0001:
        r1 = r3.getChildCount();
        if (r0 >= r1) goto L_0x0047;
    L_0x0007:
        r1 = r3.getChildAt(r0);	 Catch:{ Throwable -> 0x0044 }
        r2 = r1 instanceof android.view.ViewGroup;	 Catch:{ Throwable -> 0x0044 }
        if (r2 == 0) goto L_0x0015;	 Catch:{ Throwable -> 0x0044 }
    L_0x000f:
        r1 = (android.view.ViewGroup) r1;	 Catch:{ Throwable -> 0x0044 }
        recursiveColorize(r1, r4, r5);	 Catch:{ Throwable -> 0x0044 }
        goto L_0x0044;	 Catch:{ Throwable -> 0x0044 }
    L_0x0015:
        r2 = r1 instanceof android.widget.ImageButton;	 Catch:{ Throwable -> 0x0044 }
        if (r2 == 0) goto L_0x0023;	 Catch:{ Throwable -> 0x0044 }
    L_0x0019:
        r1 = (android.widget.ImageButton) r1;	 Catch:{ Throwable -> 0x0044 }
        r1 = r1.getDrawable();	 Catch:{ Throwable -> 0x0044 }
        r1.setColorFilter(r5);	 Catch:{ Throwable -> 0x0044 }
        goto L_0x0044;	 Catch:{ Throwable -> 0x0044 }
    L_0x0023:
        r2 = r1 instanceof android.widget.ImageView;	 Catch:{ Throwable -> 0x0044 }
        if (r2 == 0) goto L_0x0031;	 Catch:{ Throwable -> 0x0044 }
    L_0x0027:
        r1 = (android.widget.ImageView) r1;	 Catch:{ Throwable -> 0x0044 }
        r1 = r1.getDrawable();	 Catch:{ Throwable -> 0x0044 }
        r1.setColorFilter(r5);	 Catch:{ Throwable -> 0x0044 }
        goto L_0x0044;	 Catch:{ Throwable -> 0x0044 }
    L_0x0031:
        r2 = r1 instanceof android.widget.TextView;	 Catch:{ Throwable -> 0x0044 }
        if (r2 == 0) goto L_0x0044;	 Catch:{ Throwable -> 0x0044 }
    L_0x0035:
        r2 = r1;	 Catch:{ Throwable -> 0x0044 }
        r2 = (android.widget.TextView) r2;	 Catch:{ Throwable -> 0x0044 }
        r2.setTextColor(r4);	 Catch:{ Throwable -> 0x0044 }
        r1 = r1.getBackground();	 Catch:{ Throwable -> 0x0044 }
        if (r1 == 0) goto L_0x0044;	 Catch:{ Throwable -> 0x0044 }
    L_0x0041:
        r1.setColorFilter(r5);	 Catch:{ Throwable -> 0x0044 }
    L_0x0044:
        r0 = r0 + 1;
        goto L_0x0001;
    L_0x0047:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.helpers.UIHelper.recursiveColorize(android.view.ViewGroup, int, android.graphics.PorterDuffColorFilter):void");
    }

    private static void setOverflowButtonColor(Activity activity, final PorterDuffColorFilter porterDuffColorFilter) {
        if (activity != null) {
            final String string = activity.getString(C0859R.string.abc_action_menu_overflow_description);
            final ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
            viewGroup.getViewTreeObserver().addOnGlobalLayoutListener(new OnGlobalLayoutListener() {
                public final void onGlobalLayout() {
                    ArrayList arrayList = new ArrayList();
                    viewGroup.findViewsWithText(arrayList, string, 2);
                    if (!arrayList.isEmpty()) {
                        ((ImageView) arrayList.get(0)).setColorFilter(porterDuffColorFilter);
                        UIHelper.removeOnGlobalLayoutListener(viewGroup, this);
                    }
                }
            });
        }
    }

    private static void removeOnGlobalLayoutListener(View view, OnGlobalLayoutListener onGlobalLayoutListener) {
        if (VERSION.SDK_INT < 16) {
            view.getViewTreeObserver().removeGlobalOnLayoutListener(onGlobalLayoutListener);
        } else {
            view.getViewTreeObserver().removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    public static void showSnack(View view, int i) {
        if (view != null) {
            makeSnack(view, i).show();
        }
    }

    public static void showSnack(View view, String str) {
        if (view != null) {
            makeSnack(view, str).show();
        }
    }

    public static RocketSnackbar makeSnack(View view, String str) {
        return makeSnack(view, str, -1);
    }

    public static RocketSnackbar makeSnack(View view, String str, int i) {
        return RocketSnackbar.make(view, str, i).setTextColor(ContextCompat.getColor(view.getContext(), C0859R.color.white));
    }

    public static RocketSnackbar makeSnack(View view, int i) {
        return makeSnack(view, i, -1);
    }

    public static RocketSnackbar makeSnack(View view, int i, int i2) {
        return RocketSnackbar.make(view, i, i2).setTextColor(ContextCompat.getColor(view.getContext(), C0859R.color.white));
    }

    public static RocketSnackbar showSnackWithError(View view, Throwable th) {
        return showSnackWithError(view, th, -2);
    }

    public static RocketSnackbar showSnackWithError(View view, Throwable th, int i) {
        view = makeSnackWithError(view, th, i);
        view.show();
        return view;
    }

    public static RocketSnackbar showSnackWithError(View view, Throwable th, int i, View.OnClickListener onClickListener) {
        view = makeSnackWithError(view, th, i, onClickListener, -2);
        view.show();
        return view;
    }

    public static RocketSnackbar makeSnackWithError(View view, Throwable th, int i) {
        return makeSnackWithError(view, th, 0, null, i);
    }

    public static RocketSnackbar makeSnackWithError(View view, Throwable th, int i, View.OnClickListener onClickListener, int i2) {
        view = makeSnack(view, getErrorMessage(view.getContext(), th), i2);
        if (onClickListener != null) {
            view.setAction(i, onClickListener);
        }
        return view;
    }

    public static String getErrorMessage(Context context, Throwable th) {
        if (th instanceof RocketResponseException) {
            RocketResponseException rocketResponseException = (RocketResponseException) th;
            if (!rocketResponseException.isNetworkError()) {
                th = rocketResponseException.getGenericRequestResponseData();
                if (!(th == null || th.getResponse() == null || !th.getResponse().getShowIt())) {
                    return th.getResponse().getDescription();
                }
            }
        }
        return context.getString(C0859R.string.error_occur);
    }

    public static void addPadding(int i, View view, Func1<Integer, Boolean> func1, Func1<Integer, Boolean> func12) {
        int applyDimension = (int) TypedValue.applyDimension(1, 10.0f, view.getContext().getResources().getDisplayMetrics());
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        layoutParams.height = (int) TypedValue.applyDimension(1, 60.0f, view.getContext().getResources().getDisplayMetrics());
        view.setPadding(0, 0, 0, 0);
        if (((Boolean) func1.call(Integer.valueOf(i))).booleanValue() != null) {
            view.setPadding(0, applyDimension, 0, 0);
            layoutParams.height += applyDimension;
        }
        if (((Boolean) func12.call(Integer.valueOf(i))).booleanValue() != 0) {
            view.setPadding(0, view.getPaddingTop(), 0, applyDimension);
            layoutParams.height += applyDimension;
        }
    }

    public static void showAlertDialog(Context context, String str, int i, Runnable runnable, Runnable runnable2) {
        showAlertDialog(context, str, context.getString(i), runnable, runnable2);
    }

    public static void showAlertDialog(Context context, String str) {
        Builder builder = new Builder(context);
        builder.setMessage(str);
        builder.setPositiveButton(C0859R.string.ok, null);
        str = builder.create();
        str.show();
        str.getButton(-1).setTextColor(ContextCompat.getColor(context, C0859R.color.orange_variant_2));
    }

    public static void showAlertDialog(Context context, String str, String str2, final Runnable runnable, final Runnable runnable2) {
        Builder builder = new Builder(context);
        builder.setMessage(str).setPositiveButton(str2, new OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                runnable.run();
            }
        }).setNegativeButton(17039360, new OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
        str = builder.create();
        str.show();
        str.getButton(-1).setTextColor(ContextCompat.getColor(context, C0859R.color.orange_variant_2));
        str.getButton(-2).setTextColor(ContextCompat.getColor(context, C0859R.color.gray60));
    }

    public static void goToHome(Activity activity) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        intent.setFlags(268435456);
        activity.startActivity(intent);
    }

    public static int getNavBarHeight(Context context) {
        context = context.getResources();
        int identifier = context.getIdentifier("navigation_bar_height", "dimen", AbstractSpiCall.ANDROID_CLIENT_TYPE);
        return identifier > 0 ? context.getDimensionPixelSize(identifier) : null;
    }
}
