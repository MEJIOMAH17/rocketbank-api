package ru.rocketbank.r2d2.charges;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.charge.ChargeModel;
import rx.functions.Action1;

/* compiled from: ChargesListActivity.kt */
final class ChargesListActivity$onCreate$1<T> implements Action1<ArrayList<ChargeModel>> {
    final /* synthetic */ ChargesListActivity this$0;

    ChargesListActivity$onCreate$1(ChargesListActivity chargesListActivity) {
        this.this$0 = chargesListActivity;
    }

    public final void call(ArrayList<ChargeModel> arrayList) {
        this.this$0.hideProgressDialog();
        ChargesListActivity chargesListActivity = this.this$0;
        Intrinsics.checkExpressionValueIsNotNull(arrayList, "it");
        chargesListActivity.charges = arrayList;
        this.this$0.showData();
    }
}
