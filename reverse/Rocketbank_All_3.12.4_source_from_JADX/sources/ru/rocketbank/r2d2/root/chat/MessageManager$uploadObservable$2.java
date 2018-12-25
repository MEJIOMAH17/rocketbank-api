package ru.rocketbank.r2d2.root.chat;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import java.io.File;
import java.io.FileOutputStream;
import okhttp3.MediaType;
import okhttp3.MultipartBody.Part;
import okhttp3.RequestBody;
import ru.rocketbank.core.network.model.UploadImageResponse;
import rx.Observable;
import rx.functions.Func1;

/* compiled from: MessageManager.kt */
final class MessageManager$uploadObservable$2<T, R> implements Func1<T, Observable<? extends R>> {
    final /* synthetic */ File $file;
    final /* synthetic */ MessageManager this$0;

    MessageManager$uploadObservable$2(MessageManager messageManager, File file) {
        this.this$0 = messageManager;
        this.$file = file;
    }

    public final Observable<UploadImageResponse> call(Bitmap bitmap) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(this.$file);
            bitmap.compress(CompressFormat.JPEG, 100, fileOutputStream);
            fileOutputStream.close();
            return this.this$0.getRocketAPI().uploadImage(Part.createFormData("image", this.$file.getName(), RequestBody.create(MediaType.parse("image/*"), this.$file)), false);
        } catch (Bitmap bitmap2) {
            throw new IllegalStateException((Throwable) bitmap2);
        }
    }
}
