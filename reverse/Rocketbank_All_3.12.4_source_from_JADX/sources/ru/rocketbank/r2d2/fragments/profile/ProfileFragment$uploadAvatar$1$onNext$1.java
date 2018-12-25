package ru.rocketbank.r2d2.fragments.profile;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.model.PatchProfileAResponse;
import rx.Subscriber;

/* compiled from: ProfileFragment.kt */
public final class ProfileFragment$uploadAvatar$1$onNext$1 extends Subscriber<PatchProfileAResponse> {
    final /* synthetic */ ProfileFragment$uploadAvatar$1 this$0;

    public final void onCompleted() {
    }

    ProfileFragment$uploadAvatar$1$onNext$1(ProfileFragment$uploadAvatar$1 profileFragment$uploadAvatar$1) {
        this.this$0 = profileFragment$uploadAvatar$1;
    }

    public final void onError(java.lang.Throwable r4) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r3 = this;
        r0 = "e";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r4, r0);
        r0 = ru.rocketbank.r2d2.fragments.profile.ProfileFragment.TAG;
        r1 = "Failed to upload avatar";
        android.util.Log.e(r0, r1, r4);
        r0 = r3.this$0;	 Catch:{ Exception -> 0x002e }
        r0 = r0.this$0;	 Catch:{ Exception -> 0x002e }
        r0 = r0.getActivity();	 Catch:{ Exception -> 0x002e }
        if (r0 == 0) goto L_0x0037;	 Catch:{ Exception -> 0x002e }
    L_0x0018:
        r0 = r3.this$0;	 Catch:{ Exception -> 0x002e }
        r0 = r0.this$0;	 Catch:{ Exception -> 0x002e }
        r0 = r0.getActivity();	 Catch:{ Exception -> 0x002e }
        r0 = (android.content.Context) r0;	 Catch:{ Exception -> 0x002e }
        r1 = 2131821336; // 0x7f110318 float:1.9275412E38 double:1.053259685E-314;	 Catch:{ Exception -> 0x002e }
        r2 = 0;	 Catch:{ Exception -> 0x002e }
        r0 = android.widget.Toast.makeText(r0, r1, r2);	 Catch:{ Exception -> 0x002e }
        r0.show();	 Catch:{ Exception -> 0x002e }
        goto L_0x0037;
    L_0x002e:
        r0 = ru.rocketbank.r2d2.fragments.profile.ProfileFragment.TAG;
        r1 = "Failed with exception";
        android.util.Log.e(r0, r1, r4);
    L_0x0037:
        r0 = r3.this$0;
        r0 = r0.this$0;
        r0.hideProgressDialog();
        ru.rocketbank.core.manager.AnalyticsManager.logException(r4);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.profile.ProfileFragment$uploadAvatar$1$onNext$1.onError(java.lang.Throwable):void");
    }

    public final void onNext(PatchProfileAResponse patchProfileAResponse) {
        Intrinsics.checkParameterIsNotNull(patchProfileAResponse, "emptyResponse");
        this.this$0.this$0.hideProgressDialog();
        this.this$0.this$0.authorization.refreshBackgroundProfile();
    }
}
