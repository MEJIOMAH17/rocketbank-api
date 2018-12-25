package ru.rocketbank.r2d2.adapters.card;

import android.databinding.DataBindingUtil;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.support.v7.widget.StaggeredGridLayoutManager.LayoutParams;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.CardData;
import ru.rocketbank.core.model.CardModel;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.core.widgets.CardViewMini;
import ru.rocketbank.core.widgets.CardViewMini.CardActionsListener;
import ru.rocketbank.core.widgets.CreditCardView;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.core.widgets.listener.CardNumberListener;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.card.CardAbilityData;
import ru.rocketbank.r2d2.data.binding.card.CardAbilityHandler;
import ru.rocketbank.r2d2.databinding.CardTransferHeaderLayoutBinding;
import ru.rocketbank.r2d2.databinding.LayoutCardWithActionsBinding;

/* compiled from: CardsListAdapter.kt */
public final class CardsListAdapter extends Adapter<ViewHolder> {
    public static final Companion Companion = new Companion();
    private static final String TAG = "CLAdapter";
    private final CardAbilityData abilityData;
    private final CardAbilityHandler abilityHandler;
    private final CardActionsListener actionsListener;
    private final CardChangeListener cardChangeListener;
    private CardData cardData = new CardData("", "", "");
    private final List<CardModel> cards = ((List) new ArrayList());
    private final OnClickListener clickListener;
    private final boolean fullMode;

    /* compiled from: CardsListAdapter.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: CardsListAdapter.kt */
    public static final class Wrapper {
        private final LayoutCardWithActionsBinding full;
        private final CardTransferHeaderLayoutBinding onlyPan;

        public static /* bridge */ /* synthetic */ Wrapper copy$default(Wrapper wrapper, LayoutCardWithActionsBinding layoutCardWithActionsBinding, CardTransferHeaderLayoutBinding cardTransferHeaderLayoutBinding, int i, Object obj) {
            if ((i & 1) != 0) {
                layoutCardWithActionsBinding = wrapper.full;
            }
            if ((i & 2) != 0) {
                cardTransferHeaderLayoutBinding = wrapper.onlyPan;
            }
            return wrapper.copy(layoutCardWithActionsBinding, cardTransferHeaderLayoutBinding);
        }

        public final LayoutCardWithActionsBinding component1() {
            return this.full;
        }

        public final CardTransferHeaderLayoutBinding component2() {
            return this.onlyPan;
        }

        public final Wrapper copy(LayoutCardWithActionsBinding layoutCardWithActionsBinding, CardTransferHeaderLayoutBinding cardTransferHeaderLayoutBinding) {
            return new Wrapper(layoutCardWithActionsBinding, cardTransferHeaderLayoutBinding);
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof Wrapper) {
                    Wrapper wrapper = (Wrapper) obj;
                    if (Intrinsics.areEqual(this.full, wrapper.full) && Intrinsics.areEqual(this.onlyPan, wrapper.onlyPan)) {
                    }
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            LayoutCardWithActionsBinding layoutCardWithActionsBinding = this.full;
            int i = 0;
            int hashCode = (layoutCardWithActionsBinding != null ? layoutCardWithActionsBinding.hashCode() : 0) * 31;
            CardTransferHeaderLayoutBinding cardTransferHeaderLayoutBinding = this.onlyPan;
            if (cardTransferHeaderLayoutBinding != null) {
                i = cardTransferHeaderLayoutBinding.hashCode();
            }
            return hashCode + i;
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder("Wrapper(full=");
            stringBuilder.append(this.full);
            stringBuilder.append(", onlyPan=");
            stringBuilder.append(this.onlyPan);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }

        public Wrapper(LayoutCardWithActionsBinding layoutCardWithActionsBinding, CardTransferHeaderLayoutBinding cardTransferHeaderLayoutBinding) {
            this.full = layoutCardWithActionsBinding;
            this.onlyPan = cardTransferHeaderLayoutBinding;
        }

