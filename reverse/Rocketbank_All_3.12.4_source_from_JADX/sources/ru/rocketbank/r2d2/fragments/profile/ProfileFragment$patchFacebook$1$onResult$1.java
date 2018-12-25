package ru.rocketbank.r2d2.fragments.profile;

import rx.Subscriber;

/* compiled from: ProfileFragment.kt */
public final class ProfileFragment$patchFacebook$1$onResult$1 extends Subscriber<Object> {
    final /* synthetic */ ProfileFragment$patchFacebook$1 this$0;

    public final void onCompleted() {
    }

    ProfileFragment$patchFacebook$1$onResult$1(ProfileFragment$patchFacebook$1 profileFragment$patchFacebook$1) {
        this.this$0 = profileFragment$patchFacebook$1;
    }

    public final void onNext(Object obj) {
        this.this$0.this$0.authorization.refreshBackgroundProfile();
        this.this$0.this$0.hideProgressDialog();
        unsubscribe();
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
        r0 = r3.this$0;
        r0 = r0.this$0;
        r0.hideProgressDialog();
        r3.unsubscribe();
        r0 = r3.this$0;	 Catch:{ Exception -> 0x002f }
        r0 = r0.this$0;	 Catch:{ Exception -> 0x002f }
        r0 = r0.getActivity();	 Catch:{ Exception -> 0x002f }
        if (r0 == 0) goto L_0x002e;	 Catch:{ Exception -> 0x002f }
    L_0x0019:
        r0 = r3.this$0;	 Catch:{ Exception -> 0x002f }
        r0 = r0.this$0;	 Catch:{ Exception -> 0x002f }
        r0 = r0.getActivity();	 Catch:{ Exception -> 0x002f }
        r0 = (android.content.Context) r0;	 Catch:{ Exception -> 0x002f }
        r1 = 2131821336; // 0x7f110318 float:1.9275412E38 double:1.053259685E-314;	 Catch:{ Exception -> 0x002f }
        r2 = 0;	 Catch:{ Exception -> 0x002f }
        r0 = android.widget.Toast.makeText(r0, r1, r2);	 Catch:{ Exception -> 0x002f }
        r0.show();	 Catch:{ Exception -> 0x002f }
    L_0x002e:
        return;
    L_0x002f:
        r0 = ru.rocketbank.r2d2.fragments.profile.ProfileFragment.TAG;
        r1 = "Failed with exception";
        android.util.Log.e(r0, r1, r4);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.profile.ProfileFragment$patchFacebook$1$onResult$1.onError(java.lang.Throwable):void");
    }
}
