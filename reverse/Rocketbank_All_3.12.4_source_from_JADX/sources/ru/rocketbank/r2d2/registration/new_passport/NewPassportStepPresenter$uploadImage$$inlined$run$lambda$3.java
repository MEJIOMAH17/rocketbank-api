package ru.rocketbank.r2d2.registration.new_passport;

import ru.rocketbank.core.network.model.UploadImageResponse;
import rx.functions.Action1;

/* compiled from: NewPassportStepPresenter.kt */
final class NewPassportStepPresenter$uploadImage$$inlined$run$lambda$3<T> implements Action1<UploadImageResponse> {
    final /* synthetic */ String $path$inlined;
    final /* synthetic */ int $step$inlined;
    final /* synthetic */ NewPassportStepView receiver$0;
    final /* synthetic */ NewPassportStepPresenter this$0;

    NewPassportStepPresenter$uploadImage$$inlined$run$lambda$3(NewPassportStepView newPassportStepView, NewPassportStepPresenter newPassportStepPresenter, String str, int i) {
        this.receiver$0 = newPassportStepView;
        this.this$0 = newPassportStepPresenter;
        this.$path$inlined = str;
        this.$step$inlined = i;
    }

    public final void call(UploadImageResponse uploadImageResponse) {
        uploadImageResponse = uploadImageResponse.getImage();
        if (uploadImageResponse != null) {
            NewPassportStepPresenter.Companion.getImages().put(this.this$0.imageFieldForStep(this.$step$inlined), Integer.valueOf(uploadImageResponse.getId()));
        }
        this.receiver$0.hideProgress();
        this.receiver$0.nextStep(this.$step$inlined + 1);
    }
}
