package ru.rocketbank.r2d2.fragments.refill.card;

import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.PopupMenu;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.StaggeredGridLayoutManager;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.TemplateManager;
import ru.rocketbank.core.model.CardData;
import ru.rocketbank.core.model.CardModel;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.network.api.AccountApi;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.widgets.CardViewMini;
import ru.rocketbank.core.widgets.CardViewMini.CardActionsListener;
import ru.rocketbank.r2d2.ActionBarTitleInstaller;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.AbstractActivity;
import ru.rocketbank.r2d2.activities.c2c.CardRefillAmountActivity;
import ru.rocketbank.r2d2.activities.c2c.CvvEnterActivity;
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

/* compiled from: RefillFromCardFragment.kt */
public final class RefillFromCardFragment extends NfcRocketFragment implements OnClickListener, ActionBarTitleInstaller, CardChangeListener, CardAbilityHandler, TabFragmentListener {
    private static final String CARD_DATA = "CARD_DATA";
    public static final Companion Companion = new Companion();
    private static final String TAG = "RefillCard";
    private HashMap _$_findViewCache;
    private CardAbilityData abilityData;
    public AccountApi accountApi;
    public Authorization authorization;
    private Button btnNext;
    private CardData cardData = new CardData("", "", "");
    private CardsListAdapter listAdapter;
    private RecyclerView recyclerView;
    private StaggeredGridLayoutManager staggeredGridLayoutManager;
    public TemplateManager templateManager;
    private UserModel userModel;

    /* compiled from: RefillFromCardFragment.kt */
    public static final class Companion {
        private static /* synthetic */ void CARD_DATA$annotations() {
        }

        private static /* synthetic */ void TAG$annotations() {
        }

        private Companion() {
        }

        public final RefillFromCardFragment newInstance() {
            return new RefillFromCardFragment();
        }
    }

    /* compiled from: RefillFromCardFragment.kt */
    public final class MiniCardListener implements CardActionsListener {
        public final void onActionRequested(CardModel cardModel, View view) {
            Intrinsics.checkParameterIsNotNull(cardModel, "cardModel");
            Intrinsics.checkParameterIsNotNull(view, "view");
            RefillFromCardFragment.this.createPopUpMenu(cardModel, view);
        }
    }

    public static final RefillFromCardFragment newInstance() {
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

    public final /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final void onNextButtonClick() {
    }

    public final void updateNextButton(Fragment fragment) {
    }

    public final void onPressedPhoto(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        if ((getActivity() instanceof AbstractActivity) != null) {
            view = getActivity();
            if (view == null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.activities.AbstractActivity");
            }
            ((AbstractActivity) view).takeAShot();
        }
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

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = layoutInflater.inflate(C0859R.layout.refill_from_card_fragment, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "inflater.inflate(R.layou…agment, container, false)");
        return layoutInflater;
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        if (bundle != null) {
            bundle = bundle.getParcelable(CARD_DATA);
            Intrinsics.checkExpressionValueIsNotNull(bundle, "savedInstanceState.getPa…able<CardData>(CARD_DATA)");
            this.cardData = (CardData) bundle;
        }
        this.templateManager = getInjector().getTemplateManager();
        this.accountApi = getInjector().getAccountApi();
        this.authorization = getInjector().getAuthorization();
        this.abilityData = new CardAbilityData();
        view = view.findViewById(C0859R.id.cardRefillList);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.RecyclerView");
        }
        this.recyclerView = (RecyclerView) view;
        view = getActivity();
        if (view == null) {
            Intrinsics.throwNpe();
        }
        view = view.findViewById(C0859R.id.btnNext);
        if (view == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.Button");
        }
        this.btnNext = (Button) view;
        view = this.btnNext;
        if (view == null) {
            Intrinsics.throwNpe();
        }
        view.setVisibility(null);
        this.staggeredGridLayoutManager = new StaggeredGridLayoutManager(2, 1);
        view = this.staggeredGridLayoutManager;
        if (view == null) {
            Intrinsics.throwNpe();
        }
        view.setGapStrategy(2);
        view = this.recyclerView;
        if (view == null) {
            Intrinsics.throwNpe();
        }
        view.setLayoutManager((LayoutManager) this.staggeredGridLayoutManager);
        if (this.listAdapter == null) {
            CardActionsListener cardActionsListener = (CardActionsListener) new MiniCardListener();
            CardChangeListener cardChangeListener = this;
            OnClickListener onClickListener = this;
            CardAbilityData cardAbilityData = this.abilityData;
            if (cardAbilityData == null) {
                Intrinsics.throwUninitializedPropertyAccessException("abilityData");
            }
            this.listAdapter = new CardsListAdapter(cardActionsListener, cardChangeListener, onClickListener, true, cardAbilityData, this);
        }
        view = this.listAdapter;
        if (view == null) {
            Intrinsics.throwNpe();
        }
        view.initializeCardData(this.cardData);
        view = this.recyclerView;
        if (view == null) {
            Intrinsics.throwNpe();
        }
        view.setAdapter((Adapter) this.listAdapter);
        view = this.btnNext;
        if (view == null) {
            Intrinsics.throwNpe();
        }
        view.setOnClickListener(this);
    }

    public final void cardChanged(CardData cardData) {
        Intrinsics.checkParameterIsNotNull(cardData, "cardData");
        this.cardData = cardData;
    }

