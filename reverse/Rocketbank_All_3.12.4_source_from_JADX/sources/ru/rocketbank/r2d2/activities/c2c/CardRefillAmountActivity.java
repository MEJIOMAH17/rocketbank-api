package ru.rocketbank.r2d2.activities.c2c;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.UUID;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import ru.rocketbank.core.manager.PresenterManager;
import ru.rocketbank.core.model.CardData;
import ru.rocketbank.core.model.CardModel;
import ru.rocketbank.core.model.dto.BinResponseData;
import ru.rocketbank.core.network.model.CardBody;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: CardRefillAmountActivity.kt */
public final class CardRefillAmountActivity extends BaseAmountActivity {
    public static final Companion Companion = new Companion();
    private HashMap _$_findViewCache;
    private boolean enoughMoney = true;
    private boolean isPressedNext;

    /* compiled from: CardRefillAmountActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final void newInstance(Context context, CardData cardData, CardModel cardModel) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(cardData, "cardData");
            Intent intent = new Intent(context, CardRefillAmountActivity.class);
            intent.putExtra(BaseAmountActivity.Companion.getCARD_EXTRA(), cardModel);
            intent.putExtra(BaseAmountActivity.Companion.getCARD_DATA_EXTRA(), cardData);
            context.startActivity(intent);
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
        if (view != null) {
            return view;
        }
        view = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), view);
        return view;
    }

    public final TransferAmountPresenter createPresenter() {
        PresenterManager presenterManager = PresenterManager.INSTANCE;
        UUID fromString = UUID.fromString("767775fc-cfde-4df1-8324-8369cd4874ef");
        Intrinsics.checkExpressionValueIsNotNull(fromString, "UUID.fromString(\"767775f…-4df1-8324-8369cd4874ef\")");
        return (TransferAmountPresenter) PresenterManager.getOrCreatePresenter(fromString, TransferAmountPresenter.class);
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.isPressedNext = false;
        String string = getString(C0859R.string.refill_cap);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.refill_cap)");
        String string2 = getString(C0859R.string.amount_title);
        Intrinsics.checkExpressionValueIsNotNull(string2, "getString(R.string.amount_title)");
        init(string, string2, bundle);
        bundle = getActivityCardTransferAmountBinding().accountWidget;
        Intrinsics.checkExpressionValueIsNotNull(bundle, "activityCardTransferAmountBinding.accountWidget");
        View view = (View) bundle;
        Intrinsics.checkParameterIsNotNull(view, "$receiver");
        view.setVisibility(8);
    }

    protected final boolean getEnoughMoney() {
        return this.enoughMoney;
    }

    protected final void setEnoughMoney(boolean z) {
        this.enoughMoney = z;
    }

    public final void updateBin(BinResponseData binResponseData) {
        Intrinsics.checkParameterIsNotNull(binResponseData, "binResponseData");
        if (TextUtils.isEmpty(binResponseData.getRefillAdvice())) {
            getAmountCardBinding().getCommentVisibility().set(8);
            return;
        }
        getAmountCardBinding().getCommentVisibility().set(0);
        getAmountCardBinding().getComment().set(binResponseData.getRefillAdvice());
        getAmountCardBinding().getCommentVisibility().set(0);
    }

    public final void requestComission() {
        requestIncomeComeComission();
    }

    public final void onNextPressed() {
        if (!this.isPressedNext) {
            this.isPressedNext = true;
            CardModel cardModel = getCardModel();
            CardData cardData = getCardData();
            CardBody cardBody = new CardBody();
            String str = null;
            cardBody.setCardId(cardModel != null ? cardModel.getToken() : null);
            cardBody.setCardNumber(cardModel != null ? cardModel.getPan() : null);
            CardData cardData2 = getCardData();
            if (cardData2 != null) {
                str = cardData2.getCvv();
            }
            cardBody.setCvv(str);
            if (cardModel == null && cardData != null) {
                cardBody.setCardNumber(cardData.getPan());
                List split = new Regex("/").split(cardData.getExpirationDate(), 0);
                if (!split.isEmpty()) {
                    ListIterator listIterator = split.listIterator(split.size());
                    while (listIterator.hasPrevious()) {
                        boolean z;
                        if (((String) listIterator.previous()).length() == 0) {
                            z = true;
                            continue;
                        } else {
                            z = false;
                            continue;
                        }
                        if (!z) {
                            split = CollectionsKt___CollectionsKt.take(split, listIterator.nextIndex() + 1);
                            break;
                        }
                    }
                }
                split = CollectionsKt__CollectionsKt.emptyList();
                Collection collection = split;
                if (collection == null) {
                    throw new TypeCastException("null cannot be cast to non-null type java.util.Collection<T>");
                }
                Object[] toArray = collection.toArray(new String[0]);
                if (toArray == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
                }
                cardBody.setExpiryMonth(((String[]) toArray)[0]);
                if (collection == null) {
                    throw new TypeCastException("null cannot be cast to non-null type java.util.Collection<T>");
                }
                Object[] toArray2 = collection.toArray(new String[0]);
                if (toArray2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
                }
                cardBody.setExpiryYear(((String[]) toArray2)[1]);
            }
            CardRefillActivity.Companion.newInstance(this, getAmount(), cardBody);
            finish();
        }
    }
}
