package ru.rocketbank.r2d2.root.chat;

import android.graphics.Bitmap;
import android.util.Log;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.message.ImageAttachment;
import ru.rocketbank.core.model.message.MessageIn;
import ru.rocketbank.r2d2.root.chat.sync.event.PendingMessagesEvent;
import rx.Subscriber;

/* compiled from: MessageManager.kt */
public final class MessageManager$uploadImage$1 extends Subscriber<Bitmap> {
    final /* synthetic */ MessageIn $message;
    final /* synthetic */ MessageManager this$0;

    public final void onCompleted() {
    }

    MessageManager$uploadImage$1(MessageManager messageManager, MessageIn messageIn) {
        this.this$0 = messageManager;
        this.$message = messageIn;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        Log.e(MessageManager.TAG, "Can not open image", th);
        AnalyticsManager.logException(th);
        this.$message.setFailed(true);
    }

    public final void onNext(Bitmap bitmap) {
        Intrinsics.checkParameterIsNotNull(bitmap, "bitmap");
        ImageAttachment imageAttachment = (ImageAttachment) this.$message.getAttachment();
        if (imageAttachment != null) {
            imageAttachment.setWidth(bitmap.getWidth());
            imageAttachment.setHeight(bitmap.getHeight());
            this.this$0.messageSync.getPublishSubject().onNext(new PendingMessagesEvent(CollectionsKt.listOf(this.$message), null, 2, null));
            this.this$0.uploadImageToServer(bitmap, this.$message);
        }
    }
}
