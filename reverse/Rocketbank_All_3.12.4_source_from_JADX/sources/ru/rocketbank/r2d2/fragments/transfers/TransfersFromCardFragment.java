package ru.rocketbank.r2d2.fragments.transfers;

import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.PopupMenu;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.StaggeredGridLayoutManager;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import de.greenrobot.event.EventBus;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.events.NextButtonEvent;
import ru.rocketbank.core.manager.TemplateManager;
import ru.rocketbank.core.model.CardData;
import ru.rocketbank.core.model.CardModel;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.network.api.AccountApi;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.widgets.CardViewMini.CardActionsListener;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.SecuredActivity;
import ru.rocketbank.r2d2.activities.c2c.CardTransferAmountActivity;
import ru.rocketbank.r2d2.adapters.card.CardChangeListener;
import ru.rocketbank.r2d2.adapters.card.CardsListAdapter;
import ru.rocketbank.r2d2.data.binding.card.CardAbilityData;
import ru.rocketbank.r2d2.data.binding.card.CardAbilityHandler;
import ru.rocketbank.r2d2.fragments.NfcRocketFragment;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.fragments.TabFragmentListener;
import rx.Subscriber;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

/* compiled from: TransfersFromCardFragment.kt */
public final class TransfersFromCardFragment extends NfcRocketFragment implements OnClickListener, CardChangeListener, CardAbilityHandler, TabFragmentListener {
    private static final String CARD_DATA = "CARD_DATA";
    private static final String CARD_IS_VALID = "CARD_IS_VALID";
    public static final Companion Companion = new Companion();
    private HashMap _$_findViewCache;
    private CardAbilityData abilityData;
    public AccountApi accountApi;
    public Authorization authorization;
    private Button btnNext;
    private CardData cardData = new CardData("", "", "");
    private boolean cardIsValid;
    private CardsListAdapter listAdapter;
    public RecyclerView recyclerView;
    public TemplateManager templateManager;
    private UserModel userModel;

    /* compiled from: TransfersFromCardFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final TransfersFromCardFragment newInstance() {
            return new TransfersFromCardFragment();
        }
    }

    /* compiled from: TransfersFromCardFragment.kt */
    public final class MiniCardListener implements CardActionsListener {
        public final void onActionRequested(CardModel cardModel, View view) {
            Intrinsics.checkParameterIsNotNull(cardModel, "cardModel");
            Intrinsics.checkParameterIsNotNull(view, "view");
            TransfersFromCardFragment.this.createPopUpMenu(cardModel, view);
        }
    }

    public static final TransfersFromCardFragment newInstance() {
        return Companion.newInstance();
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

    public final void onClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
    }

    public final /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final void updateNextButton(Fragment fragment) {
    }

    public final void onPressedPhoto(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        if ((getActivity() instanceof SecuredActivity) != null) {
            view = getActivity();
            if (view == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.activities.SecuredActivity");
            }
            ((SecuredActivity) view).takeAShot();
        }
    }

    public final AccountApi getAccountApi() {
        AccountApi accountApi = this.accountApi;
        if (accountApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountApi");
        }
        return accountApi;
    }

    public final void setAccountApi(AccountApi accountApi) {
        Intrinsics.checkParameterIsNotNull(accountApi, "<set-?>");
        this.accountApi = accountApi;
    }

    public final Authorization getAuthorization() {
        Authorization authorization = this.authorization;
        if (authorization == null) {
            Intrinsics.throwUninitializedPropertyAccessException("authorization");
        }
        return authorization;
    }

    public final void setAuthorization(Authorization authorization) {
        Intrinsics.checkParameterIsNotNull(authorization, "<set-?>");
        this.authorization = authorization;
    }

    public final TemplateManager getTemplateManager() {
        TemplateManager templateManager = this.templateManager;
        if (templateManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateManager");
        }
        return templateManager;
    }

    public final void setTemplateManager(TemplateManager templateManager) {
        Intrinsics.checkParameterIsNotNull(templateManager, "<set-?>");
        this.templateManager = templateManager;
    }

    public final RecyclerView getRecyclerView() {
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        return recyclerView;
    }

