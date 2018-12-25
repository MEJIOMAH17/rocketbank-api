package ru.rocketbank.r2d2.activities;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ReferencesActivity.kt */
final class ReferencesActivity$onReferenceClicked$2 implements OnClickListener {
    final /* synthetic */ Context $context;
    final /* synthetic */ ReferencesActivity this$0;

    ReferencesActivity$onReferenceClicked$2(ReferencesActivity referencesActivity, Context context) {
        this.this$0 = referencesActivity;
        this.$context = context;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface = DownloadActivity.Companion;
        i = this.$context;
        Intrinsics.checkExpressionValueIsNotNull(i, "context");
        String access$getToken$p = this.this$0.token;
        String kind = this.this$0.getLastRef().getKind();
        if (kind == null) {
            Intrinsics.throwNpe();
        }
        dialogInterface.startDownloadReference(i, access$getToken$p, kind);
    }
}
