package ru.rocketbank.r2d2.root.card;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.ContextCompat;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener;
import android.support.v7.app.AlertDialog.Builder;
import android.support.v7.graphics.drawable.DrawerArrowDrawable;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.HashMap;
import jp.wasabeef.glide.transformations.ColorFilterTransformation;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.dto.ChangePin;
import ru.rocketbank.core.pay.google.AndroidPayUtils;
import ru.rocketbank.core.pay.google.UiTapAndPay;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.MainActivity;
import ru.rocketbank.r2d2.activities.safe.TransferActivity;
import ru.rocketbank.r2d2.activities.tariffs.TariffsActivity;
import ru.rocketbank.r2d2.adapters.ParallaxAdapter;
import ru.rocketbank.r2d2.data.binding.parallax.ParallaxData;
import ru.rocketbank.r2d2.databinding.FragmentCardDetailBinding;
import ru.rocketbank.r2d2.fragments.ParallaxFragment;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.fragments.refill.UserFeedRefillFragment;
import ru.rocketbank.r2d2.root.card.binding.CardBindingData;
import ru.rocketbank.r2d2.root.card.binding.CardBindingHandler;
import ru.rocketbank.r2d2.root.card.binding.CardDetailView;
import ru.rocketbank.r2d2.root.card.binding.CardPresenter;
import ru.rocketbank.r2d2.root.card.binding.DetailCardViewInputModel;
import ru.rocketbank.r2d2.root.devidepayment.ap.APAddCardActivity;
import ru.rocketbank.r2d2.root.devidepayment.ap.APManageCardActivity;
import ru.rocketbank.r2d2.root.devidepayment.sp.SPAddCardActivity;
import ru.rocketbank.r2d2.widgets.NotificationDialog;
import ru.rocketbank.r2d2.widgets.dialog.RenameDialogFragment;

@SuppressLint({"RestrictedApi"})
/* compiled from: CardDetailFragment.kt */
public final class CardDetailFragment extends ParallaxFragment implements CardBindingHandler, CardDetailView {
    private static final String CARD_EXTRACTS = "CARD_EXTRACTS";
    private static final String CARD_TOKEN = "CARD_TOKEN";
    public static final Companion Companion = new Companion();
    private static final String PLASTIC_TOKEN = "PLASTIC_TOKEN";
    public static final int REQUEST_AP_ADD_CARD = 45663;
    public static final int REQUEST_AP_CREATE_WALLET = 45665;
    public static final int REQUEST_AP_MANAGE_CARD = 45661;
    public static final int REQUEST_SP_ADD_CARD = 45668;
    private static final String TAG = "CardDetail";
    private HashMap _$_findViewCache;
    private boolean androidPayIsAdd = true;
    private FragmentCardDetailBinding binding;
    private final CardBindingData cardBindingData = new CardBindingData();
    private CardPresenter cardPresenter;
    private ChangePin changePin;
    private boolean extracts;
    private FloatingActionButton fab;
    private boolean isCardDefault;
    private final OnClickListener navigationOnClickListener = new CardDetailFragment$navigationOnClickListener$1(this);
    private NotificationDialog notificationDialog;
    private String plasticToken;
    private RenameDialogFragment renameDialogFragment;
    private String token;
    private final UiTapAndPay uiTapAndPay = getInjector().getUiTapAndPay();

    /* compiled from: CardDetailFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final CardDetailFragment newInstance(String str, String str2, boolean z) {
            Intrinsics.checkParameterIsNotNull(str, "token");
            Intrinsics.checkParameterIsNotNull(str2, "plasticToken");
            CardDetailFragment cardDetailFragment = new CardDetailFragment();
            Bundle bundle = new Bundle();
            bundle.putString(CardDetailFragment.CARD_TOKEN, str);
            bundle.putString(CardDetailFragment.PLASTIC_TOKEN, str2);
            bundle.putBoolean(CardDetailFragment.CARD_EXTRACTS, z);
            cardDetailFragment.setArguments(bundle);
            return cardDetailFragment;
        }
    }

    public static final CardDetailFragment newInstance(String str, String str2, boolean z) {
        return Companion.newInstance(str, str2, z);
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

    public static final /* synthetic */ CardPresenter access$getCardPresenter$p(CardDetailFragment cardDetailFragment) {
        cardDetailFragment = cardDetailFragment.cardPresenter;
        if (cardDetailFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardPresenter");
        }
        return cardDetailFragment;
    }

