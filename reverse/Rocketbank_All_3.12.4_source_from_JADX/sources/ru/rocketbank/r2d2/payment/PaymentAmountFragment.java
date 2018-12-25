package ru.rocketbank.r2d2.payment;

import android.content.Intent;
import android.os.Build.VERSION;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.PopupMenu;
import android.support.v7.widget.PopupMenu.OnMenuItemClickListener;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.facebook.appevents.AppEventsConstants;
import com.jakewharton.rxbinding.widget.RxTextView;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.facade.Account;
import ru.rocketbank.core.model.provider.Provider;
import ru.rocketbank.core.model.transfers.Template;
import ru.rocketbank.core.network.api.ProvidersApi;
import ru.rocketbank.core.network.model.PaymentRequest;
import ru.rocketbank.core.utils.rx.TextObserverToDouble;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.MainActivity;
import ru.rocketbank.r2d2.widget.AccountWidget;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;

/* compiled from: PaymentAmountFragment.kt */
public final class PaymentAmountFragment extends PaymentProviderBaseFragment implements SharedTransitionListener {
    public static final Companion Companion = new Companion();
    private static final String KEY_TOKEN = "KEY_TOKEN";
    private static final int REQUEST_CODE = 999;
    private static final int STATE_COMMISSION_LOADED = 0;
    private static final int STATE_COMMISSION_LOADING = 1;
    private HashMap _$_findViewCache;
    private Account accountFrom;
    private Button buttonNext;
    private final Action1<Double> changeAmountSubscriber = new PaymentAmountFragment$changeAmountSubscriber$1(this);
    private TextView comission1TextView;
    private TextView comissionTextView;
    private Subscription commissionSubscription;
    private CropCircleTransformation cropCircleTransformation;
    public CurrencyManager currencyManager;
    private RocketEditText edittextAmount;
    private boolean hasCommission;
    private ImageView imageViewIcon;
    private Provider provider;
    public ProvidersApi providersApi;
    private Subscription selectAccountSubscription;
    private AccountWidget sourceViewPager;
    private Template template;
    private Subscription textSubscriptionAmount;
    private RocketTextView textViewName;
    public Toolbar toolbar;
    private ViewSwitcher viewSwitcher;

    /* compiled from: PaymentAmountFragment.kt */
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

    public final /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final ProvidersApi getProvidersApi() {
        ProvidersApi providersApi = this.providersApi;
        if (providersApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("providersApi");
        }
        return providersApi;
    }

    public final void setProvidersApi(ProvidersApi providersApi) {
        Intrinsics.checkParameterIsNotNull(providersApi, "<set-?>");
        this.providersApi = providersApi;
    }

    public final CurrencyManager getCurrencyManager() {
        CurrencyManager currencyManager = this.currencyManager;
        if (currencyManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currencyManager");
        }
        return currencyManager;
    }

    public final void setCurrencyManager(CurrencyManager currencyManager) {
        Intrinsics.checkParameterIsNotNull(currencyManager, "<set-?>");
        this.currencyManager = currencyManager;
    }

