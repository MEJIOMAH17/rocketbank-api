package ru.rocketbank.r2d2.fragments.transfers;

import kotlin.jvm.internal.Intrinsics;
import rx.functions.Action1;

/* compiled from: TransfersFromCardFragment.kt */
/* renamed from: ru.rocketbank.r2d2.fragments.transfers.TransfersFromCardFragment$createPopUpMenu$1$$special$$inlined$let$lambda$1 */
final class C2014x1068d45<T> implements Action1<String> {
    final /* synthetic */ int $position;
    final /* synthetic */ TransfersFromCardFragment$createPopUpMenu$1 this$0;

    C2014x1068d45(int i, TransfersFromCardFragment$createPopUpMenu$1 transfersFromCardFragment$createPopUpMenu$1) {
        this.$position = i;
        this.this$0 = transfersFromCardFragment$createPopUpMenu$1;
    }

    public final void call(String str) {
        this.this$0.$cardModel.setTitle(str);
        str = this.this$0.this$0.listAdapter;
        if (str == null) {
            Intrinsics.throwNpe();
        }
        str.notifyItemChanged(this.$position);
        this.this$0.this$0.getTemplateManager().refreshTemplates();
    }
}