    public final void setRecyclerView(RecyclerView recyclerView) {
        Intrinsics.checkParameterIsNotNull(recyclerView, "<set-?>");
        this.recyclerView = recyclerView;
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        return layoutInflater.inflate(C0859R.layout.refill_from_card_fragment, viewGroup, false);
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        this.accountApi = getInjector().getAccountApi();
        this.authorization = getInjector().getAuthorization();
        this.templateManager = getInjector().getTemplateManager();
        view = view.findViewById(C0859R.id.cardRefillList);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.RecyclerView");
        }
        this.recyclerView = (RecyclerView) view;
        if (bundle != null) {
            view = bundle.getParcelable(CARD_DATA);
            Intrinsics.checkExpressionValueIsNotNull(view, "savedInstanceState.getParcelable(CARD_DATA)");
            this.cardData = (CardData) view;
            this.cardIsValid = bundle.getBoolean(CARD_IS_VALID);
        }
        this.abilityData = new CardAbilityData();
        view = getActivity();
        if (view == null) {
            Intrinsics.throwNpe();
        }
        view = view.findViewById(C0859R.id.next);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.Button");
        }
        this.btnNext = (Button) view;
        view = this.recyclerView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        view.setLayoutManager((LayoutManager) new StaggeredGridLayoutManager(2, 1));
        if (this.listAdapter == null) {
            CardActionsListener cardActionsListener = (CardActionsListener) new MiniCardListener();
            CardChangeListener cardChangeListener = this;
            OnClickListener onClickListener = this;
            CardAbilityData cardAbilityData = this.abilityData;
            if (cardAbilityData == null) {
                Intrinsics.throwUninitializedPropertyAccessException("abilityData");
            }
            this.listAdapter = new CardsListAdapter(cardActionsListener, cardChangeListener, onClickListener, false, cardAbilityData, this);
        }
        view = this.listAdapter;
        if (view == null) {
            Intrinsics.throwNpe();
        }
        view.initializeCardData(this.cardData);
        view = this.recyclerView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        view.setAdapter((Adapter) this.listAdapter);
    }

    public final void cardChanged(CardData cardData) {
        Intrinsics.checkParameterIsNotNull(cardData, "cardData");
        this.cardData = cardData;
    }

    public final void cardValid() {
        setNextButtonEnabled(true);
    }

    public final void cardInvalid() {
        setNextButtonEnabled(false);
    }

    private final void setNextButtonEnabled(boolean z) {
        Fragment parentFragment = getParentFragment();
        if (parentFragment == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.transfers.TransferTabFragment");
        }
        if (((TransferTabFragment) parentFragment).getCurrentFragment() instanceof TransfersFromCardFragment) {
            this.cardIsValid = z;
            Button button = this.btnNext;
            if (button != null) {
                button.setEnabled(z);
            }
        }
    }

    public final void smallCardPressed(CardModel cardModel) {
        Intrinsics.checkParameterIsNotNull(cardModel, "cardModel");
        ru.rocketbank.r2d2.activities.c2c.CardTransferAmountActivity.Companion companion = CardTransferAmountActivity.Companion;
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
        companion.newInstance(activity, cardModel, null);
    }

    public final void onUserModel(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        super.onUserModel(userModel);
        this.userModel = userModel;
    }

    private final void createPopUpMenu(CardModel cardModel, View view) {
        PopupMenu popupMenu = new PopupMenu(view.getContext(), view);
        popupMenu.setGravity(8388661);
        popupMenu.inflate(C0859R.menu.menu_card_actions);
        MenuItem findItem = popupMenu.getMenu().findItem(C0859R.id.item_delete);
        Intrinsics.checkExpressionValueIsNotNull(findItem, "menuItem");
        SpannableString spannableString = new SpannableString(findItem.getTitle());
        spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(view.getContext(), C0859R.color.red_delete)), 0, spannableString.length(), 0);
        findItem.setTitle(spannableString);
        popupMenu.setOnMenuItemClickListener(new TransfersFromCardFragment$createPopUpMenu$1(this, view, cardModel));
        popupMenu.show();
    }

    public final void onResume() {
        super.onResume();
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
        PackageManager packageManager = activity.getPackageManager();
        CardAbilityData cardAbilityData = this.abilityData;
        if (cardAbilityData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("abilityData");
        }
        cardAbilityData.updateAbility(packageManager.hasSystemFeature("android.hardware.nfc"), packageManager.hasSystemFeature("android.hardware.camera"));
        Fragment parentFragment = getParentFragment();
        if (parentFragment == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.fragments.transfers.TransferTabFragment");
        }
        if (((TransferTabFragment) parentFragment).getCurrentFragment() instanceof TransfersFromCardFragment) {
            setBtnNext();
        }
        TemplateManager templateManager = this.templateManager;
        if (templateManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("templateManager");
        }
        templateManager.getTemplates().subscribe((Subscriber) new TransfersFromCardFragment$onResume$1(this));
    }

    private final void hideCard(CardModel cardModel) {
        RocketFragment.showSpinner$default(this, 0, 1, null);
        AccountApi accountApi = this.accountApi;
        if (accountApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountApi");
        }
        accountApi.removeLinkedTransfersCard(cardModel.getToken(), "").subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new TransfersFromCardFragment$hideCard$1(this, cardModel));
    }

    public final void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        bundle.putParcelable(CARD_DATA, this.cardData);
        bundle.putBoolean(CARD_IS_VALID, this.cardIsValid);
        super.onSaveInstanceState(bundle);
    }

    private final void continueWithNewCard() {
        ru.rocketbank.r2d2.activities.c2c.CardTransferAmountActivity.Companion companion = CardTransferAmountActivity.Companion;
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
        companion.newInstance(activity, null, this.cardData);
    }

    public final void onSelected() {
        setBtnNext();
    }

    private final void setBtnNext() {
        EventBus.getDefault().post(new NextButtonEvent(this, this.cardIsValid, Integer.valueOf(0), getString(C0859R.string.next_cap)));
    }

    public final void onNextButtonClick() {
        continueWithNewCard();
    }
}
