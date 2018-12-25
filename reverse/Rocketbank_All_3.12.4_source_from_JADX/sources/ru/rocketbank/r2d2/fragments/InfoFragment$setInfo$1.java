package ru.rocketbank.r2d2.fragments;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.UserModel.Info;
import ru.rocketbank.r2d2.Utils;

/* compiled from: InfoFragment.kt */
final class InfoFragment$setInfo$1 implements OnClickListener {
    final /* synthetic */ Info $info;
    final /* synthetic */ InfoFragment this$0;

    InfoFragment$setInfo$1(InfoFragment infoFragment, Info info) {
        this.this$0 = infoFragment;
        this.$info = info;
    }

    public final void onClick(View view) {
        Context activity = this.this$0.getActivity();
        Info info = this.$info;
        Intrinsics.checkExpressionValueIsNotNull(info, "info");
        Utils.openUrl(activity, info.getURL());
    }
}
