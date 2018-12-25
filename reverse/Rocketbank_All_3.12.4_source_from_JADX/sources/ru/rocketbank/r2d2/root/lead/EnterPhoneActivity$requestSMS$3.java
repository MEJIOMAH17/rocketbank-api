package ru.rocketbank.r2d2.root.lead;

import ru.rocketbank.core.model.register.DeviceRegisterData;
import rx.Observable;
import rx.functions.Func1;

/* compiled from: EnterPhoneActivity.kt */
final class EnterPhoneActivity$requestSMS$3<T, R> implements Func1<T, Observable<? extends R>> {
    final /* synthetic */ String $phoneNumber;
    final /* synthetic */ EnterPhoneActivity this$0;

    EnterPhoneActivity$requestSMS$3(EnterPhoneActivity enterPhoneActivity, String str) {
        this.this$0 = enterPhoneActivity;
        this.$phoneNumber = str;
    }

    public final Observable<DeviceRegisterData> call(String str) {
        return this.this$0.rocketAPI.register(this.$phoneNumber, str);
    }
}
