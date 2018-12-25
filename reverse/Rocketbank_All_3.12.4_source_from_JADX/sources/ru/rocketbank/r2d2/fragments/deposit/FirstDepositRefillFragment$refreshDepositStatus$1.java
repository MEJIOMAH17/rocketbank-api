package ru.rocketbank.r2d2.fragments.deposit;

import android.graphics.Typeface;
import android.text.SpannableString;
import android.util.Log;
import android.view.View;
import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ru.rocketbank.core.manager.TypefaceManager;
import ru.rocketbank.core.network.model.DepositRefillResponse;
import ru.rocketbank.core.network.model.DepositRefillResponse.RefillDetail;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.widgets.TypefaceSpan;
import ru.rocketbank.r2d2.C0859R;
import rx.Subscriber;

/* compiled from: FirstDepositRefillFragment.kt */
public final class FirstDepositRefillFragment$refreshDepositStatus$1 extends Subscriber<DepositRefillResponse> {
    final /* synthetic */ FirstDepositRefillFragment this$0;

    public final void onCompleted() {
    }

    FirstDepositRefillFragment$refreshDepositStatus$1(FirstDepositRefillFragment firstDepositRefillFragment) {
        this.this$0 = firstDepositRefillFragment;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        this.this$0.depositApiSubscriptions.unsubscribe();
        Log.e("FirstDeposit", "refreshDepositStatus", th);
        View access$getProgressBar$p = FirstDepositRefillFragment.access$getProgressBar$p(this.this$0);
        Intrinsics.checkParameterIsNotNull(access$getProgressBar$p, "$receiver");
        access$getProgressBar$p.setVisibility(8);
        FirstDepositRefillFragment.access$getInputLayoutAmountView$p(this.this$0).setError(this.this$0.getString(C0859R.string.error_occur_try_later));
        FirstDepositRefillFragment.access$getInputLayoutAmountView$p(this.this$0).setErrorEnabled(true);
        this.this$0.refreshOpenButton(false);
    }

