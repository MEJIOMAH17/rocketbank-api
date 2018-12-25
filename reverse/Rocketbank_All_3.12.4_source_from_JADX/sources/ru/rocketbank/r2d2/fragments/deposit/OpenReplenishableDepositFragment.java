package ru.rocketbank.r2d2.fragments.deposit;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.util.Arrays;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.network.model.Deposit;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.core.widgets.RocketEditText;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.fragments.deposit.NewDepositsFragment.Deposits;
import ru.rocketbank.r2d2.widgets.SwitchCard;
import rx.functions.Action1;

/* compiled from: OpenReplenishableDepositFragment.kt */
public final class OpenReplenishableDepositFragment extends RocketFragment {
    public static final Companion Companion = new Companion();
    private static final String DEPOSITS = "DEPOSITS";
    private HashMap _$_findViewCache;
    private SwitchCard capitalization;
    private View capitalizationContainer;
    private TextView capitalizationText;
    private ViewPager cardsViewPager;
    private Deposit currentDeposit;
    private Deposits deposit;
    private TextView info;
    private EditText moneyEditText;
    private MoneyFormatter moneyFormatter;
    private View nextButton;
    private TextView rateTextView;
    private View refillContainer;
    private TextView refillableInfo;
    private SwitchCard refillableType;
    private Animation shakeAnimation;

    /* compiled from: OpenReplenishableDepositFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public final OpenReplenishableDepositFragment newInstance(Deposits deposits) {
            Intrinsics.checkParameterIsNotNull(deposits, "deposits");
            OpenReplenishableDepositFragment openReplenishableDepositFragment = new OpenReplenishableDepositFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelable(OpenReplenishableDepositFragment.DEPOSITS, deposits);
            openReplenishableDepositFragment.setArguments(bundle);
            return openReplenishableDepositFragment;
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

    public static final /* synthetic */ SwitchCard access$getCapitalization$p(OpenReplenishableDepositFragment openReplenishableDepositFragment) {
        openReplenishableDepositFragment = openReplenishableDepositFragment.capitalization;
        if (openReplenishableDepositFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("capitalization");
        }
        return openReplenishableDepositFragment;
    }

    public static final /* synthetic */ ViewPager access$getCardsViewPager$p(OpenReplenishableDepositFragment openReplenishableDepositFragment) {
        openReplenishableDepositFragment = openReplenishableDepositFragment.cardsViewPager;
        if (openReplenishableDepositFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardsViewPager");
        }
        return openReplenishableDepositFragment;
    }

    public static final /* synthetic */ Deposits access$getDeposit$p(OpenReplenishableDepositFragment openReplenishableDepositFragment) {
        openReplenishableDepositFragment = openReplenishableDepositFragment.deposit;
        if (openReplenishableDepositFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deposit");
        }
        return openReplenishableDepositFragment;
    }

    public static final /* synthetic */ EditText access$getMoneyEditText$p(OpenReplenishableDepositFragment openReplenishableDepositFragment) {
        openReplenishableDepositFragment = openReplenishableDepositFragment.moneyEditText;
        if (openReplenishableDepositFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("moneyEditText");
        }
        return openReplenishableDepositFragment;
    }

    public static final /* synthetic */ SwitchCard access$getRefillableType$p(OpenReplenishableDepositFragment openReplenishableDepositFragment) {
        openReplenishableDepositFragment = openReplenishableDepositFragment.refillableType;
        if (openReplenishableDepositFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("refillableType");
        }
        return openReplenishableDepositFragment;
    }

