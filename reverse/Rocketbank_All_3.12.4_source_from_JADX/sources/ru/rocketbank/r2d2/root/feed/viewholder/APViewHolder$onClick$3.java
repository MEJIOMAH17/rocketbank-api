package ru.rocketbank.r2d2.root.feed.viewholder;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref.ObjectRef;
import ru.rocketbank.core.model.AccountModel;
import ru.rocketbank.core.model.facade.Account;
import ru.rocketbank.r2d2.activities.MainActivity;
import ru.rocketbank.r2d2.root.card.CardDetailFragment;
import ru.rocketbank.r2d2.root.card.CardDetailFragment.Companion;
import rx.Subscription;
import rx.functions.Action1;

/* compiled from: APViewHolder.kt */
final class APViewHolder$onClick$3<T> implements Action1<Account> {
    final /* synthetic */ Context $activity;
    final /* synthetic */ ObjectRef $subscription;

    APViewHolder$onClick$3(Context context, ObjectRef objectRef) {
        this.$activity = context;
        this.$subscription = objectRef;
    }

    public final void call(Account account) {
        AccountModel accountModel = account.getAccountModel();
        if (accountModel != null) {
            MainActivity mainActivity = (MainActivity) this.$activity;
            Companion companion = CardDetailFragment.Companion;
            account = account.getToken();
            String plasticToken = accountModel.getPlasticToken();
            if (plasticToken == null) {
                Intrinsics.throwNpe();
            }
            mainActivity.pushFragment(companion.newInstance(account, plasticToken, accountModel.getExtracts()));
        }
        ((Subscription) this.$subscription.element).unsubscribe();
    }
}