        public final LayoutCardWithActionsBinding getFull() {
            return this.full;
        }

        public final CardTransferHeaderLayoutBinding getOnlyPan() {
            return this.onlyPan;
        }

        public final View getRoot() {
            if (this.full != null) {
                View root = this.full.getRoot();
                Intrinsics.checkExpressionValueIsNotNull(root, "full.root");
                return root;
            }
            CardTransferHeaderLayoutBinding cardTransferHeaderLayoutBinding = this.onlyPan;
            if (cardTransferHeaderLayoutBinding == null) {
                Intrinsics.throwNpe();
            }
            root = cardTransferHeaderLayoutBinding.getRoot();
            Intrinsics.checkExpressionValueIsNotNull(root, "onlyPan!!.root");
            return root;
        }

        public final void update(CardAbilityData cardAbilityData, CardAbilityHandler cardAbilityHandler) {
            Intrinsics.checkParameterIsNotNull(cardAbilityData, "abilityData");
            Intrinsics.checkParameterIsNotNull(cardAbilityHandler, "abilityHandler");
            if (this.full != null) {
                this.full.setAbility(cardAbilityData);
                this.full.setActions(cardAbilityHandler);
                return;
            }
            if (this.onlyPan != null) {
                this.onlyPan.setAbility(cardAbilityData);
                this.onlyPan.setActions(cardAbilityHandler);
            }
        }

        public final CreditCardView getCreditCard() {
            if (this.full != null) {
                CreditCardView creditCardView = this.full.creditCard;
                Intrinsics.checkExpressionValueIsNotNull(creditCardView, "full.creditCard");
                return creditCardView;
            }
            CardTransferHeaderLayoutBinding cardTransferHeaderLayoutBinding = this.onlyPan;
            if (cardTransferHeaderLayoutBinding == null) {
                Intrinsics.throwNpe();
            }
            creditCardView = cardTransferHeaderLayoutBinding.creditCard;
            Intrinsics.checkExpressionValueIsNotNull(creditCardView, "onlyPan!!.creditCard");
            return creditCardView;
        }

