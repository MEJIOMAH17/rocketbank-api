package ru.rocketbank.r2d2.fragments.rocketrouble;

import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.support.constraint.ConstraintLayout;
import android.widget.ProgressBar;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.RocketRoublesInfo;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.databinding.InfoOnetwotripBinding;
import rx.Subscriber;

/* compiled from: RocketRubleInfoActivity.kt */
public final class RocketRubleInfoActivity$onCreate$1 extends Subscriber<RocketRoublesInfo> {
    final /* synthetic */ RocketRubleInfoActivity this$0;

    public final void onCompleted() {
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
    }

    RocketRubleInfoActivity$onCreate$1(RocketRubleInfoActivity rocketRubleInfoActivity) {
        this.this$0 = rocketRubleInfoActivity;
    }

    public final void onNext(RocketRoublesInfo rocketRoublesInfo) {
        if (rocketRoublesInfo != null) {
            ProgressBar progressBar = (ProgressBar) this.this$0._$_findCachedViewById(C0859R.id.progressBar);
            Intrinsics.checkExpressionValueIsNotNull(progressBar, "progressBar");
            progressBar.setVisibility(8);
            ConstraintLayout constraintLayout;
            if (Intrinsics.areEqual(rocketRoublesInfo.getCashbackType(), "onetwotrip")) {
                constraintLayout = (ConstraintLayout) this.this$0._$_findCachedViewById(C0859R.id.onetwotrip);
                Intrinsics.checkExpressionValueIsNotNull(constraintLayout, "onetwotrip");
                constraintLayout.setVisibility(0);
                constraintLayout = (ConstraintLayout) this.this$0._$_findCachedViewById(C0859R.id.rocketrubles);
                Intrinsics.checkExpressionValueIsNotNull(constraintLayout, "rocketrubles");
                constraintLayout.setVisibility(8);
                ViewDataBinding bind = DataBindingUtil.bind((ConstraintLayout) this.this$0._$_findCachedViewById(C0859R.id.onetwotrip));
                if (bind == null) {
                    Intrinsics.throwNpe();
                }
                Intrinsics.checkExpressionValueIsNotNull(bind, "DataBindingUtil.bind<Inf…ripBinding>(onetwotrip)!!");
                ((InfoOnetwotripBinding) bind).setData(rocketRoublesInfo);
                return;
            }
            constraintLayout = (ConstraintLayout) this.this$0._$_findCachedViewById(C0859R.id.onetwotrip);
            Intrinsics.checkExpressionValueIsNotNull(constraintLayout, "onetwotrip");
            constraintLayout.setVisibility(8);
            constraintLayout = (ConstraintLayout) this.this$0._$_findCachedViewById(C0859R.id.rocketrubles);
            Intrinsics.checkExpressionValueIsNotNull(constraintLayout, "rocketrubles");
            constraintLayout.setVisibility(0);
            String text1 = rocketRoublesInfo.getText1();
            if (text1 == null) {
                text1 = "";
            }
            String text2 = rocketRoublesInfo.getText2();
            if (text2 == null) {
                text2 = "";
            }
            RocketTextView rocketTextView = (RocketTextView) this.this$0._$_findCachedViewById(C0859R.id.descriptionXXX);
            Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "descriptionXXX");
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(text1);
            stringBuilder.append("\n\n");
            stringBuilder.append(text2);
            rocketTextView.setText(stringBuilder.toString());
            RocketTextView rocketTextView2 = (RocketTextView) this.this$0._$_findCachedViewById(C0859R.id.descriptionXXX);
            Intrinsics.checkExpressionValueIsNotNull(rocketTextView2, "descriptionXXX");
            rocketTextView2.setVisibility(0);
            this.this$0.refreshRocketScreen(rocketRoublesInfo.getCashbackType());
        }
    }
}
