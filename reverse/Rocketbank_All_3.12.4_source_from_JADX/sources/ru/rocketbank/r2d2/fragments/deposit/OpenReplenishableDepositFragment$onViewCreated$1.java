package ru.rocketbank.r2d2.fragments.deposit;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.Deposit;
import ru.rocketbank.r2d2.activities.MainActivity;
import ru.rocketbank.r2d2.fragments.deposit.FirstDepositRefillFragment.Companion;

/* compiled from: OpenReplenishableDepositFragment.kt */
final class OpenReplenishableDepositFragment$onViewCreated$1 implements OnClickListener {
    final /* synthetic */ OpenReplenishableDepositFragment this$0;

    OpenReplenishableDepositFragment$onViewCreated$1(OpenReplenishableDepositFragment openReplenishableDepositFragment) {
        this.this$0 = openReplenishableDepositFragment;
    }

    public final void onClick(View view) {
        String str;
        String str2;
        String obj;
        Deposit access$getCurrentDeposit$p;
        String currency;
        FragmentActivity activity;
        Companion companion = FirstDepositRefillFragment.Companion;
        Deposit access$getCurrentDeposit$p2 = this.this$0.currentDeposit;
        if (access$getCurrentDeposit$p2 == null) {
            Intrinsics.throwNpe();
        }
        if (OpenReplenishableDepositFragment.access$getRefillableType$p(this.this$0).isChecked() != null) {
            view = this.this$0.currentDeposit;
            if ((view != null ? view.getRefillRate() : null) != null) {
                view = 1;
                if (OpenReplenishableDepositFragment.access$getCapitalization$p(this.this$0).isChecked()) {
                    Deposit access$getCurrentDeposit$p3 = this.this$0.currentDeposit;
                    if (access$getCurrentDeposit$p3 != null && access$getCurrentDeposit$p3.getCapitalizationAvailable()) {
                        str = "card";
                        str2 = str;
                        obj = OpenReplenishableDepositFragment.access$getMoneyEditText$p(this.this$0).getText().toString();
                        access$getCurrentDeposit$p = this.this$0.currentDeposit;
                        if (access$getCurrentDeposit$p == null) {
                            Intrinsics.throwNpe();
                        }
                        currency = access$getCurrentDeposit$p.getCurrency();
                        if (currency == null) {
                            Intrinsics.throwNpe();
                        }
                        view = companion.newInstance(access$getCurrentDeposit$p2, view, str2, obj, currency);
                        activity = this.this$0.getActivity();
                        if (activity != null) {
                            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.activities.MainActivity");
                        }
                        ((MainActivity) activity).pushFragment((Fragment) view);
                        return;
                    }
                }
                str = "deposit";
                str2 = str;
                obj = OpenReplenishableDepositFragment.access$getMoneyEditText$p(this.this$0).getText().toString();
                access$getCurrentDeposit$p = this.this$0.currentDeposit;
                if (access$getCurrentDeposit$p == null) {
                    Intrinsics.throwNpe();
                }
                currency = access$getCurrentDeposit$p.getCurrency();
                if (currency == null) {
                    Intrinsics.throwNpe();
                }
                view = companion.newInstance(access$getCurrentDeposit$p2, view, str2, obj, currency);
                activity = this.this$0.getActivity();
                if (activity != null) {
                    ((MainActivity) activity).pushFragment((Fragment) view);
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.activities.MainActivity");
            }
        }
        view = null;
        if (OpenReplenishableDepositFragment.access$getCapitalization$p(this.this$0).isChecked()) {
            Deposit access$getCurrentDeposit$p32 = this.this$0.currentDeposit;
            str = "card";
            str2 = str;
            obj = OpenReplenishableDepositFragment.access$getMoneyEditText$p(this.this$0).getText().toString();
            access$getCurrentDeposit$p = this.this$0.currentDeposit;
            if (access$getCurrentDeposit$p == null) {
                Intrinsics.throwNpe();
            }
            currency = access$getCurrentDeposit$p.getCurrency();
            if (currency == null) {
                Intrinsics.throwNpe();
            }
            view = companion.newInstance(access$getCurrentDeposit$p2, view, str2, obj, currency);
            activity = this.this$0.getActivity();
            if (activity != null) {
                throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.activities.MainActivity");
            }
            ((MainActivity) activity).pushFragment((Fragment) view);
            return;
        }
        str = "deposit";
        str2 = str;
        obj = OpenReplenishableDepositFragment.access$getMoneyEditText$p(this.this$0).getText().toString();
        access$getCurrentDeposit$p = this.this$0.currentDeposit;
        if (access$getCurrentDeposit$p == null) {
            Intrinsics.throwNpe();
        }
        currency = access$getCurrentDeposit$p.getCurrency();
        if (currency == null) {
            Intrinsics.throwNpe();
        }
        view = companion.newInstance(access$getCurrentDeposit$p2, view, str2, obj, currency);
        activity = this.this$0.getActivity();
        if (activity != null) {
            ((MainActivity) activity).pushFragment((Fragment) view);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.activities.MainActivity");
    }
}
