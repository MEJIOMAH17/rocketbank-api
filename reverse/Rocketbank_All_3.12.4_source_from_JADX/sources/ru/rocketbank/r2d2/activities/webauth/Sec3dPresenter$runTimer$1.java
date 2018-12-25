package ru.rocketbank.r2d2.activities.webauth;

import android.os.CountDownTimer;
import java.util.Calendar;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Sec3dPresenter.kt */
public final class Sec3dPresenter$runTimer$1 extends CountDownTimer {
    final /* synthetic */ long $timeLeft;
    final /* synthetic */ Sec3dPresenter this$0;

    Sec3dPresenter$runTimer$1(Sec3dPresenter sec3dPresenter, long j, long j2, long j3) {
        this.this$0 = sec3dPresenter;
        this.$timeLeft = j;
        super(j2, j3);
    }

    public final void onFinish() {
        Sec3dView access$getView$p = this.this$0.view;
        if (access$getView$p != null) {
            access$getView$p.onTimeOut();
        }
        cancel();
    }

    public final void onTick(long j) {
        Calendar access$getCalendar$p = this.this$0.calendar;
        access$getCalendar$p.setTimeInMillis(j);
        Intrinsics.checkExpressionValueIsNotNull(access$getCalendar$p, "calendar.apply {\n       …hed\n                    }");
        j = access$getCalendar$p.getTime();
        Sec3dView access$getView$p = this.this$0.view;
        if (access$getView$p != null) {
            j = this.this$0.format.format(j);
            Intrinsics.checkExpressionValueIsNotNull(j, "format.format(time)");
            access$getView$p.updateTime(j);
        }
    }
}
