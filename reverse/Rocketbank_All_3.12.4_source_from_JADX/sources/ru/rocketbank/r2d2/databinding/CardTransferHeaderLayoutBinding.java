package ru.rocketbank.r2d2.databinding;

import android.databinding.DataBindingComponent;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ru.rocketbank.core.widgets.CreditCardView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.card.CardAbilityData;
import ru.rocketbank.r2d2.data.binding.card.CardAbilityHandler;

public abstract class CardTransferHeaderLayoutBinding extends ViewDataBinding {
    public final RocketTextView cardPhoto;
    public final LinearLayout cardRoot;
    public final CreditCardView creditCard;
    protected CardAbilityData mAbility;
    protected CardAbilityHandler mActions;
    public final RocketTextView rocketTextView;

    public abstract void setAbility(CardAbilityData cardAbilityData);

    public abstract void setActions(CardAbilityHandler cardAbilityHandler);

    protected CardTransferHeaderLayoutBinding(DataBindingComponent dataBindingComponent, View view, int i, RocketTextView rocketTextView, LinearLayout linearLayout, CreditCardView creditCardView, RocketTextView rocketTextView2) {
        super(dataBindingComponent, view, i);
        this.cardPhoto = rocketTextView;
        this.cardRoot = linearLayout;
        this.creditCard = creditCardView;
        this.rocketTextView = rocketTextView2;
    }

    public CardAbilityHandler getActions() {
        return this.mActions;
    }

    public CardAbilityData getAbility() {
        return this.mAbility;
    }

    public static CardTransferHeaderLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    public static CardTransferHeaderLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    public static CardTransferHeaderLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static CardTransferHeaderLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, DataBindingComponent dataBindingComponent) {
        return (CardTransferHeaderLayoutBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.card_transfer_header_layout, viewGroup, z, dataBindingComponent);
    }

    public static CardTransferHeaderLayoutBinding inflate(LayoutInflater layoutInflater, DataBindingComponent dataBindingComponent) {
        return (CardTransferHeaderLayoutBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.card_transfer_header_layout, null, false, dataBindingComponent);
    }

    public static CardTransferHeaderLayoutBinding bind(View view, DataBindingComponent dataBindingComponent) {
        return (CardTransferHeaderLayoutBinding) bind(dataBindingComponent, view, C0859R.layout.card_transfer_header_layout);
    }
}
