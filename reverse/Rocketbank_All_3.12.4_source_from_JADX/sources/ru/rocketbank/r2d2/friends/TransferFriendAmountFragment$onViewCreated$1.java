package ru.rocketbank.r2d2.friends;

import ru.rocketbank.core.model.facade.Account;
import rx.functions.Action1;

/* compiled from: TransferFriendAmountFragment.kt */
final class TransferFriendAmountFragment$onViewCreated$1<T> implements Action1<Account> {
    final /* synthetic */ TransferFriendAmountFragment this$0;

    TransferFriendAmountFragment$onViewCreated$1(TransferFriendAmountFragment transferFriendAmountFragment) {
        this.this$0 = transferFriendAmountFragment;
    }

    public final void call(Account account) {
        if (account != null) {
            this.this$0.token = account.getToken();
            TransferFriendAmountFragment transferFriendAmountFragment = this.this$0;
            account = this.this$0.getCurrencyManager().getCurrencySymbol(account.getCurrency().toString());
            if (account == null) {
                account = "";
            }
            transferFriendAmountFragment.currencyCode = account;
            this.this$0.getAmountTextWatcher().afterTextChanged(this.this$0.getEditTextAmount().getText());
        }
    }
}
