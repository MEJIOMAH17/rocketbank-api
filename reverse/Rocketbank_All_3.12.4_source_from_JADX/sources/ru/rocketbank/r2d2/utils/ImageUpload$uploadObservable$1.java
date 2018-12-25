package ru.rocketbank.r2d2.utils;

import java.io.IOException;
import ru.rocketbank.core.network.model.UploadImageResponse;
import rx.Observable.OnSubscribe;
import rx.Subscriber;

/* compiled from: ImageUpload.kt */
final class ImageUpload$uploadObservable$1<T> implements OnSubscribe<T> {
    final /* synthetic */ IOException $e;

    ImageUpload$uploadObservable$1(IOException iOException) {
        this.$e = iOException;
    }

    public final void call(Subscriber<? super UploadImageResponse> subscriber) {
        subscriber.onError(this.$e);
    }
}
