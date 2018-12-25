package ru.rocketbank.r2d2.utils;

import java.io.File;
import rx.functions.Action0;

/* compiled from: ImageUpload.kt */
final class ImageUpload$uploadObservable$3 implements Action0 {
    final /* synthetic */ File $file;

    ImageUpload$uploadObservable$3(File file) {
        this.$file = file;
    }

    public final void call() {
        this.$file.delete();
    }
}
