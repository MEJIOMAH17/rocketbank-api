package ru.rocketbank.r2d2.registration.new_passport;

import okhttp3.MultipartBody.Part;
import ru.rocketbank.core.network.model.UploadImageResponse;
import rx.Observable;
import rx.functions.Func1;

/* compiled from: NewPassportStepPresenter.kt */
final class NewPassportStepPresenter$uploadImage$$inlined$run$lambda$2<T, R> implements Func1<T, Observable<? extends R>> {
    final /* synthetic */ String $path$inlined;
    final /* synthetic */ int $step$inlined;
    final /* synthetic */ NewPassportStepPresenter this$0;

    NewPassportStepPresenter$uploadImage$$inlined$run$lambda$2(NewPassportStepPresenter newPassportStepPresenter, String str, int i) {
        this.this$0 = newPassportStepPresenter;
        this.$path$inlined = str;
        this.$step$inlined = i;
    }

    public final Observable<UploadImageResponse> call(Part part) {
        return this.this$0.getApi().uploadImage(part, false);
    }
}
