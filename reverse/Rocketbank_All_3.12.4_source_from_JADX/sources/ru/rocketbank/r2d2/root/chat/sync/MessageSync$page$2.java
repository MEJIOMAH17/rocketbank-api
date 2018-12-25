package ru.rocketbank.r2d2.root.chat.sync;

import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.Pagination;
import ru.rocketbank.core.model.message.MessageIn;
import rx.Subscriber;

/* compiled from: MessageSync.kt */
public final class MessageSync$page$2 extends Subscriber<Pair<? extends Pagination, ? extends List<? extends MessageIn>>> {
    final /* synthetic */ MessageSync this$0;

    public final void onCompleted() {
    }

    MessageSync$page$2(MessageSync messageSync) {
        this.this$0 = messageSync;
    }

    public final void onError(Throwable th) {
        Intrinsics.checkParameterIsNotNull(th, "e");
        this.this$0.nextInProgress.set(false);
    }

    public final void onNext(Pair<Pagination, ? extends List<MessageIn>> pair) {
        Intrinsics.checkParameterIsNotNull(pair, "chatMessages");
        Pagination pagination = (Pagination) pair.getFirst();
        List list = (List) pair.getSecond();
        if (list != null) {
            this.this$0.getMessageState().update(pagination.getCurrentPage(), list, this.this$0.getPublishSubject());
            pair = this.this$0;
            pair.nextPage = pair.nextPage + 1;
        }
        this.this$0.nextInProgress.set(false);
    }
}