    public final void onNext(DepositRefillResponse depositRefillResponse) {
        Intrinsics.checkParameterIsNotNull(depositRefillResponse, "depositRefillResponse");
        this.this$0.depositApiSubscriptions.unsubscribe();
        View access$getProgressBar$p = FirstDepositRefillFragment.access$getProgressBar$p(this.this$0);
        Intrinsics.checkParameterIsNotNull(access$getProgressBar$p, "$receiver");
        access$getProgressBar$p.setVisibility(8);
        if (Intrinsics.areEqual(depositRefillResponse.getStatus(), "ok")) {
            Object string;
            SpannableString spannableString;
            RefillDetail from = depositRefillResponse.getFrom();
            if (from == null) {
                Intrinsics.throwNpe();
            }
            String currency = from.getCurrency();
            RefillDetail to = depositRefillResponse.getTo();
            if (to == null) {
                Intrinsics.throwNpe();
            }
            boolean areEqual = Intrinsics.areEqual(currency, to.getCurrency());
            Typeface typeface = TypefaceManager.getInstance().getTypeface(0, r0.this$0.getContext());
            Typeface typeface2 = TypefaceManager.getInstance().getTypeface(7, r0.this$0.getContext());
            int i = (int) (14.0f * r0.this$0.displayMetrics.scaledDensity);
            RefillDetail from2 = depositRefillResponse.getFrom();
            MoneyFormatter access$getMoneyFormatter$p = FirstDepositRefillFragment.access$getMoneyFormatter$p(r0.this$0);
            if (from2 == null) {
                Intrinsics.throwNpe();
            }
            double amount = from2.getAmount();
            String currency2 = from2.getCurrency();
            if (currency2 == null) {
                Intrinsics.throwNpe();
            }
            currency2 = access$getMoneyFormatter$p.format(amount, currency2, true);
            RefillDetail to2 = depositRefillResponse.getTo();
            MoneyFormatter access$getMoneyFormatter$p2 = FirstDepositRefillFragment.access$getMoneyFormatter$p(r0.this$0);
            if (to2 == null) {
                Intrinsics.throwNpe();
            }
            double amount2 = to2.getAmount();
            String currency3 = to2.getCurrency();
            if (currency3 == null) {
                Intrinsics.throwNpe();
            }
            currency3 = access$getMoneyFormatter$p2.format(amount2, currency3, true);
            String valueOf = String.valueOf(depositRefillResponse.getRate());
            if (areEqual) {
                string = r0.this$0.getString(C0859R.string.deposit_refill_template_same_rate, new Object[]{currency2});
                Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.depos…e_rate, fromDetailString)");
            } else {
                string = r0.this$0.getString(C0859R.string.deposit_refill_template, new Object[]{currency2, currency3, valueOf});
                Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.depos…DetailString, rateString)");
            }
            CharSequence charSequence = (CharSequence) string;
            SpannableString spannableString2 = new SpannableString(charSequence);
            Log.v("FirstDeposit", "formattedString: ".concat(String.valueOf(string)));
            TypefaceSpan typefaceSpan = new TypefaceSpan(typeface, i);
            TypefaceSpan typefaceSpan2 = new TypefaceSpan(typeface2, i);
            CharSequence charSequence2 = charSequence;
            SpannableString spannableString3 = spannableString2;
            int indexOf$default = StringsKt.indexOf$default(charSequence, currency2, 0, false, 6, null);
            int length = (currency2.length() + indexOf$default) - 1;
            int i2 = length + 1;
            SpannableString spannableString4 = spannableString3;
            spannableString4.setSpan(typefaceSpan, indexOf$default, length, 18);
            spannableString4.setSpan(typefaceSpan2, length, i2, 18);
            typefaceSpan2 = new TypefaceSpan(typeface, i);
            TypefaceSpan typefaceSpan3 = new TypefaceSpan(typeface2, i);
            if (areEqual) {
                spannableString = spannableString4;
            } else {
                spannableString = spannableString4;
                int i3 = 18;
                int indexOf$default2 = StringsKt.indexOf$default(charSequence2, currency3, i2, false, 4, null);
                int length2 = (currency3.length() + indexOf$default2) - 1;
                int i4 = length2 + 1;
                spannableString.setSpan(typefaceSpan2, indexOf$default2, length2, i3);
                spannableString.setSpan(typefaceSpan3, length2, i4, i3);
                typefaceSpan2 = new TypefaceSpan(typeface, i);
                int indexOf$default3 = StringsKt.indexOf$default(charSequence2, valueOf, i4, false, 4, null);
                spannableString.setSpan(typefaceSpan2, indexOf$default3, valueOf.length() + indexOf$default3, i3);
            }
            FirstDepositRefillFragment.access$getRefillInformationView$p(r0.this$0).setText(spannableString);
            FirstDepositRefillFragment firstDepositRefillFragment = r0.this$0;
            RefillDetail to3 = depositRefillResponse.getTo();
            if (to3 == null) {
                Intrinsics.throwNpe();
            }
            firstDepositRefillFragment.amount = BigDecimal.valueOf(to3.getAmount());
            r0.this$0.refreshOpenButton(true);
            FirstDepositRefillFragment.access$getInputLayoutAmountView$p(r0.this$0).setError(null);
            FirstDepositRefillFragment.access$getInputLayoutAmountView$p(r0.this$0).setErrorEnabled(false);
            FirstDepositRefillFragment.access$getRefillInformationView$p(r0.this$0).setVisibility(0);
            return;
        }
        FirstDepositRefillFragment.access$getInputLayoutAmountView$p(r0.this$0).setError(depositRefillResponse.getText());
        FirstDepositRefillFragment.access$getInputLayoutAmountView$p(r0.this$0).setErrorEnabled(true);
        r0.this$0.refreshOpenButton(false);
    }
}
