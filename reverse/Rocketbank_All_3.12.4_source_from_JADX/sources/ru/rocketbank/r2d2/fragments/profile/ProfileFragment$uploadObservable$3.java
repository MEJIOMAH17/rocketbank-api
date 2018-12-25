package ru.rocketbank.r2d2.fragments.profile;

import android.util.Log;
import java.io.File;
import rx.functions.Action0;

/* compiled from: ProfileFragment.kt */
final class ProfileFragment$uploadObservable$3 implements Action0 {
    final /* synthetic */ File $file;
    final /* synthetic */ String $fileNameWithPath;

    ProfileFragment$uploadObservable$3(File file, String str) {
        this.$file = file;
        this.$fileNameWithPath = str;
    }

    public final void call() {
        if (!this.$file.delete()) {
            String access$getTAG$cp = ProfileFragment.TAG;
            StringBuilder stringBuilder = new StringBuilder("File stays!!! ");
            stringBuilder.append(this.$fileNameWithPath);
            Log.e(access$getTAG$cp, stringBuilder.toString());
        }
    }
}
