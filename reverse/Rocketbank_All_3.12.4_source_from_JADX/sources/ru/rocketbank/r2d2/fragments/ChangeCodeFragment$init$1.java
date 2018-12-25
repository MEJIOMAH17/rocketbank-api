package ru.rocketbank.r2d2.fragments;

import android.text.Editable;
import android.view.View;
import android.widget.Toast;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.activities.ChangeCodeActivity;
import ru.rocketbank.r2d2.utils.TextWatcherAbstract;
import rx.Subscriber;

/* compiled from: ChangeCodeFragment.kt */
public final class ChangeCodeFragment$init$1 extends TextWatcherAbstract {
    final /* synthetic */ RocketTextView $textViewErrors;
    final /* synthetic */ View $view;
    final /* synthetic */ ChangeCodeFragment this$0;

    ChangeCodeFragment$init$1(ChangeCodeFragment changeCodeFragment, View view, RocketTextView rocketTextView) {
        this.this$0 = changeCodeFragment;
        this.$view = view;
        this.$textViewErrors = rocketTextView;
    }

    public final void afterTextChanged(Editable editable) {
        Intrinsics.checkParameterIsNotNull(editable, "editable");
        if (editable.length() == 4) {
            String obj = editable.toString();
            if (this.this$0.isFirst) {
                this.this$0.code = obj;
                this.this$0.isFirst = false;
                this.this$0.init(this.$view);
                editable = this.$textViewErrors;
                Intrinsics.checkExpressionValueIsNotNull(editable, "textViewErrors");
                editable.setVisibility(8);
                return;
            }
            Utils.closeKeyboardIfExists(this.this$0.getActivity());
            if ((Intrinsics.areEqual(this.this$0.code, obj) ^ 1) != null) {
                Toast.makeText(this.this$0.getActivity(), C0859R.string.codes_not_equals, 0).show();
                this.this$0.reset(this.$view);
                return;
            }
            if (this.this$0.isCode != null) {
                code();
            } else {
                pin();
            }
            this.this$0.code = null;
            this.this$0.isFirst = true;
        }
    }

    private final void code() {
        ChangeCodeActivity access$getChangeActivity$p = this.this$0.getChangeActivity();
        if (access$getChangeActivity$p == null) {
            Intrinsics.throwNpe();
        }
        access$getChangeActivity$p.showProgressDialog();
        ChangeCodeFragment changeCodeFragment = this.this$0;
        ChangeCodeFragment changeCodeFragment2 = this.this$0;
        String access$getCode$p = this.this$0.code;
        if (access$getCode$p == null) {
            Intrinsics.throwNpe();
        }
        changeCodeFragment.codeSubscription = changeCodeFragment2.getCodeObservable(access$getCode$p, this.this$0.plastic_check_id).subscribe((Subscriber) new ChangeCodeFragment$init$1$code$1(this));
    }

    private final void pin() {
        ChangeCodeActivity access$getChangeActivity$p = this.this$0.getChangeActivity();
        if (access$getChangeActivity$p == null) {
            Intrinsics.throwNpe();
        }
        access$getChangeActivity$p.showProgressDialog();
        ChangeCodeFragment changeCodeFragment = this.this$0;
        ChangeCodeFragment changeCodeFragment2 = this.this$0;
        boolean access$isActivation$p = this.this$0.isActivation;
        String access$getPlastic_check_id$p = this.this$0.plastic_check_id;
        if (access$getPlastic_check_id$p == null) {
            Intrinsics.throwNpe();
        }
        String access$getCode$p = this.this$0.code;
        if (access$getCode$p == null) {
            Intrinsics.throwNpe();
        }
        String access$getPlasticToken$p = this.this$0.plasticToken;
        if (access$getPlasticToken$p == null) {
            Intrinsics.throwNpe();
        }
        changeCodeFragment.pinSubscription = changeCodeFragment2.getPinObservable(access$isActivation$p, access$getPlastic_check_id$p, access$getCode$p, access$getPlasticToken$p).subscribe((Subscriber) new ChangeCodeFragment$init$1$pin$1(this));
    }
}
