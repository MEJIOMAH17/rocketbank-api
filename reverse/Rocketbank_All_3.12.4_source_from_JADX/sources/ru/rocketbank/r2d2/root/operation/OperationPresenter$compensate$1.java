package ru.rocketbank.r2d2.root.operation;

import android.widget.Toast;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.MilesCompensationResponseData;
import ru.rocketbank.core.utils.SoundNotification;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import rx.Subscriber;

/* compiled from: OperationPresenter.kt */
public final class OperationPresenter$compensate$1 extends Subscriber<MilesCompensationResponseData> {
    final /* synthetic */ OperationPresenter this$0;

    public final void onCompleted() {
    }

    OperationPresenter$compensate$1(OperationPresenter operationPresenter) {
        this.this$0 = operationPresenter;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        th = this.this$0.getUpdateListener();
        if (th != null) {
            th.dispatchHideProgress();
        }
        this.this$0.setOperationFetched(null);
        this.this$0.compensationSubsriotion = null;
        this.this$0.refreshData();
        this.this$0.requestOperationDetail();
        Toast.makeText(RocketApplication.Companion.getContext(), C0859R.string.conversion_failed, 1).show();
        this.this$0.compensationSubsriotion = null;
    }

    public final void onNext(MilesCompensationResponseData milesCompensationResponseData) {
        Intrinsics.checkParameterIsNotNull(milesCompensationResponseData, "milesCompensationResponseData");
        SoundNotification.INSTANCE.playSoundNotification(11);
        milesCompensationResponseData = this.this$0.getUpdateListener();
        if (milesCompensationResponseData != null) {
            milesCompensationResponseData.dispatchHideProgress();
        }
        milesCompensationResponseData = this.this$0.getUpdateListener();
        if (milesCompensationResponseData != null) {
            milesCompensationResponseData.dispatchUpdate();
        }
        this.this$0.refresh();
        this.this$0.setOperationFetched(null);
        this.this$0.compensationSubsriotion = null;
        this.this$0.refreshData();
        this.this$0.requestOperationDetail();
    }
}
