package ru.rocketbank.r2d2.root.chat.sync;

import android.os.Bundle;
import android.util.Log;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.Pagination;
import ru.rocketbank.core.model.message.Attachment;
import ru.rocketbank.core.model.message.MessageIn;
import ru.rocketbank.core.network.api.MessageApi;
import ru.rocketbank.core.utils.rx.RetryWithDelayAndLimitIf;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.manager.messsage.MessageNotification;
import ru.rocketbank.r2d2.root.chat.sync.event.MessageEvent;
import ru.rocketbank.r2d2.root.chat.sync.event.PendingMessagesEvent;
import ru.rocketbank.r2d2.root.chat.sync.event.ReadEvent;
import ru.rocketbank.r2d2.root.chat.sync.event.TypingEvent;
import ru.rocketbank.r2d2.root.chat.sync.notification.NotificationRead;
import ru.rocketbank.r2d2.root.chat.sync.notification.TypingNotification;
import ru.rocketbank.r2d2.root.chat.sync.queue.MessageOutQueue;
import ru.rocketbank.r2d2.root.chat.sync.queue.MessageOutQueueImpl;
import rx.Observable;
import rx.Subscriber;
import rx.schedulers.Schedulers;
import rx.subjects.PublishSubject;

/* compiled from: MessageSync.kt */
public final class MessageSync implements MessageNotificationListener {
    public static final Companion Companion = new Companion();
    private static final String TAG = "MessageSync";
    private final AtomicInteger managerState = new AtomicInteger(MessageNotifier.Companion.getNONE());
    private final MessageApi messageApi;
    private final MessageOutQueue messageQueue;
    private final ChatState messageState = new ChatState();
    private final AtomicBoolean nextInProgress = new AtomicBoolean(false);
    private volatile int nextPage;
    private final MessageNotifier notifier = new MessageNotifier();
    private final PublishSubject<MessageEvent> publishSubject;
    private final AtomicInteger totalPages = new AtomicInteger(1);

    /* compiled from: MessageSync.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getTAG() {
            return MessageSync.TAG;
        }
    }

    public MessageSync() {
        PublishSubject create = PublishSubject.create();
        Intrinsics.checkExpressionValueIsNotNull(create, "PublishSubject.create()");
        this.publishSubject = create;
        this.messageQueue = new MessageOutQueueImpl(this.publishSubject);
        this.messageApi = RocketApplication.Companion.getInjector().getMessageApi();
    }

    public final ChatState getMessageState() {
        return this.messageState;
    }

    public final MessageOutQueue getMessageQueue() {
        return this.messageQueue;
    }

    public final MessageApi getMessageApi() {
        return this.messageApi;
    }

    public final PublishSubject<MessageEvent> getPublishSubject() {
        return this.publishSubject;
    }

    public final List<MessageIn> unpackMessages(List<MessageIn> list, Function1<? super MessageIn, ? extends List<MessageIn>> function1) {
        Intrinsics.checkParameterIsNotNull(list, "$receiver");
        Intrinsics.checkParameterIsNotNull(function1, "λ");
        Collection arrayList = new ArrayList();
        for (Object invoke : list) {
            CollectionsKt.addAll(arrayList, (Iterable) function1.invoke(invoke));
        }
        return (List) arrayList;
    }

    public final Function1<MessageIn, List<MessageIn>> splitMessages(int i) {
        return new MessageSync$splitMessages$1(this, i);
    }

    public final void sendMessage(MessageIn messageIn) {
        Intrinsics.checkParameterIsNotNull(messageIn, "messageIn");
        this.publishSubject.onNext(new PendingMessagesEvent(CollectionsKt.listOf(messageIn), null, 2, null));
        this.messageQueue.sendMessage(messageIn);
    }

    public final void onCreate(Bundle bundle) {
        this.managerState.set(MessageNotifier.Companion.getCREATED());
    }

    public final void onStart() {
        this.managerState.set(MessageNotifier.Companion.getCONNECT());
        this.notifier.onStart();
        this.notifier.setNotificationListener(this);
    }

    public final void onStop() {
        this.managerState.set(MessageNotifier.Companion.getSTOPPED());
        this.notifier.onStop();
    }

    public final void onMessage(MessageNotification messageNotification) {
        Intrinsics.checkParameterIsNotNull(messageNotification, "messageNotifier");
        int type = messageNotification.getType();
        if (type == MessageNotification.Companion.getTYPE_READ()) {
            NotificationRead notificationRead = (NotificationRead) new Gson().fromJson(messageNotification.getData(), NotificationRead.class);
            this.publishSubject.onNext(new ReadEvent(notificationRead.getMessage().getId(), notificationRead.getMessage().getTimestamp(), null, 4, null));
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder("Read event: ");
            stringBuilder.append(messageNotification.getData());
            Log.v(str, stringBuilder.toString());
        } else if (type == MessageNotification.Companion.getTYPE_MESSAGE()) {
            loadHead();
        } else {
            if (type == MessageNotification.Companion.getTYPE_TYPING()) {
                TypingNotification typingNotification = (TypingNotification) new Gson().fromJson(messageNotification.getData(), TypingNotification.class);
                PublishSubject publishSubject = this.publishSubject;
                Intrinsics.checkExpressionValueIsNotNull(typingNotification, "notification");
                publishSubject.onNext(new TypingEvent(typingNotification, null, 2, null));
            }
        }
    }

    private final Observable<Pair<Pagination, List<MessageIn>>> loadPage(int i) {
        Log.v(TAG, "Load page: ".concat(String.valueOf(i)));
        i = this.messageApi.getPage(i).subscribeOn(Schedulers.io()).map(new MessageSync$loadPage$1(this));
        Intrinsics.checkExpressionValueIsNotNull(i, "messageApi.getPage(page)…ssages)\n                }");
        return i;
    }

    private final List<MessageIn> splitMessage(int i, MessageIn messageIn) {
        Object obj;
        List attachments = messageIn.getAttachments();
        if (attachments != null) {
            Iterable<Attachment> iterable = attachments;
            Collection arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(iterable));
            for (Attachment create : iterable) {
                MessageIn create2 = MessageIn.Companion.create(messageIn, create);
                create2.setBody(null);
                create2.setGroupTime(i);
                arrayList.add(create2);
            }
            attachments = CollectionsKt.toMutableList((List) arrayList);
        } else {
            attachments = new ArrayList();
        }
        CharSequence body = messageIn.getBody();
        if (body != null) {
            if (body.length() != 0) {
                obj = null;
                if (obj == null) {
                    messageIn.setGroupTime(i);
                    attachments.add(MessageIn.Companion.create(messageIn, null));
                }
                return CollectionsKt.toList(attachments);
            }
        }
        obj = 1;
        if (obj == null) {
            messageIn.setGroupTime(i);
            attachments.add(MessageIn.Companion.create(messageIn, null));
        }
        return CollectionsKt.toList(attachments);
    }

    public final void loadNext() {
        if (!this.nextInProgress.get() && this.totalPages.get() != this.nextPage + 1) {
            executeLoadNextPage();
        }
    }

    public final void loadHead() {
        if (!this.nextInProgress.get()) {
            this.nextInProgress.set(true);
            page(0);
        }
    }

    private final void executeLoadNextPage() {
        this.nextInProgress.set(true);
        page(this.nextPage);
    }

    private final void page(int i) {
        loadPage(i).retryWhen(new RetryWithDelayAndLimitIf(5000, 2, TimeUnit.SECONDS, new MessageSync$page$1(this))).subscribe((Subscriber) new MessageSync$page$2(this));
    }
}
