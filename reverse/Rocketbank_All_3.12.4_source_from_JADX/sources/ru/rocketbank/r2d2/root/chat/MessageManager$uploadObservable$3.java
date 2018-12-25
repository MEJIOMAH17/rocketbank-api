package ru.rocketbank.r2d2.root.chat;

import android.util.Log;
import java.io.File;
import rx.functions.Action0;

/* compiled from: MessageManager.kt */
final class MessageManager$uploadObservable$3 implements Action0 {
    final /* synthetic */ File $file;
    final /* synthetic */ String $fileNameWithPath;

    MessageManager$uploadObservable$3(File file, String str) {
        this.$file = file;
        this.$fileNameWithPath = str;
    }

    public final void call() {
        if (!this.$file.delete()) {
            String access$getTAG$cp = MessageManager.TAG;
            StringBuilder stringBuilder = new StringBuilder("File stays!!! ");
            stringBuilder.append(this.$fileNameWithPath);
            Log.e(access$getTAG$cp, stringBuilder.toString());
        }
    }
}
