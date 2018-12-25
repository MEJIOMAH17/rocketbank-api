package ru.rocketbank.r2d2.root.chat;

import android.util.Log;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.message.ImageAttachment;
import ru.rocketbank.core.model.message.MessageIn;
import ru.rocketbank.core.network.model.UploadImageResponse;
import rx.Subscriber;

/* compiled from: MessageManager.kt */
public final class MessageManager$uploadImageToServer$1 extends Subscriber<UploadImageResponse> {
    final /* synthetic */ ImageAttachment $imageAttachment;
    final /* synthetic */ MessageIn $message;
    final /* synthetic */ MessageManager this$0;

    public final void onCompleted() {
    }

    MessageManager$uploadImageToServer$1(MessageManager messageManager, MessageIn messageIn, ImageAttachment imageAttachment) {
        this.this$0 = messageManager;
        this.$message = messageIn;
        this.$imageAttachment = imageAttachment;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Log.e(MessageManager.TAG, "Failed to upload image", th);
        AnalyticsManager.logException(th);
        this.$message.setFailed(true);
        th = this.$imageAttachment;
        if (th != null) {
            th.setUploading(false);
        }
    }

    public final void onNext(UploadImageResponse uploadImageResponse) {
        ImageAttachment imageAttachment = this.$imageAttachment;
        if (!(imageAttachment == null || uploadImageResponse == null)) {
            uploadImageResponse = uploadImageResponse.getImage();
            if (uploadImageResponse != null) {
                imageAttachment.setId(uploadImageResponse.getId());
                imageAttachment.setWidth(uploadImageResponse.getWidth());
                imageAttachment.setHeight(uploadImageResponse.getHeight());
                imageAttachment.setUploading(null);
                this.this$0.messageSync.sendMessage(this.$message);
            }
        }
    }
}
