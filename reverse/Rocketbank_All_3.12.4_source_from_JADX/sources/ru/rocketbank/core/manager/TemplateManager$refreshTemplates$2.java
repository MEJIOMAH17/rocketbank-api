package ru.rocketbank.core.manager;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.TransferTemplates;
import rx.Subscriber;

/* compiled from: TemplateManager.kt */
public final class TemplateManager$refreshTemplates$2 extends Subscriber<TransferTemplates> {
    final /* synthetic */ TemplateManager this$0;

    public final void onCompleted() {
    }

    TemplateManager$refreshTemplates$2(TemplateManager templateManager) {
        this.this$0 = templateManager;
    }

    public final /* bridge */ /* synthetic */ void onNext(Object obj) {
        TransferTemplates transferTemplates = (TransferTemplates) obj;
        Intrinsics.checkParameterIsNotNull(transferTemplates, "transferTemplates");
        TemplateManager.access$setTemplates(this.this$0, transferTemplates);
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Log.e(TemplateManager.TAG, "Failed to refresh templates", th);
        this.this$0.transferTemplateSubject.onError(th);
    }
}
