package ru.rocketbank.r2d2.activities.c2c;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import com.mikepenz.materialize.util.KeyboardUtil;
import java.util.HashMap;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.PresenterManager;
import ru.rocketbank.core.model.CardData;
import ru.rocketbank.core.model.CardModel;
import ru.rocketbank.core.model.dto.BinResponseData;
import ru.rocketbank.core.network.model.SendMoneyBody;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: CardTransferAmountActivity.kt */
public final class CardTransferAmountActivity extends BaseAmountActivity {
    public static final Companion Companion = new Companion();
    private HashMap _$_findViewCache;
    private boolean isPressedNext;

    /* compiled from: CardTransferAmountActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final void newInstance(Context context, CardModel cardModel, CardData cardData) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intent intent = new Intent(context, CardTransferAmountActivity.class);
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

    public final void updateBin(BinResponseData binResponseData) {
        Intrinsics.checkParameterIsNotNull(binResponseData, "binResponseData");
        if (TextUtils.isEmpty(binResponseData.getTransferAdvice())) {
            getAmountCardBinding().getCommentVisibility().set(8);
            return;
        }
        getAmountCardBinding().getCommentVisibility().set(0);
        getAmountCardBinding().getComment().set(binResponseData.getTransferAdvice());
        getAmountCardBinding().getCommentVisibility().set(0);
    }

    public final TransferAmountPresenter createPresenter() {
        PresenterManager presenterManager = PresenterManager.INSTANCE;
        UUID fromString = UUID.fromString("a9ebb036-cbb1-4975-8df5-dcc42534873f");
        Intrinsics.checkExpressionValueIsNotNull(fromString, "UUID.fromString(\"a9ebb03…-4975-8df5-dcc42534873f\")");
        return (TransferAmountPresenter) PresenterManager.getOrCreatePresenter(fromString, TransferAmountPresenter.class);
    }

    public final void onNextPressed() {
        KeyboardUtil.hideKeyboard(this);
        makeTransfer();
        finish();
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.isPressedNext = false;
        String string = getString(C0859R.string.transfer_cap);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.transfer_cap)");
        String string2 = getString(C0859R.string.cta_amount);
        Intrinsics.checkExpressionValueIsNotNull(string2, "getString(R.string.cta_amount)");
        init(string, string2, bundle);
    }

    public final void requestComission() {
        requestOutComeComission();
    }

    private final void makeTransfer() {
        if (!this.isPressedNext) {
            String str;
            this.isPressedNext = true;
            if (getCardModel() == null) {
                str = null;
            } else {
                CardModel cardModel = getCardModel();
                if (cardModel == null) {
                    Intrinsics.throwNpe();
                }
                str = cardModel.getToken();
            }
            SendMoneyBody sendMoneyBody = new SendMoneyBody();
            sendMoneyBody.setAmount(getAmount());
            sendMoneyBody.setSourceCard(extractPan());
            sendMoneyBody.setLinkedCardId(str);
            CardTransferProcessActivity.Companion.newInstance(this, sendMoneyBody, getCardModel(), getCardData());
        }
    }
}
