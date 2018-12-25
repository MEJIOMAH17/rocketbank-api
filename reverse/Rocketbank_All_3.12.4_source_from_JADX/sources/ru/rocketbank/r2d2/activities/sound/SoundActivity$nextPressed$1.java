package ru.rocketbank.r2d2.activities.sound;

import android.content.Context;
import android.widget.Toast;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.PatchProfileAResponse;
import ru.rocketbank.core.utils.SoundNotification;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.data.binding.sound.SchemeItemData;
import rx.Subscriber;

/* compiled from: SoundActivity.kt */
public final class SoundActivity$nextPressed$1 extends Subscriber<PatchProfileAResponse> {
    final /* synthetic */ SoundActivity this$0;

    public final void onCompleted() {
    }

    SoundActivity$nextPressed$1(SoundActivity soundActivity) {
        this.this$0 = soundActivity;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Toast.makeText((Context) this.this$0, C0859R.string.error_occur, 0).show();
        th = this.this$0.subscription;
        if (th != null) {
            th.unsubscribe();
        }
        this.this$0.hideProgressDialog();
    }

    public final void onNext(PatchProfileAResponse patchProfileAResponse) {
        Intrinsics.checkParameterIsNotNull(patchProfileAResponse, "userResponse");
        ((SchemeItemData) this.this$0.soundItems.get(this.this$0.activated)).isActive().set(false);
        this.this$0.activated = this.this$0.selected;
        ((SchemeItemData) this.this$0.soundItems.get(this.this$0.selected)).isActive().set(true);
        Context context = this.this$0;
        patchProfileAResponse = patchProfileAResponse.getResponse();
        if (patchProfileAResponse == null) {
            Intrinsics.throwNpe();
        }
        Toast.makeText(context, patchProfileAResponse.getDescription(), 0).show();
        SoundNotification.INSTANCE.recreate();
        this.this$0.toolbarData.isEnabled().set(false);
        this.this$0.hideProgressDialog();
    }
}
