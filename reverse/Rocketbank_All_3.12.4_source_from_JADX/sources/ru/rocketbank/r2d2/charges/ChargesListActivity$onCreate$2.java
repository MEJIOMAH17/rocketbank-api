package ru.rocketbank.r2d2.charges;

import android.support.v7.widget.RecyclerView;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.functions.Action1;

/* compiled from: ChargesListActivity.kt */
final class ChargesListActivity$onCreate$2<T> implements Action1<Throwable> {
    final /* synthetic */ ChargesListActivity this$0;

    ChargesListActivity$onCreate$2(ChargesListActivity chargesListActivity) {
        this.this$0 = chargesListActivity;
    }

    public final void call(Throwable th) {
        AnalyticsManager.logException(th);
        this.this$0.hideProgressDialog();
        UIHelper.showSnackWithError((RecyclerView) this.this$0._$_findCachedViewById(C0859R.id.recyclerView), th);
    }
}
