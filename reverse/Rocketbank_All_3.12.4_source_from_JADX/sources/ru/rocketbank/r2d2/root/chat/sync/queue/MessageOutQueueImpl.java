package ru.rocketbank.r2d2.root.chat.sync.queue;

import android.util.Log;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.model.message.Attachment;
import ru.rocketbank.core.model.message.ImageAttachment;
import ru.rocketbank.core.model.message.MessageIn;
import ru.rocketbank.core.model.message.OperationAttachment;
import ru.rocketbank.core.model.message.StickerAttachment;
import ru.rocketbank.core.network.api.MessageApi;
import ru.rocketbank.core.network.model.MessageResponse;
import ru.rocketbank.r2d2.root.chat.sync.SendingException;
import ru.rocketbank.r2d2.root.chat.sync.event.MessageEvent;
import ru.rocketbank.r2d2.root.chat.sync.event.PublishedMessageErrorEvent;
import ru.rocketbank.r2d2.root.chat.sync.event.PublishedMessageEvent;
import rx.Observable;
import rx.Subscriber;
import rx.functions.Func1;
import rx.subjects.PublishSubject;

/* compiled from: MessageOutQueueImpl.kt */
public final class MessageOutQueueImpl implements MessageOutQueue {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(MessageOutQueueImpl.class), "messageApi", "getMessageApi()Lru/rocketbank/core/network/api/MessageApi;"))};
    public static final Companion Companion = new Companion();
    private static final String TAG = "MSGQUE";
    private final Lazy messageApi$delegate = ExceptionsKt__ExceptionsKt.lazy((Function0) MessageOutQueueImpl$messageApi$2.INSTANCE);
    private Observable<Long> periodic = Observable.interval(300, 300, TimeUnit.MILLISECONDS);
    private final PublishSubject<MessageEvent> publishSubject;
    private final ConcurrentLinkedQueue<MessageIn> queue = new ConcurrentLinkedQueue();
    private final PublishSubject<Long> refreshSubject = PublishSubject.create();

    /* compiled from: MessageOutQueueImpl.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getTAG() {
            return MessageOutQueueImpl.TAG;
        }
    }

    /* compiled from: MessageOutQueueImpl.kt */
    /* renamed from: ru.rocketbank.r2d2.root.chat.sync.queue.MessageOutQueueImpl$2 */
    static final class C18262<T, R> implements Func1<MessageIn, Boolean> {
        public static final C18262 INSTANCE = new C18262();

        C18262() {
        }

        public final boolean call(MessageIn messageIn) {
            return messageIn != null;
        }
    }

    private final MessageApi getMessageApi() {
        return (MessageApi) this.messageApi$delegate.getValue();
    }

    public MessageOutQueueImpl(PublishSubject<MessageEvent> publishSubject) {
        Intrinsics.checkParameterIsNotNull(publishSubject, "publishSubject");
        this.publishSubject = publishSubject;
        this.periodic.mergeWith(this.refreshSubject).onBackpressureBuffer().map(new Func1<T, R>() {
            public final MessageIn call(Long l) {
                return (MessageIn) this.queue.poll();
            }
        }).filter(C18262.INSTANCE).concatMap(new Func1<T, Observable<? extends R>>() {
            public final Observable<Pair<MessageIn, MessageResponse>> call(MessageIn messageIn) {
                MessageOutQueueImpl messageOutQueueImpl = this;
                Intrinsics.checkExpressionValueIsNotNull(messageIn, "it");
                return messageOutQueueImpl.sending(messageIn);
            }
        }).subscribe((Subscriber) new Subscriber<Pair<? extends MessageIn, ? extends MessageResponse>>() {
            public final void onCompleted() {
            }

            public final void onNext(Pair<MessageIn, MessageResponse> pair) {
                if (pair != null) {
                    MessageIn messageIn = (MessageIn) pair.getFirst();
                    pair = ((MessageResponse) pair.getSecond()).getMessage();
                    if (pair == null) {
                        messageIn.setFailed(true);
                        this.getPublishSubject().onNext(new PublishedMessageErrorEvent(messageIn, null, 2, null));
                        return;
                    }
                    messageIn.setCreatedAt(pair.getCreatedAt());
                    messageIn.setAdminPermalink(pair.getAdminPermalink());
                    messageIn.setAttachments(pair.getAttachments());
                    messageIn.setDeliveredAt(pair.getDeliveredAt());
                    messageIn.setAuthor(pair.getAuthor());
                    messageIn.setId(pair.getId());
                    messageIn.setAuthor(pair.getAuthor());
                    messageIn.setReadAt(pair.getReadAt());
                    messageIn.setUploading(false);
                    messageIn.setFailed(false);
                    this.getPublishSubject().onNext(new PublishedMessageEvent(messageIn, null, 2, null));
                }
            }

            public final void onError(Throwable th) {
                if (th instanceof SendingException) {
                    MessageIn messageIn = ((SendingException) th).getMessageIn();
                    messageIn.setFailed(true);
                    messageIn.setUploading(false);
                    this.getPublishSubject().onNext(new PublishedMessageErrorEvent(messageIn, null, 2, null));
                }
                Log.e(MessageOutQueueImpl.Companion.getTAG(), "Failed to send", th);
            }
        });
    }

    public final PublishSubject<MessageEvent> getPublishSubject() {
        return this.publishSubject;
    }

    public final boolean isEmpty() {
        return this.queue.isEmpty();
    }

    public final void sendMessage(MessageIn messageIn) {
        Intrinsics.checkParameterIsNotNull(messageIn, "messageIn");
        messageIn.setUploading(true);
        this.queue.add(messageIn);
        this.refreshSubject.onNext(Long.valueOf(-1));
    }

    private final Observable<Pair<MessageIn, MessageResponse>> sending(MessageIn messageIn) {
        messageIn = selectSending(messageIn).map(new MessageOutQueueImpl$sending$1(messageIn)).onErrorReturn(new MessageOutQueueImpl$sending$2(messageIn));
        Intrinsics.checkExpressionValueIsNotNull(messageIn, "selectSending(messageIn)…In)\n                    }");
        return messageIn;
    }

    private final Observable<MessageResponse> selectSending(MessageIn messageIn) {
        Attachment attachment = messageIn.getAttachment();
        if (attachment instanceof ImageAttachment) {
            return sendingImage(messageIn);
        }
        if (attachment instanceof OperationAttachment) {
            return sendingOperation(messageIn);
        }
        if (attachment instanceof StickerAttachment) {
            return sendingSticker();
        }
        return sendingText(messageIn);
    }

    private final Observable<MessageResponse> sendingText(MessageIn messageIn) {
        messageIn = getMessageApi().message(null, null, messageIn.getBody());
        Intrinsics.checkExpressionValueIsNotNull(messageIn, "messageApi.message(null, null, message.body)");
        return messageIn;
    }

    private final Observable<MessageResponse> sendingSticker() {
        Observable<MessageResponse> sendLove = getMessageApi().sendLove("");
        Intrinsics.checkExpressionValueIsNotNull(sendLove, "messageApi.sendLove(\"\")");
        return sendLove;
    }

    private final Observable<MessageResponse> sendingOperation(MessageIn messageIn) {
        messageIn = messageIn.getAttachment();
        if (messageIn == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.message.OperationAttachment");
        }
        messageIn = ((OperationAttachment) messageIn).getOperation();
        messageIn = messageIn != null ? Long.valueOf(messageIn.getId()) : null;
        if (messageIn != null) {
            messageIn.longValue();
            messageIn = getMessageApi().message(null, messageIn, null);
            Intrinsics.checkExpressionValueIsNotNull(messageIn, "messageApi.message(null, operationId, null)");
            return messageIn;
        }
        messageIn = Observable.error((Throwable) new IllegalArgumentException("No id"));
        Intrinsics.checkExpressionValueIsNotNull(messageIn, "Observable.error<Message…gumentException(\"No id\"))");
        return messageIn;
    }

    private final Observable<MessageResponse> sendingImage(MessageIn messageIn) {
        messageIn = messageIn.getAttachment();
        if (messageIn == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.message.ImageAttachment");
        }
        messageIn = getMessageApi().message(Integer.valueOf(((ImageAttachment) messageIn).getId()), null, null);
        Intrinsics.checkExpressionValueIsNotNull(messageIn, "messageApi.message(imageId, null, null)");
        return messageIn;
    }
}
