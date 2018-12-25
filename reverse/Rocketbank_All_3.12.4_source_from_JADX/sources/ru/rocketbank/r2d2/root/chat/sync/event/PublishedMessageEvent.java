package ru.rocketbank.r2d2.root.chat.sync.event;

import com.facebook.share.internal.ShareConstants;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ru.rocketbank.core.model.message.MessageIn;

/* compiled from: PublishedMessageEvent.kt */
public final class PublishedMessageEvent extends MessageEvent {
    private final MessageIn message;

    public final MessageIn getMessage() {
        return this.message;
    }

    public /* synthetic */ PublishedMessageEvent(MessageIn messageIn, MessageEvent messageEvent, int i, Ref ref) {
        if ((i & 2) != 0) {
            messageEvent = null;
        }
        this(messageIn, messageEvent);
    }

    public PublishedMessageEvent(MessageIn messageIn, MessageEvent messageEvent) {
        Intrinsics.checkParameterIsNotNull(messageIn, ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        super(messageEvent);
        this.message = messageIn;
    }
}
