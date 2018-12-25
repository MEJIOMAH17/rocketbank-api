package ru.rocketbank.r2d2.fragments.deposit;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FirstDepositRefillFragment.kt */
final class FirstDepositRefillFragment$onViewCreated$1 implements OnClickListener {
    final /* synthetic */ FirstDepositRefillFragment this$0;

    FirstDepositRefillFragment$onViewCreated$1(FirstDepositRefillFragment firstDepositRefillFragment) {
        this.this$0 = firstDepositRefillFragment;
    }

    public final void onClick(View view) {
        view = FirstDepositRefillFragment.access$getDeposit$p(this.this$0).getUrl();
        if (view != null) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(view));
            view = this.this$0.getActivity();
            if (view == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(view, "this@FirstDepositRefillFragment.activity!!");
            if (intent.resolveActivity(view.getPackageManager()) != null) {
                this.this$0.startActivity(intent);
            }
        }
    }
}