    public final void cardValid() {
        Button button = this.btnNext;
        if (button == null) {
            Intrinsics.throwNpe();
        }
        button.setVisibility(0);
        button = this.btnNext;
        if (button == null) {
            Intrinsics.throwNpe();
        }
        button.setEnabled(true);
    }

    public final void cardInvalid() {
        Button button = this.btnNext;
        if (button == null) {
            Intrinsics.throwNpe();
        }
        button.setVisibility(4);
        button = this.btnNext;
        if (button == null) {
            Intrinsics.throwNpe();
        }
        button.setEnabled(false);
    }

    public final void smallCardPressed(CardModel cardModel) {
        Intrinsics.checkParameterIsNotNull(cardModel, "cardModel");
        ru.rocketbank.r2d2.activities.c2c.CvvEnterActivity.Companion companion = CvvEnterActivity.Companion;
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
        companion.newInstance(activity, cardModel);
    }

    public final void onUserModel(UserModel userModel) {
        Intrinsics.checkParameterIsNotNull(userModel, "userModel");
        super.onUserModel(userModel);
        this.userModel = userModel;
        setUserDetails();
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
        Button button = this.btnNext;
        if (button != null) {
            button.setVisibility(0);
        }
    }

    public final void onPause() {
        this.cardData = new CardData(this.cardData.getPan(), this.cardData.getExpirationDate(), "");
        CardsListAdapter cardsListAdapter = this.listAdapter;
        if (cardsListAdapter == null) {
            Intrinsics.throwNpe();
        }
        cardsListAdapter.initializeCardData(this.cardData);
        super.onPause();
    }

    private final void createPopUpMenu(CardModel cardModel, View view) {
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        PopupMenu popupMenu = new PopupMenu(activity, view);
        popupMenu.setGravity(8388661);
        popupMenu.inflate(C0859R.menu.menu_card_actions);
        MenuItem findItem = popupMenu.getMenu().findItem(C0859R.id.item_delete);
        Intrinsics.checkExpressionValueIsNotNull(findItem, "menuItem");
        SpannableString spannableString = new SpannableString(findItem.getTitle());
        spannableString.setSpan(new ForegroundColorSpan(getResources().getColor(C0859R.color.red_delete)), 0, spannableString.length(), 0);
        findItem.setTitle(spannableString);
        popupMenu.setOnMenuItemClickListener(new RefillFromCardFragment$createPopUpMenu$1(this, view, cardModel));
        popupMenu.show();
    }

    private final void setUserDetails() {
        if (getActivity() == null) {
            Log.e(TAG, "No activity");
            return;
        }
        CardsListAdapter cardsListAdapter = this.listAdapter;
        if (cardsListAdapter == null) {
            Intrinsics.throwNpe();
        }
        UserModel userModel = this.userModel;
        if (userModel == null) {
            Intrinsics.throwNpe();
        }
        List linkedCards = userModel.getLinkedCards();
        Intrinsics.checkExpressionValueIsNotNull(linkedCards, "userModel!!.linkedCards");
        cardsListAdapter.setData(linkedCards);
    }

    private final void hideCard(CardModel cardModel) {
        RocketFragment.showSpinner$default(this, 0, 1, null);
        AccountApi accountApi = this.accountApi;
        if (accountApi == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountApi");
        }
        accountApi.hideCard(cardModel.getToken(), "").subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new RefillFromCardFragment$hideCard$1(this, cardModel));
    }

    public final void onClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        if (view.getId() != C0859R.id.btnNext) {
            if (view instanceof CardViewMini) {
                RecyclerView recyclerView = this.recyclerView;
                if (recyclerView == null) {
                    Intrinsics.throwNpe();
                }
                int childLayoutPosition = recyclerView.getChildLayoutPosition(view);
                CardsListAdapter cardsListAdapter = this.listAdapter;
                if (cardsListAdapter == null) {
                    Intrinsics.throwNpe();
                }
                CardModel cardModel = cardsListAdapter.getCardModel(childLayoutPosition);
                ru.rocketbank.r2d2.activities.c2c.CvvEnterActivity.Companion companion = CvvEnterActivity.Companion;
                view = ((CardViewMini) view).getContext();
                Intrinsics.checkExpressionValueIsNotNull(view, "v.context");
                companion.newInstance(view, cardModel);
            }
            return;
        }
        clickNext();
    }

    private final void clickNext() {
        ru.rocketbank.r2d2.activities.c2c.CardRefillAmountActivity.Companion companion = CardRefillAmountActivity.Companion;
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
        companion.newInstance(activity, this.cardData, null);
    }

    public final void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        bundle.putParcelable(CARD_DATA, this.cardData);
        super.onSaveInstanceState(bundle);
    }

    public final String getActionBarTitle() {
        String string = getResources().getString(C0859R.string.fragment_refill_card_title);
        Intrinsics.checkExpressionValueIsNotNull(string, "resources.getString(R.st…agment_refill_card_title)");
        return string;
    }

    public final void onSelected() {
        Button button = this.btnNext;
        if (button != null) {
            button.setVisibility(0);
        }
        CardsListAdapter cardsListAdapter = this.listAdapter;
        if (cardsListAdapter == null) {
            Intrinsics.throwNpe();
        }
        cardsListAdapter.notifyDataSetChanged();
    }
}