        public final TextView getRecentCard() {
            if (this.full != null) {
                RocketTextView rocketTextView = this.full.rocketTextView;
                Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "full.rocketTextView");
                return rocketTextView;
            }
            CardTransferHeaderLayoutBinding cardTransferHeaderLayoutBinding = this.onlyPan;
            if (cardTransferHeaderLayoutBinding == null) {
                Intrinsics.throwNpe();
            }
            rocketTextView = cardTransferHeaderLayoutBinding.rocketTextView;
            Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "onlyPan!!.rocketTextView");
            return rocketTextView;
        }
    }

    /* compiled from: CardsListAdapter.kt */
    public final class CardViewHolder extends ViewHolder implements OnClickListener {
        private CardModel cardModel;
        private final CardViewMini cardView;
        final /* synthetic */ CardsListAdapter this$0;

        public CardViewHolder(CardsListAdapter cardsListAdapter, View view) {
            Intrinsics.checkParameterIsNotNull(view, "itemView");
            this.this$0 = cardsListAdapter;
            super(view);
            this.cardView = (CardViewMini) view;
            this.cardView.setOnClickListener(cardsListAdapter.clickListener);
            this.cardView.setCardActionsListener(cardsListAdapter.actionsListener);
            view.setOnClickListener(this);
        }

        public final void bind(CardModel cardModel) {
            Intrinsics.checkParameterIsNotNull(cardModel, "cardModel");
            this.cardModel = cardModel;
            this.cardView.resetImage();
            this.cardView.setCard(cardModel);
            if (cardModel.getImage() != null) {
                String image = cardModel.getImage();
                if (image == null) {
                    Intrinsics.throwNpe();
                }
                if ((((CharSequence) image).length() == 0 ? 1 : null) == null) {
                    this.cardView.setImageUrl(cardModel.getImage());
                }
            }
        }

        public final void onClick(View view) {
            Intrinsics.checkParameterIsNotNull(view, "v");
            view = this.cardModel;
            if (view != null) {
                this.this$0.cardChangeListener.smallCardPressed(view);
            }
        }
    }

    /* compiled from: CardsListAdapter.kt */
    protected final class HeaderViewHolder extends ViewHolder implements CardNumberListener {
        private TextView recentCards;
        private CreditCardView rocketCard;
        final /* synthetic */ CardsListAdapter this$0;
        private Wrapper wrapper;

        public final void binReady(String str) {
            Intrinsics.checkParameterIsNotNull(str, "cardNumber");
        }

        public final void cancelBin() {
        }

        public final void cardNumberIsInvalid(String str) {
            Intrinsics.checkParameterIsNotNull(str, "cardNumber");
        }

        public final void cardNumberIsValid(String str) {
            Intrinsics.checkParameterIsNotNull(str, "cardNumber");
        }

        public final void cvvIsInvalid() {
        }

        public final void cvvIsValid() {
        }

        public final void dateIsInvalid() {
        }

        public final void dateIsValid() {
        }

        public HeaderViewHolder(CardsListAdapter cardsListAdapter, Wrapper wrapper, View view) {
            Intrinsics.checkParameterIsNotNull(wrapper, "wrapper");
            Intrinsics.checkParameterIsNotNull(view, "itemView");
            this.this$0 = cardsListAdapter;
            super(view);
            this.wrapper = wrapper;
            this.rocketCard = wrapper.getCreditCard();
            this.recentCards = wrapper.getRecentCard();
            this.rocketCard.setCardNumberListener(this);
        }

        public final CreditCardView getRocketCard() {
            return this.rocketCard;
        }

        public final void setRocketCard(CreditCardView creditCardView) {
            Intrinsics.checkParameterIsNotNull(creditCardView, "<set-?>");
            this.rocketCard = creditCardView;
        }

        public final TextView getRecentCards() {
            return this.recentCards;
        }

        public final void setRecentCards(TextView textView) {
            Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
            this.recentCards = textView;
        }

        public final Wrapper getWrapper() {
            return this.wrapper;
        }

        public final void setWrapper(Wrapper wrapper) {
            Intrinsics.checkParameterIsNotNull(wrapper, "<set-?>");
            this.wrapper = wrapper;
        }

        public final void bind(CardData cardData) {
            Intrinsics.checkParameterIsNotNull(cardData, "cardData");
            this.rocketCard.setCardNumber(cardData.getPan());
            this.rocketCard.setCvv(cardData.getCvv());
            this.rocketCard.setRawValidThru(cardData.getExpirationDate());
            this.recentCards.setVisibility(this.this$0.cards.isEmpty() ? 8 : 0);
        }

        public final void allCardIsValid(String str, String str2, String str3) {
            Intrinsics.checkParameterIsNotNull(str, "cardNumber");
            Intrinsics.checkParameterIsNotNull(str2, ProviderField.DATE);
            Intrinsics.checkParameterIsNotNull(str3, "cvv");
            this.this$0.cardChangeListener.cardValid();
        }

        public final void cardInvalid() {
            this.this$0.cardChangeListener.cardInvalid();
        }

        public final void cardChanged() {
            Log.v(CardsListAdapter.TAG, "Card changed");
            CardData cardData = new CardData(this.rocketCard.getCardNumber(), this.rocketCard.getValidThru(), this.rocketCard.getCvv());
            this.this$0.cardData = cardData;
            this.this$0.cardChangeListener.cardChanged(cardData);
        }

        public final void update(CardAbilityData cardAbilityData, CardAbilityHandler cardAbilityHandler) {
            Intrinsics.checkParameterIsNotNull(cardAbilityData, "abilityData");
            Intrinsics.checkParameterIsNotNull(cardAbilityHandler, "abilityHandler");
            this.wrapper.update(cardAbilityData, cardAbilityHandler);
        }
    }

    public final int getItemViewType(int i) {
        return i == 0 ? 0 : 1;
    }

    public CardsListAdapter(CardActionsListener cardActionsListener, CardChangeListener cardChangeListener, OnClickListener onClickListener, boolean z, CardAbilityData cardAbilityData, CardAbilityHandler cardAbilityHandler) {
        Intrinsics.checkParameterIsNotNull(cardActionsListener, "actionsListener");
        Intrinsics.checkParameterIsNotNull(cardChangeListener, "cardChangeListener");
        Intrinsics.checkParameterIsNotNull(onClickListener, "clickListener");
        Intrinsics.checkParameterIsNotNull(cardAbilityData, "abilityData");
        Intrinsics.checkParameterIsNotNull(cardAbilityHandler, "abilityHandler");
        this.actionsListener = cardActionsListener;
        this.cardChangeListener = cardChangeListener;
        this.clickListener = onClickListener;
        this.fullMode = z;
        this.abilityData = cardAbilityData;
        this.abilityHandler = cardAbilityHandler;
    }

    public final void initializeCardData(CardData cardData) {
        Intrinsics.checkParameterIsNotNull(cardData, "cardData");
        this.cardData = cardData;
        notifyItemChanged(null);
    }

    public final ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        switch (i) {
            case 0:
                Wrapper wrapper;
                i = new LayoutParams(-1, -2);
                i.setFullSpan(true);
                if (this.fullMode) {
                    viewGroup = DataBindingUtil.inflate(from, C0859R.layout.layout_card_with_actions, viewGroup, false);
                    Intrinsics.checkExpressionValueIsNotNull(viewGroup, "DataBindingUtil.inflate(…h_actions, parent, false)");
                    wrapper = new Wrapper((LayoutCardWithActionsBinding) viewGroup, null);
                } else {
                    viewGroup = DataBindingUtil.inflate(from, C0859R.layout.card_transfer_header_layout, viewGroup, false);
                    Intrinsics.checkExpressionValueIsNotNull(viewGroup, "DataBindingUtil.inflate(…er_layout, parent, false)");
                    wrapper = new Wrapper(null, (CardTransferHeaderLayoutBinding) viewGroup);
                }
                viewGroup = new HeaderViewHolder(this, wrapper, wrapper.getRoot());
                View view = viewGroup.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view, "headerViewHolder.itemView");
                view.setLayoutParams((ViewGroup.LayoutParams) i);
                return (ViewHolder) viewGroup;
            case 1:
                viewGroup = viewGroup.getContext();
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "parent.context");
                return (ViewHolder) new CardViewHolder(this, (View) new CardViewMini(viewGroup));
            default:
                throw ((Throwable) new IllegalStateException("No such type".concat(String.valueOf(i))));
        }
    }

    public final void onBindViewHolder(ViewHolder viewHolder, int i) {
        Intrinsics.checkParameterIsNotNull(viewHolder, "holder");
        if (i != 0) {
            ((CardViewHolder) viewHolder).bind((CardModel) this.cards.get(i - 1));
            return;
        }
        HeaderViewHolder headerViewHolder = (HeaderViewHolder) viewHolder;
        headerViewHolder.bind(this.cardData);
        headerViewHolder.update(this.abilityData, this.abilityHandler);
    }

    public final int getItemCount() {
        return this.cards.size() + 1;
    }

    public final void setData(List<CardModel> list) {
        Intrinsics.checkParameterIsNotNull(list, "cardsCollection");
        this.cards.clear();
        this.cards.addAll(list);
        notifyDataSetChanged();
    }

    public final void remove(CardModel cardModel) {
        Intrinsics.checkParameterIsNotNull(cardModel, "cardModel");
        this.cards.remove(cardModel);
        notifyDataSetChanged();
    }

    public final CardModel getCardModel(int i) {
        return (CardModel) this.cards.get(i - 1);
    }
}