    private final CurrencyManager getCurrencyManager() {
        return getInjector().getCurrencyManager();
    }

    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(layoutInflater, "inflater");
        layoutInflater = layoutInflater.inflate(C0859R.layout.fragment_open_new_deposit, viewGroup, false);
        viewGroup = getArguments();
        if (viewGroup == null) {
            Intrinsics.throwNpe();
        }
        viewGroup = viewGroup.getParcelable(DEPOSITS);
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "arguments!!.getParcelable(DEPOSITS)");
        this.deposit = (Deposits) viewGroup;
        viewGroup = this.deposit;
        if (viewGroup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deposit");
        }
        if (viewGroup.getDeposits() == null) {
            return null;
        }
        viewGroup = AnimationUtils.loadAnimation(getActivity(), C0859R.anim.shake);
        Intrinsics.checkExpressionValueIsNotNull(viewGroup, "AnimationUtils.loadAnima…n(activity, R.anim.shake)");
        this.shakeAnimation = viewGroup;
        viewGroup = RocketApplication.Companion.getInjector().getAuthorization();
        CurrencyManager currencyManager = getCurrencyManager();
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
        Context context = activity;
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(viewGroup, "authorization");
        MoneyFormatter moneyFormatter = new MoneyFormatter(context, viewGroup, currencyManager);
        moneyFormatter.setFloorAmount(true);
        this.moneyFormatter = moneyFormatter;
        Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "view");
        ViewPager viewPager = (ViewPager) layoutInflater.findViewById(C0859R.id.depositsCard);
        Intrinsics.checkExpressionValueIsNotNull(viewPager, "view.depositsCard");
        this.cardsViewPager = viewPager;
        RocketEditText rocketEditText = (RocketEditText) layoutInflater.findViewById(C0859R.id.moneyEditText);
        Intrinsics.checkExpressionValueIsNotNull(rocketEditText, "view.moneyEditText");
        this.moneyEditText = rocketEditText;
        RocketTextView rocketTextView = (RocketTextView) layoutInflater.findViewById(C0859R.id.percentTextView);
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "view.percentTextView");
        this.rateTextView = rocketTextView;
        SwitchCard switchCard = (SwitchCard) layoutInflater.findViewById(C0859R.id.refillSwitch);
        Intrinsics.checkExpressionValueIsNotNull(switchCard, "view.refillSwitch");
        this.refillableType = switchCard;
        switchCard = (SwitchCard) layoutInflater.findViewById(C0859R.id.capitalizationSwitch);
        Intrinsics.checkExpressionValueIsNotNull(switchCard, "view.capitalizationSwitch");
        this.capitalization = switchCard;
        LinearLayout linearLayout = (LinearLayout) layoutInflater.findViewById(C0859R.id.capitalizationContainer);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "view.capitalizationContainer");
        this.capitalizationContainer = linearLayout;
        rocketTextView = (RocketTextView) layoutInflater.findViewById(C0859R.id.capitalizationText);
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "view.capitalizationText");
        this.capitalizationText = rocketTextView;
        rocketTextView = (RocketTextView) layoutInflater.findViewById(C0859R.id.refillableDepositInfo);
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "view.refillableDepositInfo");
        this.refillableInfo = rocketTextView;
        linearLayout = (LinearLayout) layoutInflater.findViewById(C0859R.id.refillContainer);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "view.refillContainer");
        this.refillContainer = linearLayout;
        rocketTextView = (RocketTextView) layoutInflater.findViewById(C0859R.id.info);
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "view.info");
        this.info = rocketTextView;
        ScrollView scrollView = (ScrollView) layoutInflater.findViewById(C0859R.id.scroll);
        ViewPager viewPager2 = this.cardsViewPager;
        if (viewPager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardsViewPager");
        }
        viewPager2.setPageMargin(getResources().getDimensionPixelOffset(C0859R.dimen.item_offset));
        viewPager2 = this.cardsViewPager;
        if (viewPager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardsViewPager");
        }
        viewPager2.setOffscreenPageLimit(3);
        viewPager2 = this.cardsViewPager;
        if (viewPager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardsViewPager");
        }
        FragmentActivity activity2 = getActivity();
        if (activity2 == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(activity2, "activity!!");
        viewPager2.setAdapter(new OpenReplenishableDepositFragment$onCreateView$1(this, activity2.getSupportFragmentManager()));
        viewPager2 = this.cardsViewPager;
        if (viewPager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cardsViewPager");
        }
        viewPager2.addOnPageChangeListener(new OpenReplenishableDepositFragment$onCreateView$2(this));
        EditText editText = this.moneyEditText;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("moneyEditText");
        }
        EditText editText2 = this.moneyEditText;
        if (editText2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("moneyEditText");
        }
        editText.addTextChangedListener(new OpenReplenishableDepositFragment$onCreateView$3(this, editText2));
        SwitchCard switchCard2 = this.capitalization;
        if (switchCard2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("capitalization");
        }
        switchCard2.getCheckObserver().subscribe((Action1) new OpenReplenishableDepositFragment$onCreateView$4(this));
        switchCard2 = this.refillableType;
        if (switchCard2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("refillableType");
        }
        switchCard2.getCheckObserver().subscribe((Action1) new OpenReplenishableDepositFragment$onCreateView$5(this, scrollView));
        updateDepositInfo(0);
        return layoutInflater;
    }

    public final void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        view = getActivity();
        if (view == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(view, "activity!!");
        this.nextButton = (RocketButton) view.findViewById(C0859R.id.next_button);
        view = this.nextButton;
        if (view != null) {
            view.setOnClickListener((OnClickListener) new OpenReplenishableDepositFragment$onViewCreated$1(this));
        }
    }

    @SuppressLint({"SetTextI18n"})
    public final void updateDepositInfo(int i) {
        Deposits deposits = this.deposit;
        if (deposits == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deposit");
        }
        this.currentDeposit = (Deposit) deposits.getDeposits().get(i);
        i = this.currentDeposit;
        if (i != 0) {
            View view;
            TextView textView;
            CharSequence capitalizationSwitchTextCard;
            if (i.getRefillRate() != null) {
                view = this.refillContainer;
                if (view == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("refillContainer");
                }
                Intrinsics.checkParameterIsNotNull(view, "$receiver");
                view.setVisibility(0);
            } else {
                view = this.refillContainer;
                if (view == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("refillContainer");
                }
                Intrinsics.checkParameterIsNotNull(view, "$receiver");
                view.setVisibility(8);
            }
            if (i.getCapitalizationAvailable()) {
                view = this.capitalizationContainer;
                if (view == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("capitalizationContainer");
                }
                Intrinsics.checkParameterIsNotNull(view, "$receiver");
                view.setVisibility(0);
            } else {
                view = this.capitalizationContainer;
                if (view == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("capitalizationContainer");
                }
                Intrinsics.checkParameterIsNotNull(view, "$receiver");
                view.setVisibility(8);
            }
            EditText editText = this.moneyEditText;
            if (editText == null) {
                Intrinsics.throwUninitializedPropertyAccessException("moneyEditText");
            }
            Editable text = editText.getText();
            Intrinsics.checkExpressionValueIsNotNull(text, "moneyEditText.text");
            String str = null;
            if ((((CharSequence) text).length() == 0 ? 1 : 0) != 0) {
                editText = this.moneyEditText;
                if (editText == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("moneyEditText");
                }
                Double minAmount = i.getMinAmount();
                editText.setText(minAmount != null ? format(minAmount.doubleValue(), 0) : null);
            }
            SwitchCard switchCard = this.refillableType;
            if (switchCard == null) {
                Intrinsics.throwUninitializedPropertyAccessException("refillableType");
            }
            Double valueOf = (!switchCard.isChecked() || i.getRefillRate() == null) ? Double.valueOf(i.getRate()) : i.getRefillRate();
            if (valueOf != null) {
                double doubleValue = valueOf.doubleValue();
                if (doubleValue == ((double) ((long) doubleValue))) {
                    textView = this.rateTextView;
                    if (textView == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("rateTextView");
                    }
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(format(doubleValue, 0));
                    stringBuilder.append(" %");
                    textView.setText(stringBuilder.toString());
                } else {
                    textView = this.rateTextView;
                    if (textView == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("rateTextView");
                    }
                    StringBuilder stringBuilder2 = new StringBuilder();
                    stringBuilder2.append(doubleValue);
                    stringBuilder2.append(" %");
                    textView.setText(stringBuilder2.toString());
                }
            }
            textView = this.capitalizationText;
            if (textView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("capitalizationText");
            }
            SwitchCard switchCard2 = this.capitalization;
            if (switchCard2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("capitalization");
            }
            if (switchCard2.isChecked()) {
                capitalizationSwitchTextCard = i.getCapitalizationSwitchTextCard();
            } else {
                switchCard2 = this.refillableType;
                if (switchCard2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("refillableType");
                }
                String capitalizationSwitchRefillRate = switchCard2.isChecked() ? i.getCapitalizationSwitchRefillRate() : i.getCapitalizationSwitchStandardRate();
                StringBuilder stringBuilder3 = new StringBuilder();
                stringBuilder3.append(i.getCapitalizationText());
                stringBuilder3.append(' ');
                stringBuilder3.append(capitalizationSwitchRefillRate);
                capitalizationSwitchTextCard = stringBuilder3.toString();
            }
            textView.setText(capitalizationSwitchTextCard);
            textView = this.rateTextView;
            if (textView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rateTextView");
            }
            Animation animation = this.shakeAnimation;
            if (animation == null) {
                Intrinsics.throwUninitializedPropertyAccessException("shakeAnimation");
            }
            textView.startAnimation(animation);
            textView = this.refillableInfo;
            if (textView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("refillableInfo");
            }
            switchCard2 = this.refillableType;
            if (switchCard2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("refillableType");
            }
            textView.setText((CharSequence) (switchCard2.isChecked() ? i.getRefillSwitchTextTrue() : i.getRefillSwitchTextFalse()));
            i = this.info;
            if (i == 0) {
                Intrinsics.throwUninitializedPropertyAccessException("info");
            }
            Deposit deposit = this.currentDeposit;
            if (deposit != null) {
                str = deposit.getOtherCurrenciesText();
            }
            i.setText(str);
        }
    }

    public final String format(double d, int i) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        StringBuilder stringBuilder = new StringBuilder("%.");
        stringBuilder.append(i);
        stringBuilder.append(102);
        d = String.format(stringBuilder.toString(), Arrays.copyOf(new Object[]{Double.valueOf(d)}, 1));
        Intrinsics.checkExpressionValueIsNotNull(d, "java.lang.String.format(format, *args)");
        return d;
    }
}
