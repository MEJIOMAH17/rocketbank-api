package ru.rocketbank.r2d2.root.chat;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import com.facebook.share.internal.ShareConstants;
import java.io.File;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.model.message.Attachment;
import ru.rocketbank.core.model.message.ImageAttachment;
import ru.rocketbank.core.model.message.MessageIn;
import ru.rocketbank.core.model.message.OperationAttachment;
import ru.rocketbank.core.model.message.StickerAttachment;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.network.model.UploadImageResponse;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.root.chat.sync.MessageSync;
import ru.rocketbank.r2d2.root.chat.sync.event.MessageEvent;
import ru.rocketbank.r2d2.utils.ImageUpload;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

/* compiled from: MessageManager.kt */
public final class MessageManager {
    public static final Companion Companion = new Companion();
    private static final String TAG = "MessageManager";
    private final Authorization authorization = RocketApplication.Companion.getInjector().getAuthorization();
    private final MessageSync messageSync = new MessageSync();
    private final RocketAPI rocketAPI = RocketApplication.Companion.getInjector().getRocketApi();

    /* compiled from: MessageManager.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final Authorization getAuthorization() {
        return this.authorization;
    }

    public final RocketAPI getRocketAPI() {
        return this.rocketAPI;
    }

    public final void onCreate(Bundle bundle) {
        this.messageSync.onCreate(bundle);
    }

    public final void onStart() {
        this.messageSync.onStart();
    }

    public final void onStop() {
        this.messageSync.onStop();
    }

    public final void send(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        long currentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
        MessageIn messageIn = new MessageIn();
        new OperationAttachment().setOperation(operation);
        messageIn.setBody(null);
        messageIn.setId(currentThreadTimeMillis);
        messageIn.setCreatedAt((int) (currentThreadTimeMillis / 1000));
        messageIn.setAttachments(CollectionsKt.mutableListOf(new Attachment[]{r3}));
        this.messageSync.sendMessage(messageIn);
    }

    public final void send(String str) {
        Intrinsics.checkParameterIsNotNull(str, ProviderField.TEXT);
        long currentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
        MessageIn messageIn = new MessageIn();
        messageIn.setBody(str);
        messageIn.setId(currentThreadTimeMillis);
        messageIn.setCreatedAt((int) (currentThreadTimeMillis / 1000));
        this.messageSync.sendMessage(messageIn);
    }

    public final void sendLove() {
        long currentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
        MessageIn messageIn = new MessageIn();
        messageIn.setId(currentThreadTimeMillis);
        messageIn.setCreatedAt((int) (currentThreadTimeMillis / 1000));
        messageIn.setAttachments(CollectionsKt.mutableListOf(new Attachment[]{new StickerAttachment()}));
        this.messageSync.sendMessage(messageIn);
    }

    public final void refresh() {
        this.messageSync.loadHead();
    }

    public final void loadNextPage() {
        this.messageSync.loadNext();
    }

    public final Observable<MessageEvent> messageObservable() {
        Observable<MessageEvent> asObservable = this.messageSync.getPublishSubject().asObservable();
        Intrinsics.checkExpressionValueIsNotNull(asObservable, "messageSync.publishSubject.asObservable()");
        return asObservable;
    }

    private final Observable<UploadImageResponse> uploadObservable(Bitmap bitmap) {
        try {
            StringBuilder stringBuilder = new StringBuilder("file_");
            stringBuilder.append(String.valueOf(System.currentTimeMillis()));
            File createTempFile = File.createTempFile(stringBuilder.toString(), ".jpg");
            Intrinsics.checkExpressionValueIsNotNull(createTempFile, "File.createTempFile(\"fil…lis().toString(), \".jpg\")");
            String absolutePath = createTempFile.getAbsolutePath();
            Intrinsics.checkExpressionValueIsNotNull(absolutePath, "file.absolutePath");
            bitmap = Observable.just(bitmap).flatMap(new MessageManager$uploadObservable$2(this, createTempFile)).doOnUnsubscribe(new MessageManager$uploadObservable$3(createTempFile, absolutePath));
            Intrinsics.checkExpressionValueIsNotNull(bitmap, "Observable.just(bitmap).…)\n            }\n        }");
            return bitmap;
        } catch (Bitmap bitmap2) {
            bitmap2 = Observable.create((OnSubscribe) new MessageManager$uploadObservable$1(bitmap2));
            Intrinsics.checkExpressionValueIsNotNull(bitmap2, "Observable.create { subs…> subscriber.onError(e) }");
            return bitmap2;
        }
    }

    private final void uploadImageToServer(Bitmap bitmap, MessageIn messageIn) {
        uploadObservable(bitmap).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new MessageManager$uploadImageToServer$1(this, messageIn, (ImageAttachment) messageIn.getAttachment()));
    }

    private final Observable<Bitmap> observableFromGallery(Intent intent) {
        ImageUpload imageUpload = ImageUpload.INSTANCE;
        Uri data = intent.getData();
        Intrinsics.checkExpressionValueIsNotNull(data, "data.data");
        return imageUpload.observableFromGallery(data);
    }

    public final void retryMessage(MessageIn messageIn) {
        Intrinsics.checkParameterIsNotNull(messageIn, ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        Attachment attachment = messageIn.getAttachment();
        if (attachment instanceof ImageAttachment) {
            Uri imagePath = ((ImageAttachment) attachment).getImagePath();
            if (attachment.getId() == 0 && imagePath != null) {
                File file = new File(imagePath.getPath());
                ImageUpload imageUpload = ImageUpload.INSTANCE;
                String absolutePath = file.getAbsolutePath();
                Intrinsics.checkExpressionValueIsNotNull(absolutePath, "file.absolutePath");
                uploadImage(imageUpload.observableFromCamera(absolutePath, 1024), messageIn);
                return;
            }
        }
        this.messageSync.sendMessage(messageIn);
    }

    public final void uploadFromCamera(String str, int i) {
        Intrinsics.checkParameterIsNotNull(str, "cameraPhotoPath");
        ImageAttachment imageAttachment = new ImageAttachment();
        imageAttachment.setImagePath(Uri.fromFile(new File(str)));
        imageAttachment.setUploading(true);
        imageAttachment.setId(0);
        imageAttachment.setWidth(i);
        long currentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
        MessageIn messageIn = new MessageIn();
        messageIn.setId(currentThreadTimeMillis);
        messageIn.setCreatedAt((int) (currentThreadTimeMillis / 1000));
        messageIn.setAttachments(CollectionsKt.arrayListOf(new Attachment[]{imageAttachment}));
        uploadImage(ImageUpload.INSTANCE.observableFromCamera(str, i), messageIn);
    }

    public final void uploadFromGallery(Intent intent, int i) {
        if (intent != null) {
            ImageAttachment imageAttachment = new ImageAttachment();
            imageAttachment.setImagePath(intent.getData());
            imageAttachment.setUploading(true);
            imageAttachment.setId(0);
            imageAttachment.setWidth(i);
            long currentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
            i = new MessageIn();
            i.setId(currentThreadTimeMillis);
            i.setCreatedAt((int) (currentThreadTimeMillis / 1000));
            i.setAttachments(CollectionsKt.arrayListOf(new Attachment[]{imageAttachment}));
            uploadImage(observableFromGallery(intent), i);
        }
    }

    private final MessageIn uploadImage(Observable<Bitmap> observable, MessageIn messageIn) {
        observable.subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Subscriber) new MessageManager$uploadImage$1(this, messageIn));
        messageIn.setUploading(true);
        ImageAttachment imageAttachment = (ImageAttachment) messageIn.getAttachment();
        if (imageAttachment != null) {
            imageAttachment.setUploading(true);
        }
        return messageIn;
    }

    private final void retryImage(MessageIn messageIn) {
        messageIn.setUploading(true);
        messageIn.setFailed(false);
        Attachment attachment = messageIn.getAttachment();
        if (attachment == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.message.ImageAttachment");
        }
        Uri imagePath = ((ImageAttachment) attachment).getImagePath();
        if (imagePath != null) {
            uploadImage(ImageUpload.INSTANCE.observableFromGallery(imagePath), messageIn);
        }
    }
}