    public static final /* synthetic */ String access$getToken$p(CardDetailFragment cardDetailFragment) {
        cardDetailFragment = cardDetailFragment.token;
        if (cardDetailFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("token");
        }
        return cardDetailFragment;
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = FragmentCardDetailBinding.inflate(layoutInflater, viewGroup, null);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "FragmentCardDetailBindin…flater, container, false)");
        this.binding = layoutInflater;
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater.setCardBindingData(this.cardBindingData);
        layoutInflater = this.binding;
        if (layoutInflater == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        layoutInflater.setHandler(this);
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
        FragmentCardDetailBinding fragmentCardDetailBinding = this.binding;
        if (fragmentCardDetailBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        Toolbar toolbar = fragmentCardDetailBinding.toolbar;
        FragmentCardDetailBinding fragmentCardDetailBinding2 = this.binding;
        if (fragmentCardDetailBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        Toolbar toolbar2 = fragmentCardDetailBinding2.toolbarReal;
        FragmentCardDetailBinding fragmentCardDetailBinding3 = this.binding;
        if (fragmentCardDetailBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        FloatingActionButton floatingActionButton = fragmentCardDetailBinding3.fab;
        Intrinsics.checkExpressionValueIsNotNull(floatingActionButton, "binding.fab");
        this.fab = floatingActionButton;
        Bundle arguments = getArguments();
        if (arguments == null) {
            Intrinsics.throwNpe();
        }
        String string = arguments.getString(CARD_TOKEN);
        Intrinsics.checkExpressionValueIsNotNull(string, "arguments!!.getString(CARD_TOKEN)");
        this.token = string;
        arguments = getArguments();
        if (arguments == null) {
            Intrinsics.throwNpe();
        }
        string = arguments.getString(PLASTIC_TOKEN);
        Intrinsics.checkExpressionValueIsNotNull(string, "arguments!!.getString(PLASTIC_TOKEN)");
        this.plasticToken = string;
        arguments = getArguments();
        if (arguments == null) {
            Intrinsics.throwNpe();
        }
        this.extracts = arguments.getBoolean(CARD_EXTRACTS, false);
        Intrinsics.checkExpressionValueIsNotNull(toolbar, "toolbar");
        Intrinsics.checkExpressionValueIsNotNull(toolbar2, "realToolbar");
        fragmentCardDetailBinding3 = this.binding;
        if (fragmentCardDetailBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        FrameLayout frameLayout = fragmentCardDetailBinding3.header;
        Intrinsics.checkExpressionValueIsNotNull(frameLayout, "binding.header");
        setupView(toolbar, toolbar2, frameLayout);
        if (getParallaxAdapter() == null) {
            ParallaxData parallaxData = this.cardBindingData;
            fragmentCardDetailBinding3 = this.binding;
            if (fragmentCardDetailBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            frameLayout = fragmentCardDetailBinding3.header;
            Intrinsics.checkExpressionValueIsNotNull(frameLayout, "binding.header");
            setParallaxAdapter(new CardDetailAdapter(parallaxData, frameLayout, getHeaderHeight()));
        }
        fragmentCardDetailBinding = this.binding;
        if (fragmentCardDetailBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ObservableRecyclerView observableRecyclerView = fragmentCardDetailBinding.body;
        Intrinsics.checkExpressionValueIsNotNull(observableRecyclerView, "binding.body");
        ParallaxFragment.createParallax$default(this, observableRecyclerView, this.cardBindingData, null, 0, 12, null);
        fragmentCardDetailBinding = this.binding;
        if (fragmentCardDetailBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        FrameLayout frameLayout2 = fragmentCardDetailBinding.header;
        Intrinsics.checkExpressionValueIsNotNull(frameLayout2, "binding.header");
        parallaxHeightToView(frameLayout2);
        fragmentCardDetailBinding = this.binding;
        if (fragmentCardDetailBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ImageView imageView = fragmentCardDetailBinding.backgroundImage;
        Intrinsics.checkExpressionValueIsNotNull(imageView, "binding.backgroundImage");
        parallaxHeightToView(imageView);
        fragmentCardDetailBinding = this.binding;
        if (fragmentCardDetailBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        RelativeLayout relativeLayout = fragmentCardDetailBinding.cardContainer;
        Intrinsics.checkExpressionValueIsNotNull(relativeLayout, "binding.cardContainer");
        parallaxHeightToView(relativeLayout);
        fragmentCardDetailBinding = this.binding;
        if (fragmentCardDetailBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        FloatingActionButton floatingActionButton2 = fragmentCardDetailBinding.fab;
        Intrinsics.checkExpressionValueIsNotNull(floatingActionButton2, "binding.fab");
        addFab(floatingActionButton2);
        super.onViewCreated(view, bundle);
        String str = this.token;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("token");
        }
        String str2 = this.plasticToken;
        if (str2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("plasticToken");
        }
        this.cardPresenter = new CardPresenter(str, str2, this);
        bundle = this.cardPresenter;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardPresenter");
        }
        AndroidPayUtils androidPayUtils = AndroidPayUtils.INSTANCE;
        view = view.getContext();
        Intrinsics.checkExpressionValueIsNotNull(view, "view.context");
        bundle.useAndroidPay(AndroidPayUtils.checkPaySupport(view));
        view = this.binding;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        view.swipeRefresh.setOnRefreshListener((OnRefreshListener) new CardDetailFragment$onViewCreated$1(this));
        setupToolbar();
    }

    public final void onResume() {
        super.onResume();
        CardPresenter cardPresenter = this.cardPresenter;
        if (cardPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardPresenter");
        }
        cardPresenter.onResume();
    }

    public final void onPause() {
        hideSpinner();
        CardPresenter cardPresenter = this.cardPresenter;
        if (cardPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardPresenter");
        }
        cardPresenter.onPause();
        super.onPause();
    }

    public final void showLoader() {
        RocketFragment.showSpinner$default(this, 0, 1, null);
    }

    public final void hideLoader() {
        hideSpinner();
    }

    public final void openRefill(String str) {
        Intrinsics.checkParameterIsNotNull(str, "token");
        FragmentActivity activity = getActivity();
        if (activity instanceof MainActivity) {
            ((MainActivity) activity).pushFragment(UserFeedRefillFragment.newInstance(str, false, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
        }
    }

    public final void onAmountPressed() {
        CardPresenter cardPresenter = this.cardPresenter;
        if (cardPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardPresenter");
        }
        cardPresenter.changeMode();
    }

    public final void onFabClicked(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        CardPresenter cardPresenter = this.cardPresenter;
        if (cardPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardPresenter");
        }
        cardPresenter.onFabClicked(view);
    }

    public final void destroyNotificationDialog() {
        this.notificationDialog = null;
    }

    public final void onViewInput(DetailCardViewInputModel detailCardViewInputModel) {
        Intrinsics.checkParameterIsNotNull(detailCardViewInputModel, "viewInput");
        FragmentCardDetailBinding fragmentCardDetailBinding = this.binding;
        if (fragmentCardDetailBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        SwipeRefreshLayout swipeRefreshLayout = fragmentCardDetailBinding.swipeRefresh;
        Intrinsics.checkExpressionValueIsNotNull(swipeRefreshLayout, "binding.swipeRefresh");
        swipeRefreshLayout.setRefreshing(false);
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder("Url = ");
        stringBuilder.append(detailCardViewInputModel.getImageUrl());
        Log.v(str, stringBuilder.toString());
        fragmentCardDetailBinding = this.binding;
        if (fragmentCardDetailBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        Glide.with(this).load(detailCardViewInputModel.getImageUrl()).asBitmap().diskCacheStrategy(DiskCacheStrategy.ALL).transform(new Transformation[]{new ColorFilterTransformation(getActivity(), Color.argb(95, 0, 0, 0))}).format(DecodeFormat.PREFER_ARGB_8888).fitCenter().into(fragmentCardDetailBinding.backgroundImage);
        this.changePin = detailCardViewInputModel.getChangePin();
        this.cardBindingData.getCardNumber().set(detailCardViewInputModel.getCardNumber());
        this.cardBindingData.getTitleName().set(detailCardViewInputModel.getTitleName());
        this.cardBindingData.getTitleBalance().set(detailCardViewInputModel.getTitleBalance());
        this.cardBindingData.getBalance().set(detailCardViewInputModel.getBalance());
        ParallaxAdapter parallaxAdapter = getParallaxAdapter();
        if (parallaxAdapter == null) {
            return;
        }
        if (parallaxAdapter == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.root.card.CardDetailAdapter");
        }
        refreshAdapter(detailCardViewInputModel, (CardDetailAdapter) parallaxAdapter);
    }

    public final void updateBalance(String str) {
        Intrinsics.checkParameterIsNotNull(str, "balance");
        this.cardBindingData.getBalance().set(str);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void refreshAdapter(ru.rocketbank.r2d2.root.card.binding.DetailCardViewInputModel r7, ru.rocketbank.r2d2.root.card.CardDetailAdapter r8) {
        /*
        r6 = this;
        r8.clearAll();
        r0 = 2131820882; // 0x7f110152 float:1.9274491E38 double:1.053259461E-314;
        r0 = r6.getString(r0);
        r1 = "getString(R.string.detail_card)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1);
        r8.addDelimiter(r0);
        r0 = r7.getCardParameters();
        r1 = r7.getAndroidPayParameters();
        r7 = r7.getSPayParameters();
        r2 = r7.getShowSpButton();
        r3 = 0;
        if (r2 == 0) goto L_0x0045;
    L_0x0025:
        r2 = r7.getTextRes();
        r2 = r6.getString(r2);
        r4 = r7.getClickFun();
        if (r4 == 0) goto L_0x003c;
    L_0x0033:
        r4 = new ru.rocketbank.r2d2.root.card.CardDetailFragment$refreshAdapter$click$1;
        r4.<init>(r7);
        r7 = r4;
        r7 = (kotlin.jvm.functions.Function1) r7;
        goto L_0x003d;
    L_0x003c:
        r7 = r3;
    L_0x003d:
        r4 = "title";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r4);
        r8.addSPay(r2, r7);
    L_0x0045:
        r7 = r1.getShowIt();
        if (r7 == 0) goto L_0x0062;
    L_0x004b:
        r7 = r1.getItemTextRes();
        r7 = r6.getString(r7);
        r2 = "getString(androidPayParameters.itemTextRes)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r7, r2);
        r2 = new ru.rocketbank.r2d2.root.card.CardDetailFragment$refreshAdapter$1;
        r2.<init>(r6, r1);
        r2 = (kotlin.jvm.functions.Function1) r2;
        r8.addAndroidPay(r7, r2);
    L_0x0062:
        r7 = 2131821407; // 0x7f11035f float:1.9275556E38 double:1.0532597203E-314;
        r7 = r6.getString(r7);
        r1 = "getString(R.string.pa_tariff)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r7, r1);
        r1 = r0.getTariffName();
        r2 = new ru.rocketbank.r2d2.root.card.CardDetailFragment$refreshAdapter$2;
        r2.<init>(r6);
        r2 = (kotlin.jvm.functions.Function1) r2;
        r8.addRightArrow(r7, r3, r1, r2);
        r7 = 2131821400; // 0x7f110358 float:1.9275542E38 double:1.053259717E-314;
        r7 = r6.getString(r7);
        r1 = "getString(R.string.pa_notification)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r7, r1);
        r1 = r0.getNotificationName();
        r2 = new ru.rocketbank.r2d2.root.card.CardDetailFragment$refreshAdapter$3;
        r2.<init>(r6);
        r2 = (kotlin.jvm.functions.Function1) r2;
        r8.addRightArrow(r7, r3, r1, r2);
        r7 = 2131821395; // 0x7f110353 float:1.9275532E38 double:1.0532597143E-314;
        r7 = r6.getString(r7);
        r1 = "getString(R.string.pa_change_pin)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r7, r1);
        r1 = new ru.rocketbank.r2d2.root.card.CardDetailFragment$refreshAdapter$4;
        r1.<init>(r6);
        r1 = (kotlin.jvm.functions.Function1) r1;
        r8.addRightArrow(r7, r1);
        r7 = r6.cardPresenter;
        if (r7 != 0) goto L_0x00b5;
    L_0x00b0:
        r1 = "cardPresenter";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1);
    L_0x00b5:
        r7 = r7.isRoubleCard();
        r1 = r6.cardBindingData;
        r1 = r1.isRoubleCard();
        r1.set(r7);
        if (r7 == 0) goto L_0x00da;
    L_0x00c4:
        r7 = 2131821696; // 0x7f110480 float:1.9276142E38 double:1.053259863E-314;
        r7 = r6.getString(r7);
        r1 = "getString(R.string.transfer_card2card)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r7, r1);
        r1 = new ru.rocketbank.r2d2.root.card.CardDetailFragment$refreshAdapter$5;
        r1.<init>(r6);
        r1 = (kotlin.jvm.functions.Function1) r1;
        r8.addRightArrow(r7, r1);
    L_0x00da:
        r7 = r6.extracts;
        if (r7 == 0) goto L_0x00f4;
    L_0x00de:
        r7 = 2131821488; // 0x7f1103b0 float:1.927572E38 double:1.0532597603E-314;
        r7 = r6.getString(r7);
        r1 = "getString(R.string.references)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r7, r1);
        r1 = new ru.rocketbank.r2d2.root.card.CardDetailFragment$refreshAdapter$6;
        r1.<init>(r6);
        r1 = (kotlin.jvm.functions.Function1) r1;
        r8.addRightArrow(r7, r1);
    L_0x00f4:
        r7 = 2131820575; // 0x7f11001f float:1.9273869E38 double:1.053259309E-314;
        r7 = r6.getString(r7);
        r1 = "getString(R.string.account_detail)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r7, r1);
        r1 = new ru.rocketbank.r2d2.root.card.CardDetailFragment$refreshAdapter$7;
        r1.<init>(r6);
        r1 = (kotlin.jvm.functions.Function1) r1;
        r8.addRightArrow(r7, r1);
        r7 = 2131821446; // 0x7f110386 float:1.9275635E38 double:1.0532597395E-314;
        r7 = r6.getString(r7);
        r1 = "getString(R.string.precautions)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r7, r1);
        r1 = new ru.rocketbank.r2d2.root.card.CardDetailFragment$refreshAdapter$8;
        r1.<init>(r6, r0);
        r1 = (kotlin.jvm.functions.Function1) r1;
        r8.addRightArrow(r7, r1);
        r7 = r0.getLockStatusName();
        r1 = r0.getLockStatusColor();
        r2 = new ru.rocketbank.r2d2.root.card.CardDetailFragment$refreshAdapter$9;
        r2.<init>(r6, r0);
        r2 = (kotlin.jvm.functions.Function0) r2;
        r8.addLockButton(r7, r1, r2);
        r7 = r6.getResources();
        r1 = 2130903051; // 0x7f03000b float:1.741291E38 double:1.052805992E-314;
        r7 = r7.getStringArray(r1);
        r1 = java.util.Calendar.getInstance();
        r2 = 2;
        r1 = r1.get(r2);
        r7 = r7[r1];
        r1 = r6.getResources();
        r2 = 2131821185; // 0x7f110281 float:1.9275106E38 double:1.0532596106E-314;
        r3 = 1;
        r4 = new java.lang.Object[r3];
        r5 = 0;
        r4[r5] = r7;
        r7 = r1.getString(r2, r4);
        r1 = "resources.getString(R.st…limits_this_month, month)";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r7, r1);
        r8.addDelimiter(r7);
        r7 = r0.getLimits();
        r7 = r7.entrySet();
        r7 = r7.iterator();
    L_0x016d:
        r0 = r7.hasNext();
        if (r0 == 0) goto L_0x01be;
    L_0x0173:
        r0 = r7.next();
        r0 = (java.util.Map.Entry) r0;
        r1 = r0.getKey();
        r1 = (java.lang.String) r1;
        r0 = r0.getValue();
        r0 = (java.util.ArrayList) r0;
        r8.addUpperCaseDelimiter(r1);
        r0 = (java.lang.Iterable) r0;
        r0 = r0.iterator();
    L_0x018e:
        r1 = r0.hasNext();
        if (r1 == 0) goto L_0x016d;
    L_0x0194:
        r1 = r0.next();
        r1 = (ru.rocketbank.core.model.Limit) r1;
        r2 = r1.getLimits();
        if (r2 == 0) goto L_0x01a8;
    L_0x01a0:
        r2 = r2.get(r5);
        r2 = (java.lang.String) r2;
        if (r2 != 0) goto L_0x01aa;
    L_0x01a8:
        r2 = "";
    L_0x01aa:
        r1 = r1.getLimits();
        if (r1 == 0) goto L_0x01b8;
    L_0x01b0:
        r1 = r1.get(r3);
        r1 = (java.lang.String) r1;
        if (r1 != 0) goto L_0x01ba;
    L_0x01b8:
        r1 = "";
    L_0x01ba:
        r8.addLimit(r2, r1);
        goto L_0x018e;
    L_0x01be:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.root.card.CardDetailFragment.refreshAdapter(ru.rocketbank.r2d2.root.card.binding.DetailCardViewInputModel, ru.rocketbank.r2d2.root.card.CardDetailAdapter):void");
    }

    public final void createAndroidPayPWallet() {
        UiTapAndPay uiTapAndPay = this.uiTapAndPay;
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
        uiTapAndPay.createWallet$d556c41(activity).subscribe();
    }

    public final void addCartToApWithGreenWay() {
        ru.rocketbank.r2d2.root.devidepayment.ap.APAddCardActivity.Companion companion = APAddCardActivity.Companion;
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
        Activity activity2 = activity;
        FragmentCardDetailBinding fragmentCardDetailBinding = this.binding;
        if (fragmentCardDetailBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        CardBindingData cardBindingData = fragmentCardDetailBinding.getCardBindingData();
        if (cardBindingData == null) {
            Intrinsics.throwNpe();
        }
        Object obj = cardBindingData.getTitleName().get();
        if (obj == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(obj, "binding.cardBindingData!!.titleName.get()!!");
        String str = (String) obj;
        FragmentCardDetailBinding fragmentCardDetailBinding2 = this.binding;
        if (fragmentCardDetailBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        CardBindingData cardBindingData2 = fragmentCardDetailBinding2.getCardBindingData();
        if (cardBindingData2 == null) {
            Intrinsics.throwNpe();
        }
        Object obj2 = cardBindingData2.getCardNumber().get();
        if (obj2 == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(obj2, "binding.cardBindingData!!.cardNumber.get()!!");
        String str2 = (String) obj2;
        String str3 = this.token;
        if (str3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("token");
        }
        companion.startForResult(activity2, str, str2, str3, REQUEST_AP_ADD_CARD);
    }

    public final void addCardToSpWithGreenWay() {
        ru.rocketbank.r2d2.root.devidepayment.sp.SPAddCardActivity.Companion companion = SPAddCardActivity.Companion;
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
        Activity activity2 = activity;
        String str = this.token;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("token");
        }
        companion.startForResult(activity2, str, REQUEST_SP_ADD_CARD);
    }

    public final void showSpaySetupDialog() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            new Builder(activity).setPositiveButton(17039370, new CardDetailFragment$showSpaySetupDialog$$inlined$let$lambda$1(this)).setNegativeButton(17039360, CardDetailFragment$showSpaySetupDialog$1$2.INSTANCE).setCancelable$184cab27().setTitle(C0859R.string.samsung_pay).setMessage(C0859R.string.spay_setup_message).create().show();
        }
    }

    public final void showSpayUpdateDialog() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            new Builder(activity).setPositiveButton(17039370, new CardDetailFragment$showSpayUpdateDialog$$inlined$let$lambda$1(this)).setNegativeButton(17039360, CardDetailFragment$showSpayUpdateDialog$1$2.INSTANCE).setCancelable$184cab27().setTitle(C0859R.string.samsung_pay).setMessage(C0859R.string.spay_update_message).create().show();
        }
    }

    public final void addCardToSp() {
        addCardToSpWithGreenWay();
    }

    public final void startManageAndroidPay(String str, boolean z) {
        Intrinsics.checkParameterIsNotNull(str, "tur");
        ru.rocketbank.r2d2.root.devidepayment.ap.APManageCardActivity.Companion companion = APManageCardActivity.Companion;
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
        companion.startForResult(activity, str, z ^ 1, REQUEST_AP_MANAGE_CARD);
    }

    public final void startCanDeleteOnly(String str) {
        Intrinsics.checkParameterIsNotNull(str, "tur");
        ru.rocketbank.r2d2.root.devidepayment.ap.APManageCardActivity.Companion companion = APManageCardActivity.Companion;
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
        companion.startForResult(activity, str, false, REQUEST_AP_MANAGE_CARD);
    }

    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1) {
            if (i == REQUEST_AP_MANAGE_CARD) {
                i = this.cardPresenter;
                if (i == 0) {
                    Intrinsics.throwUninitializedPropertyAccessException("cardPresenter");
                }
                i.refresh();
            } else if (i == REQUEST_AP_ADD_CARD) {
                i = this.cardPresenter;
                if (i == 0) {
                    Intrinsics.throwUninitializedPropertyAccessException("cardPresenter");
                }
                i.cardAddedToAP();
                getInjector().getAnalyticsManager();
                AnalyticsManager.cardAddedViaGooglePay();
            } else if (i == REQUEST_AP_CREATE_WALLET) {
                i = this.cardPresenter;
                if (i == 0) {
                    Intrinsics.throwUninitializedPropertyAccessException("cardPresenter");
                }
                i.walletCreated();
            }
        }
    }

    public final void updateCardStatus(Pair<Boolean, Boolean> pair) {
        Intrinsics.checkParameterIsNotNull(pair, "status");
        this.androidPayIsAdd = ((Boolean) pair.getFirst()).booleanValue() ^ 1;
        this.isCardDefault = ((Boolean) pair.getSecond()).booleanValue();
    }

    public final void openTransfers() {
        ru.rocketbank.r2d2.activities.safe.TransferActivity.Companion companion = TransferActivity.Companion;
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
        Context context = activity;
        String str = this.token;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("token");
        }
        companion.startActivity(context, str);
    }

    private final void lockUnlockCard(boolean z) {
        if (z) {
            unlockCard();
        } else {
            lockCard();
        }
    }

    private final void unlockCard() {
        showSpinnerText(getString(C0859R.string.card_unblock_in_progress));
        CardPresenter cardPresenter = this.cardPresenter;
        if (cardPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardPresenter");
        }
        cardPresenter.unlockCard(new CardDetailFragment$unlockCard$1(this), new CardDetailFragment$unlockCard$2(this));
    }

    private final void lockCard() {
        showSpinnerText(getResources().getString(C0859R.string.card_block_in_progress));
        CardPresenter cardPresenter = this.cardPresenter;
        if (cardPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardPresenter");
        }
        cardPresenter.lockCard(new CardDetailFragment$lockCard$1(this), new CardDetailFragment$lockCard$2(this));
    }

    private final void onTariffClick(String str) {
        ru.rocketbank.r2d2.activities.tariffs.TariffsActivity.Companion companion = TariffsActivity.Companion;
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
        companion.start(context, str);
    }

    private final void onNotificationCLick() {
        try {
            ru.rocketbank.r2d2.widgets.NotificationDialog.Companion companion = NotificationDialog.Companion;
            String str = this.token;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException("token");
            }
            this.notificationDialog = companion.createNotificationDialog(str);
            NotificationDialog notificationDialog = this.notificationDialog;
            if (notificationDialog == null) {
                Intrinsics.throwNpe();
            }
            notificationDialog.show(getFragmentManager(), "NotificationFragment");
            notificationDialog = this.notificationDialog;
            if (notificationDialog == null) {
                Intrinsics.throwNpe();
            }
            CardPresenter cardPresenter = this.cardPresenter;
            if (cardPresenter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cardPresenter");
            }
            notificationDialog.setNotificationDialogListener(cardPresenter);
        } catch (Throwable th) {
            AnalyticsManager.logException(th);
        }
    }

    private final void setupToolbar() {
        FragmentCardDetailBinding fragmentCardDetailBinding = this.binding;
        if (fragmentCardDetailBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        Toolbar toolbar = fragmentCardDetailBinding.toolbarReal;
        FragmentCardDetailBinding fragmentCardDetailBinding2 = this.binding;
        if (fragmentCardDetailBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        Toolbar toolbar2 = fragmentCardDetailBinding2.toolbar;
        toolbar.inflateMenu(C0859R.menu.menu_card);
        toolbar2.inflateMenu(C0859R.menu.menu_card);
        DrawerArrowDrawable drawerArrowDrawable = new DrawerArrowDrawable(getActivity());
        drawerArrowDrawable.setProgress(BitmapDescriptorFactory.HUE_RED);
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        drawerArrowDrawable.setColor(ContextCompat.getColor(activity, C0859R.color.white));
        DrawerArrowDrawable drawerArrowDrawable2 = new DrawerArrowDrawable(getActivity());
        drawerArrowDrawable2.setProgress(BitmapDescriptorFactory.HUE_RED);
        FragmentActivity activity2 = getActivity();
        if (activity2 == null) {
            Intrinsics.throwNpe();
        }
        drawerArrowDrawable2.setColor(ContextCompat.getColor(activity2, C0859R.color.rocketBlack));
        this.cardBindingData.getToolbarWhiteBackDrawable().set(drawerArrowDrawable);
        this.cardBindingData.getToolbarBackDrawable().set(drawerArrowDrawable2);
        toolbar.setNavigationOnClickListener(this.navigationOnClickListener);
        toolbar2.setNavigationOnClickListener(this.navigationOnClickListener);
        toolbar.setOnMenuItemClickListener(new CardDetailFragment$setupToolbar$1(this));
        toolbar2.setOnMenuItemClickListener(new CardDetailFragment$setupToolbar$2(this));
    }

    private final void rename() {
        String str = this.token;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("token");
        }
        this.renameDialogFragment = RenameDialogFragment.getInstance(str, Boolean.TRUE, null);
        RenameDialogFragment renameDialogFragment = this.renameDialogFragment;
        if (renameDialogFragment == null) {
            Intrinsics.throwNpe();
        }
        renameDialogFragment.show(getSupportFragmentManager(), null);
    }

    private final void showSupport() {
        FragmentActivity activity = getActivity();
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.activities.MainActivity");
        }
        ((MainActivity) activity).showSupport();
    }
}
