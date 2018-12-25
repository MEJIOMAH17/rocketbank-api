package ru.rocketbank.r2d2.fragments.tariffs;

import android.content.Context;
import android.databinding.ObservableArrayList;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AlertDialog.Builder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;
import ru.rocketbank.core.model.TariffModel;
import ru.rocketbank.core.network.api.TariffsApi;
import ru.rocketbank.core.network.model.tariffs.Salary;
import ru.rocketbank.core.network.model.tariffs.Tariff;
import ru.rocketbank.core.network.model.tariffs.Tariff.TariffState;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.ImageHelper;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.activities.tariffs.SalaryTariffInstructionActivity;
import ru.rocketbank.r2d2.data.binding.tariff.TariffData;
import ru.rocketbank.r2d2.data.binding.tariff.TariffEventsListener;
import ru.rocketbank.r2d2.data.binding.tariff.TariffItemData;
import ru.rocketbank.r2d2.databinding.FragmentTariffDetailsBinding;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.schedulers.Schedulers;
import rx.subjects.PublishSubject;

/* compiled from: TariffFragment.kt */
public final class TariffFragment extends RocketFragment implements TariffEventsListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(TariffFragment.class), "items", "getItems()Landroid/databinding/ObservableArrayList;"))};
    public static final Companion Companion = new Companion();
    private static final String LAST_TARIFF_KEY = "LAST_TARIFF";
    private static final String TARIFF_KEY = "TARIFF";
    private static final String TOKEN_KEY = "TOKEN";
    private static final PublishSubject<TariffStateChange> tariffUpdateSubject;
    private HashMap _$_findViewCache;
    private AlertDialog activationDialog;
    private Subscription applySubscribtion;
    private final Authorization authorization;
    private FragmentTariffDetailsBinding binding;
    private final Calendar calendar;
    private AlertDialog cancelDialog;
    private Subscription changeTariffSubscribtion;
    private final Lazy items$delegate = ExceptionsKt__ExceptionsKt.lazyOf(new ObservableArrayList());
    private TariffModel lastTariff;
    private Tariff tariff;
    private final TariffData tariffData = new TariffData();
    private ImageView tariffImageView;
    private final TariffsApi tariffsApi;
    private String token;

    /* compiled from: TariffFragment.kt */
    public static final class Companion {

        /* compiled from: TariffFragment.kt */
        public static final class TariffStateChange {
            private final TariffState newState;
            private final String permalink;

            public static /* bridge */ /* synthetic */ TariffStateChange copy$default(TariffStateChange tariffStateChange, TariffState tariffState, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    tariffState = tariffStateChange.newState;
                }
                if ((i & 2) != 0) {
                    str = tariffStateChange.permalink;
                }
                return tariffStateChange.copy(tariffState, str);
            }

            public final TariffState component1() {
                return this.newState;
            }

            public final String component2() {
                return this.permalink;
            }

            public final TariffStateChange copy(TariffState tariffState, String str) {
                Intrinsics.checkParameterIsNotNull(tariffState, "newState");
                Intrinsics.checkParameterIsNotNull(str, "permalink");
                return new TariffStateChange(tariffState, str);
            }

            public final boolean equals(Object obj) {
                if (this != obj) {
                    if (obj instanceof TariffStateChange) {
                        TariffStateChange tariffStateChange = (TariffStateChange) obj;
                        if (Intrinsics.areEqual(this.newState, tariffStateChange.newState) && Intrinsics.areEqual(this.permalink, tariffStateChange.permalink)) {
                        }
                    }
                    return false;
                }
                return true;
            }

            public final int hashCode() {
                TariffState tariffState = this.newState;
                int i = 0;
                int hashCode = (tariffState != null ? tariffState.hashCode() : 0) * 31;
                String str = this.permalink;
                if (str != null) {
                    i = str.hashCode();
                }
                return hashCode + i;
            }

            public final String toString() {
                StringBuilder stringBuilder = new StringBuilder("TariffStateChange(newState=");
                stringBuilder.append(this.newState);
                stringBuilder.append(", permalink=");
                stringBuilder.append(this.permalink);
                stringBuilder.append(")");
                return stringBuilder.toString();
            }

            public TariffStateChange(TariffState tariffState, String str) {
                Intrinsics.checkParameterIsNotNull(tariffState, "newState");
                Intrinsics.checkParameterIsNotNull(str, "permalink");
                this.newState = tariffState;
                this.permalink = str;
            }

            public final TariffState getNewState() {
                return this.newState;
            }

            public final String getPermalink() {
                return this.permalink;
            }
        }

        private static /* synthetic */ void LAST_TARIFF_KEY$annotations() {
        }

        private static /* synthetic */ void TARIFF_KEY$annotations() {
        }

        private static /* synthetic */ void TOKEN_KEY$annotations() {
        }

        public static /* synthetic */ void tariffUpdateSubject$annotations() {
        }

        private Companion() {
        }

        public final PublishSubject<TariffStateChange> getTariffUpdateSubject() {
            return TariffFragment.tariffUpdateSubject;
        }

        public final TariffFragment newInstance(String str, Tariff tariff, TariffModel tariffModel) {
            Intrinsics.checkParameterIsNotNull(str, "token");
            Intrinsics.checkParameterIsNotNull(tariff, "tariff");
            Intrinsics.checkParameterIsNotNull(tariffModel, "lastTariff");
            TariffFragment tariffFragment = new TariffFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelable(TariffFragment.TARIFF_KEY, tariff);
            bundle.putParcelable(TariffFragment.LAST_TARIFF_KEY, tariffModel);
            bundle.putString(TariffFragment.TOKEN_KEY, str);
            tariffFragment.setArguments(bundle);
            return tariffFragment;
        }
    }

    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[TariffState.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[TariffState.WILL_BE_ACTIVATED.ordinal()] = 1;
            $EnumSwitchMapping$0[TariffState.NOT_ACTIVE.ordinal()] = 2;
            $EnumSwitchMapping$0[TariffState.SALARY_SHOW_INSTRUCTION.ordinal()] = 3;
            iArr = new int[TariffState.values().length];
            $EnumSwitchMapping$1 = iArr;
            iArr[TariffState.WILL_BE_ACTIVATED.ordinal()] = 1;
            $EnumSwitchMapping$1[TariffState.NOT_ACTIVE.ordinal()] = 2;
            $EnumSwitchMapping$1[TariffState.SALARY_SHOW_INSTRUCTION.ordinal()] = 3;
        }
    }

    private final ObservableArrayList<TariffItemData> getItems() {
        return (ObservableArrayList) this.items$delegate.getValue();
    }

    public static final PublishSubject<TariffStateChange> getTariffUpdateSubject() {
        return tariffUpdateSubject;
    }

    public static final TariffFragment newInstance(String str, Tariff tariff, TariffModel tariffModel) {
        return Companion.newInstance(str, tariff, tariffModel);
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

    public TariffFragment() {
        Calendar instance = Calendar.getInstance();
        Intrinsics.checkExpressionValueIsNotNull(instance, "Calendar.getInstance()");
        this.calendar = instance;
        this.authorization = getInjector().getAuthorization();
        this.tariffsApi = getInjector().getTariffsApi();
    }

    public static final /* synthetic */ Tariff access$getTariff$p(TariffFragment tariffFragment) {
        tariffFragment = tariffFragment.tariff;
        if (tariffFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tariff");
        }
        return tariffFragment;
    }

    public final Authorization getAuthorization() {
        return this.authorization;
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = FragmentTariffDetailsBinding.inflate(layoutInflater, viewGroup, null);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "FragmentTariffDetailsBin…flater, container, false)");
        this.binding = layoutInflater;
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater = layoutInflater.tariffImg;
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding.tariffImg");
        this.tariffImageView = layoutInflater;
        layoutInflater = getArguments();
        if (layoutInflater == null) {
            Intrinsics.throwNpe();
        }
        layoutInflater = layoutInflater.getParcelable(TARIFF_KEY);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "arguments!!.getParcelable(TARIFF_KEY)");
        this.tariff = (Tariff) layoutInflater;
        layoutInflater = getArguments();
        if (layoutInflater == null) {
            Intrinsics.throwNpe();
        }
        layoutInflater = layoutInflater.getParcelable(LAST_TARIFF_KEY);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "arguments!!.getParcelable(LAST_TARIFF_KEY)");
        this.lastTariff = (TariffModel) layoutInflater;
        layoutInflater = getArguments();
        if (layoutInflater == null) {
            Intrinsics.throwNpe();
        }
        layoutInflater = layoutInflater.getString(TOKEN_KEY);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "arguments!!.getString(TOKEN_KEY)");
        this.token = layoutInflater;
        for (viewGroup = 1; viewGroup <= 3; viewGroup++) {
            getItems().add(new TariffItemData());
        }
        viewGroup = this.binding;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        viewGroup.setItems(getItems());
        this.calendar.set(2, this.calendar.get(2) + 1);
        this.calendar.set(5, 1);
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater = layoutInflater.getRoot();
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "binding.root");
        return layoutInflater;
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle.setData(this.tariffData);
        setupTariffData();
        bundle = ImageHelper.INSTANCE;
        ImageView imageView = this.tariffImageView;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tariffImageView");
        }
        Tariff tariff = this.tariff;
        if (tariff == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tariff");
        }
        bundle.load(imageView, tariff.getImageUrl(), new ColorDrawable(-7829368));
        bundle = this.tariff;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tariff");
        }
        if (StringsKt.contains$default(bundle.getPermalink(), "onetwotrip", false, 2, null) != null) {
            view = ContextCompat.getColor(view.getContext(), C0859R.color.rocketBlack);
            bundle = this.binding;
            if (bundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            bundle.tariff.setTextColor(view);
            bundle = this.binding;
            if (bundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            bundle.tariffName.setTextColor(view);
            bundle = this.binding;
            if (bundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            bundle.price.setTextColor(view);
            bundle = this.binding;
            if (bundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            bundle.month.setTextColor(view);
            bundle = this.binding;
            if (bundle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            bundle.imageViewInfinity.setColorFilter(view);
        }
        view = this.tariff;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tariff");
        }
        if (view.getState() != TariffState.ACTIVE) {
            this.changeTariffSubscribtion = tariffUpdateSubject.subscribe((Action1) new TariffFragment$onViewCreated$1(this));
        }
    }

    private final void setupTariffData() {
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
        r6 = this;
        r0 = r6.tariffData;
        r0 = r0.getPriceLabel();
        r1 = r6.tariff;
        if (r1 != 0) goto L_0x000f;
    L_0x000a:
        r2 = "tariff";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2);
    L_0x000f:
        r1 = r1.getPriceLabel();
        r0.set(r1);
        r0 = r6.tariffData;
        r0 = r0.getName();
        r1 = r6.tariff;
        if (r1 != 0) goto L_0x0025;
    L_0x0020:
        r2 = "tariff";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2);
    L_0x0025:
        r1 = r1.getName();
        r0.set(r1);
        r0 = r6.tariffData;
        r0 = r0.isSalary();
        r1 = r6.tariff;
        if (r1 != 0) goto L_0x003b;
    L_0x0036:
        r2 = "tariff";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2);
    L_0x003b:
        r1 = r1.getSalary();
        r2 = 0;
        r3 = 1;
        if (r1 == 0) goto L_0x0045;
    L_0x0043:
        r1 = r3;
        goto L_0x0046;
    L_0x0045:
        r1 = r2;
    L_0x0046:
        r0.set(r1);
        r0 = r6.tariffData;
        r0 = r0.isButtonActivate();
        r1 = r6.tariff;
        if (r1 != 0) goto L_0x0058;
    L_0x0053:
        r4 = "tariff";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r4);
    L_0x0058:
        r1 = r1.getState();
        r4 = ru.rocketbank.core.network.model.tariffs.Tariff.TariffState.ACTIVE;
        if (r1 == r4) goto L_0x0062;
    L_0x0060:
        r1 = r3;
        goto L_0x0063;
    L_0x0062:
        r1 = r2;
    L_0x0063:
        r0.set(r1);
        r0 = r6.tariff;
        if (r0 != 0) goto L_0x006f;
    L_0x006a:
        r1 = "tariff";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1);
    L_0x006f:
        r0 = r0.getState();
        r6.setTariffState(r0);
        r0 = r6.tariff;
        if (r0 != 0) goto L_0x007f;
    L_0x007a:
        r1 = "tariff";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1);
    L_0x007f:
        r0 = r0.getFeatures();
        r1 = r0.size();
        r4 = r6.getItems();
        r4 = r4.size();
        r1 = java.lang.Math.min(r1, r4);
        r1 = r1 - r3;
        if (r1 < 0) goto L_0x00f9;
    L_0x0096:
        r3 = r6.getItems();
        r3 = r3.get(r2);
        r3 = (ru.rocketbank.r2d2.data.binding.tariff.TariffItemData) r3;
        r3 = r3.getText();
        r4 = r0.get(r2);
        r4 = (ru.rocketbank.core.network.model.tariffs.TariffFeature) r4;
        r4 = r4.getText();
        r3.set(r4);
        r3 = r6.getItems();
        r3 = r3.get(r2);
        r3 = (ru.rocketbank.r2d2.data.binding.tariff.TariffItemData) r3;
        r3 = r3.getTextColor();
        r4 = r0.get(r2);
        r4 = (ru.rocketbank.core.network.model.tariffs.TariffFeature) r4;
        r4 = r4.getIconText();
        r3.set(r4);
        r3 = r0.get(r2);	 Catch:{ Exception -> 0x00db }
        r3 = (ru.rocketbank.core.network.model.tariffs.TariffFeature) r3;	 Catch:{ Exception -> 0x00db }
        r3 = r3.getIconColor();	 Catch:{ Exception -> 0x00db }
        r3 = android.graphics.Color.parseColor(r3);	 Catch:{ Exception -> 0x00db }
        goto L_0x00de;
    L_0x00db:
        r3 = -7829368; // 0xffffffffff888888 float:NaN double:NaN;
    L_0x00de:
        r4 = r6.getItems();
        r4 = r4.get(r2);
        r4 = (ru.rocketbank.r2d2.data.binding.tariff.TariffItemData) r4;
        r4 = r4.getColor();
        r5 = new android.graphics.drawable.ColorDrawable;
        r5.<init>(r3);
        r4.set(r5);
        if (r2 == r1) goto L_0x00f9;
    L_0x00f6:
        r2 = r2 + 1;
        goto L_0x0096;
    L_0x00f9:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.tariffs.TariffFragment.setupTariffData():void");
    }

    private final void setTariffState(TariffState tariffState) {
        tariffState = WhenMappings.$EnumSwitchMapping$0[tariffState.ordinal()];
        int i = C0859R.color.orange_variant_2;
        switch (tariffState) {
            case 1:
                tariffState = getString(C0859R.string.ft_tariff_will_activate_since, new Object[]{new SimpleDateFormat("d MMMM", new Locale("ru", "RU")).format(Long.valueOf(this.calendar.getTimeInMillis()))});
                Intrinsics.checkExpressionValueIsNotNull(tariffState, "getString(R.string.ft_ta…t(calendar.timeInMillis))");
                i = C0859R.color.gray;
                break;
            case 2:
                tariffState = getString(C0859R.string.ft_apply_tariff);
                Intrinsics.checkExpressionValueIsNotNull(tariffState, "getString(R.string.ft_apply_tariff)");
                break;
            case 3:
                tariffState = getString(C0859R.string.how_apply_tariff);
                Intrinsics.checkExpressionValueIsNotNull(tariffState, "getString(R.string.how_apply_tariff)");
                break;
            default:
                tariffState = getString(C0859R.string.current_tariff);
                Intrinsics.checkExpressionValueIsNotNull(tariffState, "getString(R.string.current_tariff)");
                i = C0859R.color.green;
                break;
        }
        this.tariffData.getButtonText().set(tariffState);
        tariffState = this.tariffData.getButtonColor();
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        tariffState.set(new ColorDrawable(ContextCompat.getColor(context, i)));
    }

    public final void onLinkClicked(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        Context activity = getActivity();
        Tariff tariff = this.tariff;
        if (tariff == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tariff");
        }
        Utils.openUrl(activity, tariff.getUrl());
    }

    public final void onStart() {
        super.onStart();
        FragmentTariffDetailsBinding fragmentTariffDetailsBinding = this.binding;
        if (fragmentTariffDetailsBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        fragmentTariffDetailsBinding.setListener(this);
    }

    public final void onStop() {
        super.onStop();
        FragmentTariffDetailsBinding fragmentTariffDetailsBinding = this.binding;
        if (fragmentTariffDetailsBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        fragmentTariffDetailsBinding.setListener(null);
        hideSpinner();
    }

    public final void onDestroyView() {
        super.onDestroyView();
        Subscription subscription = this.applySubscribtion;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        subscription = this.changeTariffSubscribtion;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        _$_clearFindViewByIdCache();
    }

    public final void onChangeTariffClicked() {
        Tariff tariff = this.tariff;
        if (tariff == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tariff");
        }
        switch (WhenMappings.$EnumSwitchMapping$1[tariff.getState().ordinal()]) {
            case 1:
                showCancelDialog();
                return;
            case 2:
                showChangeDialog();
                return;
            case 3:
                tariff = this.tariff;
                if (tariff == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tariff");
                }
                Salary salary = tariff.getSalary();
                if (salary != null) {
                    ru.rocketbank.r2d2.activities.tariffs.SalaryTariffInstructionActivity.Companion companion = SalaryTariffInstructionActivity.Companion;
                    Context context = getContext();
                    if (context == null) {
                        Intrinsics.throwNpe();
                    }
                    Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
                    Tariff tariff2 = this.tariff;
                    if (tariff2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("tariff");
                    }
                    companion.start(context, tariff2.getUrl(), salary.getUrl());
                    return;
                }
                break;
            default:
                break;
        }
    }

    private final void setupDialogButtonsColor(AlertDialog alertDialog) {
        alertDialog.getButton(-1).setTextColor(ContextCompat.getColor(alertDialog.getContext(), C0859R.color.orange_variant_2));
        alertDialog.getButton(-2).setTextColor(ContextCompat.getColor(alertDialog.getContext(), C0859R.color.gray));
    }

    private final void showChangeDialog() {
        if (this.activationDialog == null) {
            String string = getString(C0859R.string.ft_tariff_will_apply_since, new Object[]{new SimpleDateFormat("d MMMM", new Locale("ru", "RU")).format(Long.valueOf(this.calendar.getTimeInMillis()))});
            Context context = getContext();
            if (context == null) {
                Intrinsics.throwNpe();
            }
            this.activationDialog = new Builder(context).setMessage(string).setCancelable$184cab27().setPositiveButton(17039370, new TariffFragment$showChangeDialog$1(this)).setNegativeButton(17039360, TariffFragment$showChangeDialog$2.INSTANCE).create();
        }
        AlertDialog alertDialog = this.activationDialog;
        if (alertDialog != null) {
            alertDialog.show();
            setupDialogButtonsColor(alertDialog);
        }
    }

    private final void showCancelDialog() {
        if (this.cancelDialog == null) {
            Object[] objArr = new Object[1];
            Tariff tariff = this.tariff;
            if (tariff == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tariff");
            }
            objArr[0] = tariff.getName();
            String string = getString(C0859R.string.cancel_tariff_activation, objArr);
            Context context = getContext();
            if (context == null) {
                Intrinsics.throwNpe();
            }
            this.cancelDialog = new Builder(context).setMessage(string).setCancelable$184cab27().setPositiveButton(17039370, new TariffFragment$showCancelDialog$1(this)).setNegativeButton(17039360, TariffFragment$showCancelDialog$2.INSTANCE).create();
        }
        AlertDialog alertDialog = this.cancelDialog;
        if (alertDialog != null) {
            alertDialog.show();
            setupDialogButtonsColor(alertDialog);
        }
    }

    private final void changeTariff() {
        showSpinner(C0859R.string.loading);
        String str = this.token;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("token");
        }
        Tariff tariff = this.tariff;
        if (tariff == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tariff");
        }
        applyTariff(str, tariff.getPermalink(), TariffState.WILL_BE_ACTIVATED);
    }

    public final void applyTariff(String str, String str2, TariffState tariffState) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        Intrinsics.checkParameterIsNotNull(str2, "tariffPermalink");
        Intrinsics.checkParameterIsNotNull(tariffState, "newState");
        showSpinner(C0859R.string.loading);
        Subscription subscription = this.applySubscribtion;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        this.applySubscribtion = this.tariffsApi.apply(str2, str).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new TariffFragment$applyTariff$1(this, tariffState, str2, str));
    }

    private final void cancelTariff() {
        String str = this.token;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("token");
        }
        TariffModel tariffModel = this.lastTariff;
        if (tariffModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("lastTariff");
        }
        applyTariff(str, tariffModel.getPermalinkString(), TariffState.NOT_ACTIVE);
    }

    static {
        PublishSubject create = PublishSubject.create();
        Intrinsics.checkExpressionValueIsNotNull(create, "PublishSubject.create()");
        tariffUpdateSubject = create;
    }
}
