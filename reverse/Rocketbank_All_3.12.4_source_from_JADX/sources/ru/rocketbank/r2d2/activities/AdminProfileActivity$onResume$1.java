package ru.rocketbank.r2d2.activities;

import android.content.Context;
import android.widget.Toast;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.AgentResponse;
import rx.Subscriber;

/* compiled from: AdminProfileActivity.kt */
public final class AdminProfileActivity$onResume$1 extends Subscriber<AgentResponse> {
    final /* synthetic */ AdminProfileActivity this$0;

    public final void onCompleted() {
    }

    AdminProfileActivity$onResume$1(AdminProfileActivity adminProfileActivity) {
        this.this$0 = adminProfileActivity;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Toast.makeText((Context) this.this$0, "Не удалось загрузить данные", 0).show();
        this.this$0.finish();
    }

    public final void onNext(AgentResponse agentResponse) {
        Intrinsics.checkParameterIsNotNull(agentResponse, "agentResponse");
        this.this$0.showAgent(agentResponse);
    }
}
