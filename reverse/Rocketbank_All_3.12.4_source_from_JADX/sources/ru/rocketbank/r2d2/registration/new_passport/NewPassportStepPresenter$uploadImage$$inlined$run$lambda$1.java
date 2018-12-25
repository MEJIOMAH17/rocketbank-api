package ru.rocketbank.r2d2.registration.new_passport;

import java.io.File;
import okhttp3.MediaType;
import okhttp3.MultipartBody.Part;
import okhttp3.RequestBody;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

/* compiled from: NewPassportStepPresenter.kt */
final class NewPassportStepPresenter$uploadImage$$inlined$run$lambda$1<T> implements OnSubscribe<T> {
    final /* synthetic */ String $path$inlined;
    final /* synthetic */ int $step$inlined;
    final /* synthetic */ NewPassportStepPresenter this$0;

    NewPassportStepPresenter$uploadImage$$inlined$run$lambda$1(NewPassportStepPresenter newPassportStepPresenter, String str, int i) {
        this.this$0 = newPassportStepPresenter;
        this.$path$inlined = str;
        this.$step$inlined = i;
    }

    public final void call(Subscriber<? super Part> subscriber) {
        File file = new File(this.$path$inlined);
        subscriber.onNext(Part.createFormData("image", file.getAbsolutePath(), RequestBody.create(MediaType.parse("image"), file)));
    }
}