    public final Toolbar getToolbar() {
        Toolbar toolbar = this.toolbar;
        if (toolbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        return toolbar;
    }

    public final void setToolbar(Toolbar toolbar) {
        Intrinsics.checkParameterIsNotNull(toolbar, "<set-?>");
        this.toolbar = toolbar;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.view.View onCreateView(android.view.LayoutInflater r10, android.view.ViewGroup r11, android.os.Bundle r12) {
        /*
        r9 = this;
        r0 = "inflater";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r10, r0);
        r0 = 0;
        r1 = 2131493103; // 0x7f0c00ef float:1.8609677E38 double:1.0530975165E-314;
        r10 = r10.inflate(r1, r11, r0);
        r11 = 2131297240; // 0x7f0903d8 float:1.821242E38 double:1.0530007474E-314;
        r11 = r10.findViewById(r11);
        if (r11 != 0) goto L_0x001e;
    L_0x0016:
        r10 = new kotlin.TypeCastException;
        r11 = "null cannot be cast to non-null type android.support.v7.widget.Toolbar";
        r10.<init>(r11);
        throw r10;
    L_0x001e:
        r11 = (android.support.v7.widget.Toolbar) r11;
        r9.toolbar = r11;
        r11 = new jp.wasabeef.glide.transformations.CropCircleTransformation;
        r1 = r9.getContext();
        r11.<init>(r1);
        r9.cropCircleTransformation = r11;
        r11 = r9.getInjector();
        r11 = r11.getProvidersApi();
        r9.providersApi = r11;
        r11 = r9.getInjector();
        r11 = r11.getCurrencyManager();
        r9.currencyManager = r11;
        r11 = r9.toolbar;
        if (r11 != 0) goto L_0x004a;
    L_0x0045:
        r1 = "toolbar";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1);
    L_0x004a:
        r9.setToolbarActionBar(r11);
        r11 = 2131296498; // 0x7f0900f2 float:1.8210914E38 double:1.053000381E-314;
        r11 = r10.findViewById(r11);
        if (r11 != 0) goto L_0x005e;
    L_0x0056:
        r10 = new kotlin.TypeCastException;
        r11 = "null cannot be cast to non-null type android.widget.TextView";
        r10.<init>(r11);
        throw r10;
    L_0x005e:
        r11 = (android.widget.TextView) r11;
        r9.comissionTextView = r11;
        r11 = 2131296497; // 0x7f0900f1 float:1.8210912E38 double:1.0530003803E-314;
        r11 = r10.findViewById(r11);
        if (r11 != 0) goto L_0x0073;
    L_0x006b:
        r10 = new kotlin.TypeCastException;
        r11 = "null cannot be cast to non-null type android.widget.TextView";
        r10.<init>(r11);
        throw r10;
    L_0x0073:
        r11 = (android.widget.TextView) r11;
        r9.comission1TextView = r11;
        r11 = 2131296937; // 0x7f0902a9 float:1.8211805E38 double:1.0530005977E-314;
        r11 = r10.findViewById(r11);
        if (r11 != 0) goto L_0x0088;
    L_0x0080:
        r10 = new kotlin.TypeCastException;
        r11 = "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketEditText";
        r10.<init>(r11);
        throw r10;
    L_0x0088:
        r11 = (ru.rocketbank.core.widgets.RocketEditText) r11;
        r9.edittextAmount = r11;
        r11 = 2131297292; // 0x7f09040c float:1.8212525E38 double:1.053000773E-314;
        r11 = r10.findViewById(r11);
        if (r11 != 0) goto L_0x009d;
    L_0x0095:
        r10 = new kotlin.TypeCastException;
        r11 = "null cannot be cast to non-null type android.widget.ViewSwitcher";
        r10.<init>(r11);
        throw r10;
    L_0x009d:
        r11 = (android.widget.ViewSwitcher) r11;
        r9.viewSwitcher = r11;
        r11 = r9.getPaymentProvider();
        r9.provider = r11;
        r11 = r9.getArguments();
        if (r11 != 0) goto L_0x00b0;
    L_0x00ad:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x00b0:
        r1 = "template";
        r11 = r11.getSerializable(r1);
        r11 = (ru.rocketbank.core.model.transfers.Template) r11;
        r9.template = r11;
        r11 = "rootView";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r10, r11);
        r11 = ru.rocketbank.r2d2.C0859R.id.sourceViewPager;
        r11 = r10.findViewById(r11);
        r11 = (ru.rocketbank.r2d2.widget.AccountWidget) r11;
        r1 = "rootView.sourceViewPager";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r11, r1);
        r9.sourceViewPager = r11;
        r11 = 2131296723; // 0x7f0901d3 float:1.821137E38 double:1.053000492E-314;
        r11 = r10.findViewById(r11);
        if (r11 != 0) goto L_0x00df;
    L_0x00d7:
        r10 = new kotlin.TypeCastException;
        r11 = "null cannot be cast to non-null type android.widget.ImageView";
        r10.<init>(r11);
        throw r10;
    L_0x00df:
        r11 = (android.widget.ImageView) r11;
        r1 = 2131297193; // 0x7f0903a9 float:1.8212324E38 double:1.053000724E-314;
        r1 = r10.findViewById(r1);
        if (r1 != 0) goto L_0x00f2;
    L_0x00ea:
        r10 = new kotlin.TypeCastException;
        r11 = "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView";
        r10.<init>(r11);
        throw r10;
    L_0x00f2:
        r1 = (ru.rocketbank.core.widgets.RocketTextView) r1;
        r2 = 2131297178; // 0x7f09039a float:1.8212294E38 double:1.0530007167E-314;
        r2 = r10.findViewById(r2);
        if (r2 != 0) goto L_0x0105;
    L_0x00fd:
        r10 = new kotlin.TypeCastException;
        r11 = "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView";
        r10.<init>(r11);
        throw r10;
    L_0x0105:
        r2 = (ru.rocketbank.core.widgets.RocketTextView) r2;
        r3 = r9.provider;
        if (r3 != 0) goto L_0x010e;
    L_0x010b:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x010e:
        r3 = r3.getIcon();
        r4 = r9.cropCircleTransformation;
        if (r4 != 0) goto L_0x0119;
    L_0x0116:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x0119:
        ru.rocketbank.core.utils.ImageHelper.loadRound(r11, r3, r4);
        r11 = r9.template;
        if (r11 == 0) goto L_0x0127;
    L_0x0120:
        r11 = r11.title;
        if (r11 == 0) goto L_0x0127;
    L_0x0124:
        r11 = (java.lang.CharSequence) r11;
        goto L_0x0133;
    L_0x0127:
        r11 = r9.provider;
        if (r11 != 0) goto L_0x012e;
    L_0x012b:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x012e:
        r11 = r11.getName();
        goto L_0x0124;
    L_0x0133:
        r1.setText(r11);
        r11 = r9.provider;
        if (r11 != 0) goto L_0x013d;
    L_0x013a:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x013d:
        r11 = r11.getName();
        r11 = (java.lang.CharSequence) r11;
        r2.setText(r11);
        r11 = r9.template;
        if (r11 == 0) goto L_0x0167;
    L_0x014a:
        r11 = r9.template;
        r1 = 0;
        if (r11 == 0) goto L_0x0152;
    L_0x014f:
        r11 = r11.title;
        goto L_0x0153;
    L_0x0152:
        r11 = r1;
    L_0x0153:
        r3 = r9.provider;
        if (r3 != 0) goto L_0x015a;
    L_0x0157:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x015a:
        r3 = r3.getName();
        r4 = 2;
        r11 = kotlin.text.StringsKt.equals$default(r11, r3, r0, r4, r1);
        if (r11 != 0) goto L_0x0167;
    L_0x0165:
        r11 = r0;
        goto L_0x0169;
    L_0x0167:
        r11 = 8;
    L_0x0169:
        r2.setVisibility(r11);
        r11 = r9.edittextAmount;
        if (r11 == 0) goto L_0x017e;
    L_0x0170:
        r1 = new ru.rocketbank.r2d2.payment.PaymentAmountFragment$onCreateView$1;
        r2 = r9.edittextAmount;
        r2 = (android.widget.EditText) r2;
        r1.<init>(r9, r2);
        r1 = (android.text.TextWatcher) r1;
        r11.addTextChangedListener(r1);
    L_0x017e:
        if (r12 != 0) goto L_0x01d1;
    L_0x0180:
        r11 = r9.template;
        if (r11 == 0) goto L_0x01be;
    L_0x0184:
        r11 = r9.template;
        if (r11 == 0) goto L_0x0191;
    L_0x0188:
        r11 = r11.amount;
        r1 = 0;
        r3 = (r11 > r1 ? 1 : (r11 == r1 ? 0 : -1));
        if (r3 != 0) goto L_0x0191;
    L_0x0190:
        goto L_0x01be;
    L_0x0191:
        r11 = r9.template;
        if (r11 == 0) goto L_0x019d;
    L_0x0195:
        r11 = r11.amount;
        r11 = java.lang.String.valueOf(r11);
        if (r11 != 0) goto L_0x019f;
    L_0x019d:
        r11 = "0";
    L_0x019f:
        if (r11 != 0) goto L_0x01a9;
    L_0x01a1:
        r10 = new kotlin.TypeCastException;
        r11 = "null cannot be cast to non-null type kotlin.CharSequence";
        r10.<init>(r11);
        throw r10;
    L_0x01a9:
        r12 = r11;
        r12 = (java.lang.CharSequence) r12;
        kotlin.text.StringsKt.trim(r12);
        r1 = r9.edittextAmount;
        if (r1 == 0) goto L_0x01d1;
    L_0x01b3:
        r1.setText(r12);
        r11 = r11.length();
        r1.setSelection(r11);
        goto L_0x01d1;
    L_0x01be:
        r11 = r9.edittextAmount;
        if (r11 == 0) goto L_0x01c9;
    L_0x01c2:
        r12 = "0";
        r12 = (java.lang.CharSequence) r12;
        r11.setText(r12);
    L_0x01c9:
        r11 = r9.edittextAmount;
        if (r11 == 0) goto L_0x01d1;
    L_0x01cd:
        r12 = 1;
        r11.setSelection(r12);
    L_0x01d1:
        r11 = new ru.rocketbank.core.network.model.PaymentRequest;
        r11.<init>();
        r12 = r9.template;
        if (r12 != 0) goto L_0x01dd;
    L_0x01da:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x01dd:
        r12 = r12.provider;
        r1 = "template!!.provider";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r12, r1);
        r12 = r12.getFields();
        r12 = (java.lang.Iterable) r12;
        r12 = r12.iterator();
    L_0x01ee:
        r1 = r12.hasNext();
        if (r1 == 0) goto L_0x0203;
    L_0x01f4:
        r1 = r12.next();
        r1 = (ru.rocketbank.core.model.transfers.Template.ProviderPayment.FieldPayment) r1;
        r2 = "it";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2);
        r11.put(r1);
        goto L_0x01ee;
    L_0x0203:
        r12 = 2131296394; // 0x7f09008a float:1.8210703E38 double:1.0530003294E-314;
        r12 = r10.findViewById(r12);
        if (r12 != 0) goto L_0x0214;
    L_0x020c:
        r10 = new kotlin.TypeCastException;
        r11 = "null cannot be cast to non-null type android.widget.Button";
        r10.<init>(r11);
        throw r10;
    L_0x0214:
        r12 = (android.widget.Button) r12;
        r9.buttonNext = r12;
        r12 = r9.buttonNext;
        if (r12 != 0) goto L_0x021f;
    L_0x021c:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x021f:
        r1 = 2131821332; // 0x7f110314 float:1.9275404E38 double:1.053259683E-314;
        r12.setText(r1);
        r12 = r9.buttonNext;
        if (r12 != 0) goto L_0x022c;
    L_0x0229:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x022c:
        r12.setEnabled(r0);
        r12 = ru.rocketbank.r2d2.C0859R.id.actions;
        r12 = r10.findViewById(r12);
        r12 = (android.widget.ImageView) r12;
        r1 = "rootView.actions";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r12, r1);
        r12.setVisibility(r0);
        r12 = ru.rocketbank.r2d2.C0859R.id.actions;
        r12 = r10.findViewById(r12);
        r12 = (android.widget.ImageView) r12;
        r0 = new ru.rocketbank.r2d2.payment.PaymentAmountFragment$onCreateView$4;
        r0.<init>(r9, r10);
        r0 = (android.view.View.OnClickListener) r0;
        r12.setOnClickListener(r0);
        r12 = r9.buttonNext;
        if (r12 != 0) goto L_0x0258;
    L_0x0255:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x0258:
        r0 = new ru.rocketbank.r2d2.payment.PaymentAmountFragment$onCreateView$5;
        r0.<init>(r9, r11);
        r0 = (android.view.View.OnClickListener) r0;
        r12.setOnClickListener(r0);
        r9.clearTransitionNames();
        r11 = ru.rocketbank.r2d2.C0859R.id.imageViewIcon;
        r11 = r10.findViewById(r11);
        r11 = (android.widget.ImageView) r11;
        r9.imageViewIcon = r11;
        r11 = ru.rocketbank.r2d2.C0859R.id.textViewName;
        r11 = r10.findViewById(r11);
        r11 = (ru.rocketbank.core.widgets.RocketTextView) r11;
        r9.textViewName = r11;
        r11 = r9.getLocalEventBus();
        r12 = new ru.rocketbank.r2d2.friends.SharedElementsReadyEvent;
        r0 = r9;
        r0 = (android.support.v4.app.Fragment) r0;
        r1 = r9.imageViewIcon;
        r1 = (android.view.View) r1;
        r2 = r9.textViewName;
        r2 = (android.view.View) r2;
        r12.<init>(r0, r1, r2);
        r11.post(r12);
        r3 = r9.sourceViewPager;
        if (r3 != 0) goto L_0x0299;
    L_0x0294:
        r11 = "sourceViewPager";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r11);
    L_0x0299:
        r4 = r9.getSupportFragmentManager();
        r5 = ru.rocketbank.r2d2.widget.AccountWidget.ROCKET_FILTER;
        r6 = 0;
        r7 = 4;
        r8 = 0;
        ru.rocketbank.r2d2.widget.AccountWidget.setup$default(r3, r4, r5, r6, r7, r8);
        r11 = r9.edittextAmount;
        if (r11 == 0) goto L_0x02ac;
    L_0x02a9:
        r11.clearFocus();
    L_0x02ac:
        return r10;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.payment.PaymentAmountFragment.onCreateView(android.view.LayoutInflater, android.view.ViewGroup, android.os.Bundle):android.view.View");
    }

    private final void onSelectAccount(Account account) {
        this.accountFrom = account;
        checkAmount();
    }

    private final void checkAmount() {
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
        r7 = this;
        r0 = r7.template;	 Catch:{ Exception -> 0x0147 }
        if (r0 != 0) goto L_0x0007;	 Catch:{ Exception -> 0x0147 }
    L_0x0004:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x0147 }
    L_0x0007:
        r0 = r0.amount;	 Catch:{ Exception -> 0x0147 }
        r2 = r7.accountFrom;	 Catch:{ Exception -> 0x0147 }
        r3 = 0;	 Catch:{ Exception -> 0x0147 }
        if (r2 == 0) goto L_0x0014;	 Catch:{ Exception -> 0x0147 }
    L_0x000f:
        r5 = r2.getBalance();	 Catch:{ Exception -> 0x0147 }
        goto L_0x0015;	 Catch:{ Exception -> 0x0147 }
    L_0x0014:
        r5 = r3;	 Catch:{ Exception -> 0x0147 }
    L_0x0015:
        r2 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1));	 Catch:{ Exception -> 0x0147 }
        r3 = 0;	 Catch:{ Exception -> 0x0147 }
        if (r2 < 0) goto L_0x0116;	 Catch:{ Exception -> 0x0147 }
    L_0x001a:
        r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1));	 Catch:{ Exception -> 0x0147 }
        if (r2 > 0) goto L_0x0116;	 Catch:{ Exception -> 0x0147 }
    L_0x001e:
        r2 = r7.provider;	 Catch:{ Exception -> 0x0147 }
        if (r2 != 0) goto L_0x0025;	 Catch:{ Exception -> 0x0147 }
    L_0x0022:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x0147 }
    L_0x0025:
        r2 = r2.getMin();	 Catch:{ Exception -> 0x0147 }
        r4 = 1;	 Catch:{ Exception -> 0x0147 }
        if (r2 == 0) goto L_0x0087;	 Catch:{ Exception -> 0x0147 }
    L_0x002c:
        r2 = r7.provider;	 Catch:{ Exception -> 0x0147 }
        if (r2 != 0) goto L_0x0033;	 Catch:{ Exception -> 0x0147 }
    L_0x0030:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x0147 }
    L_0x0033:
        r2 = r2.getMin();	 Catch:{ Exception -> 0x0147 }
        r5 = (double) r2;	 Catch:{ Exception -> 0x0147 }
        r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1));	 Catch:{ Exception -> 0x0147 }
        if (r2 >= 0) goto L_0x0087;	 Catch:{ Exception -> 0x0147 }
    L_0x003c:
        r0 = r7.comissionTextView;	 Catch:{ Exception -> 0x0147 }
        if (r0 != 0) goto L_0x0043;	 Catch:{ Exception -> 0x0147 }
    L_0x0040:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x0147 }
    L_0x0043:
        r1 = kotlin.jvm.internal.StringCompanionObject.INSTANCE;	 Catch:{ Exception -> 0x0147 }
        r1 = 2131820997; // 0x7f1101c5 float:1.9274725E38 double:1.0532595177E-314;	 Catch:{ Exception -> 0x0147 }
        r1 = r7.getString(r1);	 Catch:{ Exception -> 0x0147 }
        r2 = "getString(R.string.fragm…t_payment_amount_minimun)";	 Catch:{ Exception -> 0x0147 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2);	 Catch:{ Exception -> 0x0147 }
        r2 = new java.lang.Object[r4];	 Catch:{ Exception -> 0x0147 }
        r5 = r7.provider;	 Catch:{ Exception -> 0x0147 }
        if (r5 != 0) goto L_0x005a;	 Catch:{ Exception -> 0x0147 }
    L_0x0057:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x0147 }
    L_0x005a:
        r5 = r5.getMin();	 Catch:{ Exception -> 0x0147 }
        r5 = (float) r5;	 Catch:{ Exception -> 0x0147 }
        r5 = java.lang.Math.round(r5);	 Catch:{ Exception -> 0x0147 }
        r5 = java.lang.Integer.valueOf(r5);	 Catch:{ Exception -> 0x0147 }
        r2[r3] = r5;	 Catch:{ Exception -> 0x0147 }
        r2 = java.util.Arrays.copyOf(r2, r4);	 Catch:{ Exception -> 0x0147 }
        r1 = java.lang.String.format(r1, r2);	 Catch:{ Exception -> 0x0147 }
        r2 = "java.lang.String.format(format, *args)";	 Catch:{ Exception -> 0x0147 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2);	 Catch:{ Exception -> 0x0147 }
        r1 = (java.lang.CharSequence) r1;	 Catch:{ Exception -> 0x0147 }
        r0.setText(r1);	 Catch:{ Exception -> 0x0147 }
        r0 = r7.buttonNext;	 Catch:{ Exception -> 0x0147 }
        if (r0 != 0) goto L_0x0082;	 Catch:{ Exception -> 0x0147 }
    L_0x007f:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x0147 }
    L_0x0082:
        r0.setEnabled(r3);	 Catch:{ Exception -> 0x0147 }
        goto L_0x0106;	 Catch:{ Exception -> 0x0147 }
    L_0x0087:
        r2 = r7.provider;	 Catch:{ Exception -> 0x0147 }
        if (r2 != 0) goto L_0x008e;	 Catch:{ Exception -> 0x0147 }
    L_0x008b:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x0147 }
    L_0x008e:
        r2 = r2.getMax();	 Catch:{ Exception -> 0x0147 }
        if (r2 == 0) goto L_0x00ee;	 Catch:{ Exception -> 0x0147 }
    L_0x0094:
        r2 = r7.provider;	 Catch:{ Exception -> 0x0147 }
        if (r2 != 0) goto L_0x009b;	 Catch:{ Exception -> 0x0147 }
    L_0x0098:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x0147 }
    L_0x009b:
        r2 = r2.getMax();	 Catch:{ Exception -> 0x0147 }
        r5 = (double) r2;	 Catch:{ Exception -> 0x0147 }
        r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1));	 Catch:{ Exception -> 0x0147 }
        if (r2 <= 0) goto L_0x00ee;	 Catch:{ Exception -> 0x0147 }
    L_0x00a4:
        r0 = r7.comissionTextView;	 Catch:{ Exception -> 0x0147 }
        if (r0 != 0) goto L_0x00ab;	 Catch:{ Exception -> 0x0147 }
    L_0x00a8:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x0147 }
    L_0x00ab:
        r1 = kotlin.jvm.internal.StringCompanionObject.INSTANCE;	 Catch:{ Exception -> 0x0147 }
        r1 = 2131820996; // 0x7f1101c4 float:1.9274723E38 double:1.053259517E-314;	 Catch:{ Exception -> 0x0147 }
        r1 = r7.getString(r1);	 Catch:{ Exception -> 0x0147 }
        r2 = "getString(R.string.fragm…t_payment_amount_maximum)";	 Catch:{ Exception -> 0x0147 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2);	 Catch:{ Exception -> 0x0147 }
        r2 = new java.lang.Object[r4];	 Catch:{ Exception -> 0x0147 }
        r5 = r7.provider;	 Catch:{ Exception -> 0x0147 }
        if (r5 != 0) goto L_0x00c2;	 Catch:{ Exception -> 0x0147 }
    L_0x00bf:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x0147 }
    L_0x00c2:
        r5 = r5.getMax();	 Catch:{ Exception -> 0x0147 }
        r5 = (float) r5;	 Catch:{ Exception -> 0x0147 }
        r5 = java.lang.Math.round(r5);	 Catch:{ Exception -> 0x0147 }
        r5 = java.lang.Integer.valueOf(r5);	 Catch:{ Exception -> 0x0147 }
        r2[r3] = r5;	 Catch:{ Exception -> 0x0147 }
        r2 = java.util.Arrays.copyOf(r2, r4);	 Catch:{ Exception -> 0x0147 }
        r1 = java.lang.String.format(r1, r2);	 Catch:{ Exception -> 0x0147 }
        r2 = "java.lang.String.format(format, *args)";	 Catch:{ Exception -> 0x0147 }
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2);	 Catch:{ Exception -> 0x0147 }
        r1 = (java.lang.CharSequence) r1;	 Catch:{ Exception -> 0x0147 }
        r0.setText(r1);	 Catch:{ Exception -> 0x0147 }
        r0 = r7.buttonNext;	 Catch:{ Exception -> 0x0147 }
        if (r0 != 0) goto L_0x00ea;	 Catch:{ Exception -> 0x0147 }
    L_0x00e7:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x0147 }
    L_0x00ea:
        r0.setEnabled(r3);	 Catch:{ Exception -> 0x0147 }
        goto L_0x0106;	 Catch:{ Exception -> 0x0147 }
    L_0x00ee:
        r0 = r7.buttonNext;	 Catch:{ Exception -> 0x0147 }
        if (r0 != 0) goto L_0x00f5;	 Catch:{ Exception -> 0x0147 }
    L_0x00f2:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x0147 }
    L_0x00f5:
        r0.setEnabled(r4);	 Catch:{ Exception -> 0x0147 }
        r0 = r7.comissionTextView;	 Catch:{ Exception -> 0x0147 }
        if (r0 != 0) goto L_0x00ff;	 Catch:{ Exception -> 0x0147 }
    L_0x00fc:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x0147 }
    L_0x00ff:
        r1 = "";	 Catch:{ Exception -> 0x0147 }
        r1 = (java.lang.CharSequence) r1;	 Catch:{ Exception -> 0x0147 }
        r0.setText(r1);	 Catch:{ Exception -> 0x0147 }
    L_0x0106:
        r0 = r7.sourceViewPager;	 Catch:{ Exception -> 0x0147 }
        if (r0 != 0) goto L_0x010f;	 Catch:{ Exception -> 0x0147 }
    L_0x010a:
        r1 = "sourceViewPager";	 Catch:{ Exception -> 0x0147 }
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1);	 Catch:{ Exception -> 0x0147 }
    L_0x010f:
        r1 = 2131100200; // 0x7f060228 float:1.7812775E38 double:1.0529033967E-314;	 Catch:{ Exception -> 0x0147 }
        r0.highlightAmount(r1);	 Catch:{ Exception -> 0x0147 }
        return;	 Catch:{ Exception -> 0x0147 }
    L_0x0116:
        r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1));	 Catch:{ Exception -> 0x0147 }
        if (r2 <= 0) goto L_0x0146;	 Catch:{ Exception -> 0x0147 }
    L_0x011a:
        r0 = r7.buttonNext;	 Catch:{ Exception -> 0x0147 }
        if (r0 != 0) goto L_0x0121;	 Catch:{ Exception -> 0x0147 }
    L_0x011e:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x0147 }
    L_0x0121:
        r0.setEnabled(r3);	 Catch:{ Exception -> 0x0147 }
        r0 = r7.comissionTextView;	 Catch:{ Exception -> 0x0147 }
        if (r0 != 0) goto L_0x012b;	 Catch:{ Exception -> 0x0147 }
    L_0x0128:
        kotlin.jvm.internal.Intrinsics.throwNpe();	 Catch:{ Exception -> 0x0147 }
    L_0x012b:
        r1 = 2131821347; // 0x7f110323 float:1.9275435E38 double:1.0532596906E-314;	 Catch:{ Exception -> 0x0147 }
        r1 = r7.getString(r1);	 Catch:{ Exception -> 0x0147 }
        r1 = (java.lang.CharSequence) r1;	 Catch:{ Exception -> 0x0147 }
        r0.setText(r1);	 Catch:{ Exception -> 0x0147 }
        r0 = r7.sourceViewPager;	 Catch:{ Exception -> 0x0147 }
        if (r0 != 0) goto L_0x0140;	 Catch:{ Exception -> 0x0147 }
    L_0x013b:
        r1 = "sourceViewPager";	 Catch:{ Exception -> 0x0147 }
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1);	 Catch:{ Exception -> 0x0147 }
    L_0x0140:
        r1 = 2131099758; // 0x7f06006e float:1.7811878E38 double:1.0529031783E-314;	 Catch:{ Exception -> 0x0147 }
        r0.highlightAmount(r1);	 Catch:{ Exception -> 0x0147 }
    L_0x0146:
        return;
    L_0x0147:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.payment.PaymentAmountFragment.checkAmount():void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onNextButtonClick(ru.rocketbank.core.network.model.PaymentRequest r5) {
        /*
        r4 = this;
        r0 = "requestData";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r5, r0);
        r0 = r4.template;
        if (r0 != 0) goto L_0x000c;
    L_0x0009:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x000c:
        r0 = r0.amount;
        r2 = 0;
        r0 = java.lang.Double.compare(r0, r2);
        if (r0 != 0) goto L_0x0017;
    L_0x0016:
        return;
    L_0x0017:
        r0 = r4.hasCommission;
        if (r0 == 0) goto L_0x0042;
    L_0x001b:
        r0 = r4.getActivity();
        r0 = (android.content.Context) r0;
        r1 = r4.comission1TextView;
        if (r1 == 0) goto L_0x0031;
    L_0x0025:
        r1 = r1.getText();
        if (r1 == 0) goto L_0x0031;
    L_0x002b:
        r1 = r1.toString();
        if (r1 != 0) goto L_0x0033;
    L_0x0031:
        r1 = "";
    L_0x0033:
        r2 = 2131821332; // 0x7f110314 float:1.9275404E38 double:1.053259683E-314;
        r3 = new ru.rocketbank.r2d2.payment.PaymentAmountFragment$onNextButtonClick$1;
        r3.<init>(r4, r5);
        r3 = (java.lang.Runnable) r3;
        r5 = 0;
        ru.rocketbank.r2d2.helpers.UIHelper.showAlertDialog(r0, r1, r2, r3, r5);
        return;
    L_0x0042:
        r4.pay(r5);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.payment.PaymentAmountFragment.onNextButtonClick(ru.rocketbank.core.network.model.PaymentRequest):void");
    }

    public final void pay(PaymentRequest paymentRequest) {
        Intrinsics.checkParameterIsNotNull(paymentRequest, "requestData");
        if (this.accountFrom != null) {
            Button button = this.buttonNext;
            if (button != null) {
                button.setEnabled(false);
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            Locale locale = Locale.US;
            Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.US");
            String str = "%f";
            Object[] objArr = new Object[1];
            Template template = this.template;
            if (template == null) {
                Intrinsics.throwNpe();
            }
            objArr[0] = Double.valueOf(template.amount);
            String format = String.format(locale, str, Arrays.copyOf(objArr, 1));
            Intrinsics.checkExpressionValueIsNotNull(format, "java.lang.String.format(locale, format, *args)");
            paymentRequest.setAmount(format);
            Provider provider = this.provider;
            if (provider == null) {
                Intrinsics.throwNpe();
            }
            paymentRequest.setProvider_id(String.valueOf(provider.getId()));
            Account account = this.accountFrom;
            if (account == null) {
                Intrinsics.throwNpe();
            }
            paymentRequest.setCard_token(account.getToken());
            ru.rocketbank.r2d2.payment.PaymentStatusActivity.Companion companion = PaymentStatusActivity.Companion;
            FragmentActivity activity = getActivity();
            if (activity == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
            startActivityForResult(companion.createIntent(activity, paymentRequest.getMap()), REQUEST_CODE);
        }
    }

    private final void clearTransitionNames() {
        if (VERSION.SDK_INT >= 21) {
            View view = getView();
            if (view != null) {
                ImageView imageView = (ImageView) view.findViewById(C0859R.id.imageViewIcon);
                if (imageView != null) {
                    imageView.setTransitionName(null);
                }
            }
            view = getView();
            if (view != null) {
                RocketTextView rocketTextView = (RocketTextView) view.findViewById(C0859R.id.textViewName);
                if (rocketTextView != null) {
                    rocketTextView.setTransitionName(null);
                }
            }
        }
    }

    public final void onSetTransitionNames(String str, String str2) {
        Intrinsics.checkParameterIsNotNull(str, "a");
        Intrinsics.checkParameterIsNotNull(str2, "n");
        if (VERSION.SDK_INT >= 21) {
            ImageView imageView = this.imageViewIcon;
            if (imageView != null) {
                imageView.setTransitionName(str);
            }
            str = this.textViewName;
            if (str != null) {
                str.setTransitionName(str2);
            }
        }
    }

    private final void showPopup(View view) {
        PopupMenu popupMenu = new PopupMenu(view.getContext(), view);
        popupMenu.getMenu().add(0, 0, 0, C0859R.string.edit);
        popupMenu.setOnMenuItemClickListener((OnMenuItemClickListener) new PaymentAmountFragment$showPopup$1(this));
        popupMenu.show();
    }

    public final void onResume() {
        super.onResume();
        AccountWidget accountWidget = this.sourceViewPager;
        if (accountWidget == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sourceViewPager");
        }
        this.selectAccountSubscription = accountWidget.getOnAccountSelected().observeOn(AndroidSchedulers.mainThread()).subscribe((Action1) new PaymentAmountFragment$onResume$1(this));
        RocketEditText rocketEditText = this.edittextAmount;
        if (rocketEditText == null) {
            Intrinsics.throwNpe();
        }
        this.textSubscriptionAmount = RxTextView.afterTextChangeEvents(rocketEditText).map(new TextObserverToDouble()).subscribe(this.changeAmountSubscriber);
    }

    public final void onPause() {
        unsubscribe(this.commissionSubscription);
        unsubscribe(this.selectAccountSubscription);
        super.onPause();
    }

    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 != 0 && i == REQUEST_CODE && i2 == -1) {
            onSuccess();
        }
    }

    public final void onUserModel(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        super.onUserModel(userModel);
        userModel = this.template;
        if (userModel == null) {
            Intrinsics.throwNpe();
        }
        updateEditText(Double.valueOf(userModel.amount));
    }

    public final void updateEditText(Double d) {
        if (this.commissionSubscription != null) {
            d = this.commissionSubscription;
            if (d == null) {
                Intrinsics.throwNpe();
            }
            if (d.isUnsubscribed() == null) {
                d = this.commissionSubscription;
                if (d == null) {
                    Intrinsics.throwNpe();
                }
                d.unsubscribe();
            }
        }
        d = this.buttonNext;
        if (d == null) {
            Intrinsics.throwNpe();
        }
        d.setEnabled(true);
        d = this.viewSwitcher;
        if (d == null) {
            Intrinsics.throwNpe();
        }
        boolean z = false;
        d.setDisplayedChild(0);
        d = this.comission1TextView;
        if (d == null) {
            Intrinsics.throwNpe();
        }
        d.setText("");
        d = this.edittextAmount;
        if (d == null) {
            Intrinsics.throwNpe();
        }
        if (d.getText() != null) {
            d = this.edittextAmount;
            if (d == null) {
                Intrinsics.throwNpe();
            }
            if (Intrinsics.areEqual(d.getText().toString(), "") == null) {
                d = this.edittextAmount;
                if (d == null) {
                    Intrinsics.throwNpe();
                }
                if (StringsKt.startsWith$default(d.getText().toString(), AppEventsConstants.EVENT_PARAM_VALUE_NO, false, 2, null) == null) {
                    checkAmount();
                    d = this.provider;
                    if (d == null) {
                        Intrinsics.throwNpe();
                    }
                    if (d.isCommission() != null) {
                        d = this.buttonNext;
                        if (d == null) {
                            Intrinsics.throwNpe();
                        }
                        d.setEnabled(false);
                        d = this.edittextAmount;
                        if (d == null) {
                            Intrinsics.throwNpe();
                        }
                        CharSequence obj = d.getText().toString();
                        boolean z2 = false;
                        int length = obj.length() - 1;
                        int i = z2;
                        while (i <= length) {
                            boolean z3 = obj.charAt(!z2 ? i : length) <= ' ';
                            if (z2) {
                                if (!z3) {
                                    break;
                                }
                                length--;
                            } else if (z3) {
                                i++;
                            } else {
                                z2 = true;
                            }
                        }
                        if (obj.subSequence(i, length + 1).toString().length() == null) {
                            z = true;
                        }
                        if (z) {
                            d = this.edittextAmount;
                            if (d != null) {
                                d.setText(AppEventsConstants.EVENT_PARAM_VALUE_NO);
                            }
                            d = this.edittextAmount;
                            if (d != null) {
                                d.setSelection(1);
                            }
                        }
                        d = this.viewSwitcher;
                        if (d == null) {
                            Intrinsics.throwNpe();
                        }
                        d.setDisplayedChild(1);
                        d = this.providersApi;
                        if (d == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("providersApi");
                        }
                        Provider provider = this.provider;
                        if (provider == null) {
                            Intrinsics.throwNpe();
                        }
                        long id = (long) provider.getId();
                        Template template = this.template;
                        if (template == null) {
                            Intrinsics.throwNpe();
                        }
                        this.commissionSubscription = d.commission(id, template.amount).observeOn(AndroidSchedulers.mainThread()).onBackpressureDrop().subscribe((Subscriber) new PaymentAmountFragment$updateEditText$1(this));
                        return;
                    }
                    d = this.comission1TextView;
                    if (d == null) {
                        Intrinsics.throwNpe();
                    }
                    d.setText(getString(C0859R.string.without_commission_message));
                    return;
                }
            }
        }
        d = this.buttonNext;
        if (d == null) {
            Intrinsics.throwNpe();
        }
        d.setEnabled(false);
    }

    private final void onSuccess() {
        Intent intent = new Intent(getActivity(), MainActivity.class);
        intent.addFlags(67108864);
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        activity.startActivity(intent);
    }
}
