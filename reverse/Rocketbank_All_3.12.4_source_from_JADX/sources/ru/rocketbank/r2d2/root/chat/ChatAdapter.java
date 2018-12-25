package ru.rocketbank.r2d2.root.chat;

import android.content.Context;
import android.os.Handler;
import android.support.v4.app.FragmentManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.share.internal.ShareConstants;
import jp.wasabeef.glide.transformations.CropCircleTransformation;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.message.DocumentAttachment;
import ru.rocketbank.core.model.message.ImageAttachment;
import ru.rocketbank.core.model.message.MessageIn;
import ru.rocketbank.core.model.message.OperationAttachment;
import ru.rocketbank.core.model.message.RatingAttachment;
import ru.rocketbank.core.model.message.StickerAttachment;
import ru.rocketbank.core.network.model.Rating;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.widgets.RocketSnackbar;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.chat.incoming.IncomingDocument;
import ru.rocketbank.r2d2.root.chat.incoming.IncomingImage;
import ru.rocketbank.r2d2.root.chat.incoming.IncomingOperation;
import ru.rocketbank.r2d2.root.chat.incoming.IncomingRating;
import ru.rocketbank.r2d2.root.chat.incoming.IncomingSticker;
import ru.rocketbank.r2d2.root.chat.incoming.IncomingText;
import ru.rocketbank.r2d2.root.chat.incoming.IncomingViewHolder;
import ru.rocketbank.r2d2.root.chat.outgoing.OutgoingImage;
import ru.rocketbank.r2d2.root.chat.outgoing.OutgoingOperation;
import ru.rocketbank.r2d2.root.chat.outgoing.OutgoingSticker;
import ru.rocketbank.r2d2.root.chat.outgoing.OutgoingText;
import ru.rocketbank.r2d2.root.chat.outgoing.OutgoingViewHolder;
import ru.rocketbank.r2d2.root.chat.sync.event.HeadMessagesEvent;
import ru.rocketbank.r2d2.root.chat.sync.event.MessageEvent;
import ru.rocketbank.r2d2.root.chat.sync.event.PendingMessagesEvent;
import ru.rocketbank.r2d2.root.chat.sync.event.ProgressEvent;
import ru.rocketbank.r2d2.root.chat.sync.event.PublishedMessageErrorEvent;
import ru.rocketbank.r2d2.root.chat.sync.event.PublishedMessageEvent;
import ru.rocketbank.r2d2.root.chat.sync.event.ReadEvent;
import ru.rocketbank.r2d2.root.chat.sync.event.TailMessagesEvent;
import ru.rocketbank.r2d2.root.chat.sync.event.TypingEvent;
import ru.rocketbank.r2d2.root.chat.sync.notification.NotificationUserInfo;

/* compiled from: ChatAdapter.kt */
public final class ChatAdapter extends Adapter<MessageViewHolder> {
    public static final Companion Companion = new Companion();
    private static final String TAG = "ChatAdapter";
    private final ChatFragment chatFragment;
    private final RecyclerView chatView;
    private final Handler handler = new Handler();
    private long lastDelivered;
    private long lastRead;
    private long lastReadId;
    private final MessageManager messageManager;
    private final MessageList messages = new MessageList();
    private NotificationUserInfo typingAdmin;
    private final Runnable typingEndRunnable = ((Runnable) new ChatAdapter$typingEndRunnable$1(this));
    private final View view;

    /* compiled from: ChatAdapter.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getTAG() {
            return ChatAdapter.TAG;
        }
    }

    public final ChatFragment getChatFragment() {
        return this.chatFragment;
    }

    public final View getView() {
        return this.view;
    }

    public ChatAdapter(ChatFragment chatFragment, View view, RecyclerView recyclerView, MessageManager messageManager) {
        Intrinsics.checkParameterIsNotNull(chatFragment, "chatFragment");
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(recyclerView, "chatView");
        this.chatFragment = chatFragment;
        this.view = view;
        this.chatView = recyclerView;
        this.messageManager = messageManager;
    }

    public final int getItemViewType(int i) {
        if (i == 0 && this.messages.getTypingActive()) {
            return ChatFragment.TYPE_MESSAGE_TYPING;
        }
        i = this.messages.get(i);
        int subtype = getSubtype(i);
        if (i.isAdmin() != 0) {
            return ChatFragment.Companion.getType(subtype, 0);
        }
        return ChatFragment.Companion.getType(subtype, 1);
    }

    private final int getSubtype(MessageIn messageIn) {
        messageIn = messageIn.getAttachment();
        if (messageIn instanceof ImageAttachment) {
            return 1;
        }
        if (messageIn instanceof DocumentAttachment) {
            return 2;
        }
        if (messageIn instanceof OperationAttachment) {
            return 3;
        }
        if (messageIn instanceof StickerAttachment) {
            return 5;
        }
        return (messageIn instanceof RatingAttachment) != null ? 4 : null;
    }

    public final void notifyItemInsertedItem(int i) {
        notifyItemInserted(i);
        if (i == 0) {
            LayoutManager layoutManager = this.chatView.getLayoutManager();
            if (layoutManager == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.LinearLayoutManager");
            } else if (((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition() <= 1) {
                this.chatView.smoothScrollToPosition(0);
            } else if (this.messages.get(i).isAdmin() != 0) {
                RocketSnackbar.make(this.view, C0859R.string.new_message, -1).setAction(C0859R.string.read_cap, new ChatAdapter$notifyItemInsertedItem$1(this)).show();
            }
        }
    }

    public final MessageViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        MoneyFormatter moneyFormatter;
        switch (i) {
            case 0:
                i = from.inflate(C0859R.layout.layout_message_text, viewGroup, false);
                viewGroup = viewGroup.getContext();
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "parent.context");
                Intrinsics.checkExpressionValueIsNotNull(i, "view");
                return new IncomingText(viewGroup, i);
            case 1:
                i = from.inflate(C0859R.layout.layout_message_out_text, viewGroup, false);
                viewGroup = viewGroup.getContext();
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "parent.context");
                Intrinsics.checkExpressionValueIsNotNull(i, "view");
                return new OutgoingText(viewGroup, i, this.chatFragment);
            case 10:
                i = from.inflate(C0859R.layout.layout_message_image, viewGroup, false);
                viewGroup = viewGroup.getContext();
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "parent.context");
                Intrinsics.checkExpressionValueIsNotNull(i, "view");
                return new IncomingImage(viewGroup, i);
            case 11:
                i = from.inflate(C0859R.layout.layout_message_out_image, viewGroup, false);
                viewGroup = viewGroup.getContext();
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "parent.context");
                Intrinsics.checkExpressionValueIsNotNull(i, "view");
                return new OutgoingImage(viewGroup, i, this.chatFragment);
            case 20:
                i = from.inflate(C0859R.layout.layout_message_document, viewGroup, false);
                viewGroup = viewGroup.getContext();
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "parent.context");
                Intrinsics.checkExpressionValueIsNotNull(i, "view");
                return new IncomingDocument(viewGroup, i);
            case 30:
                i = from.inflate(C0859R.layout.layout_message_operation, viewGroup, false);
                viewGroup = viewGroup.getContext();
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "parent.context");
                moneyFormatter = this.chatFragment.getMoneyFormatter();
                Intrinsics.checkExpressionValueIsNotNull(i, "view");
                return new IncomingOperation(viewGroup, moneyFormatter, i);
            case 31:
                i = from.inflate(C0859R.layout.layout_message_out_operation, viewGroup, false);
                viewGroup = viewGroup.getContext();
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "parent.context");
                moneyFormatter = this.chatFragment.getMoneyFormatter();
                Intrinsics.checkExpressionValueIsNotNull(i, "view");
                return new OutgoingOperation(viewGroup, moneyFormatter, i, this.chatFragment);
            case 40:
                i = from.inflate(C0859R.layout.layout_rating, viewGroup, false);
                viewGroup = viewGroup.getContext();
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "parent.context");
                Intrinsics.checkExpressionValueIsNotNull(i, "view");
                FragmentManager supportFragmentManager = this.chatFragment.getSupportFragmentManager();
                if (supportFragmentManager == null) {
                    Intrinsics.throwNpe();
                }
                return new IncomingRating(viewGroup, i, supportFragmentManager, this.messageManager);
            case 50:
                i = from.inflate(C0859R.layout.layout_message_sticker, viewGroup, false);
                viewGroup = viewGroup.getContext();
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "parent.context");
                Intrinsics.checkExpressionValueIsNotNull(i, "view");
                return new IncomingSticker(viewGroup, i);
            case 51:
                i = from.inflate(C0859R.layout.layout_message_out_sticker, viewGroup, false);
                viewGroup = viewGroup.getContext();
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "parent.context");
                Intrinsics.checkExpressionValueIsNotNull(i, "view");
                return new OutgoingSticker(viewGroup, i, this.chatFragment);
            case ChatFragment.TYPE_MESSAGE_TYPING /*65535*/:
                viewGroup = from.inflate(C0859R.layout.layout_messsage_typing, viewGroup, false);
                CropCircleTransformation cropCircleTransformation = this.chatFragment.getCropCircleTransformation();
                Intrinsics.checkExpressionValueIsNotNull(viewGroup, "view");
                return (MessageViewHolder) new TypingMessage(cropCircleTransformation, viewGroup);
            default:
                Context context = viewGroup.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context, "parent.context");
                return (MessageViewHolder) new IncomingText(context, viewGroup);
        }
    }

    public final void onBindViewHolder(MessageViewHolder messageViewHolder, int i) {
        Intrinsics.checkParameterIsNotNull(messageViewHolder, "holder");
        MessageIn messageIn = this.messages.get(i);
        boolean isStateChanged = isStateChanged(i);
        i = getItemViewType(i);
        int i2 = i % 10;
        if (i2 == 0) {
            IncomingViewHolder incomingViewHolder = (IncomingViewHolder) messageViewHolder;
            incomingViewHolder.setIcon(messageIn.getAvatar());
            incomingViewHolder.setWho(messageIn.getAuthor());
            incomingViewHolder.setPermalimk(messageIn.getAdminPermalink());
        } else if (i2 == 1) {
            OutgoingViewHolder outgoingViewHolder = (OutgoingViewHolder) messageViewHolder;
            outgoingViewHolder.setStatusInvisible();
            if (messageIn.getCreatedAt() > 0 && !messageIn.isUploading()) {
                if (this.lastReadId == messageIn.getId() && messageIn.getDeliveredAt() > 0) {
                    outgoingViewHolder.setSent(messageIn.getDeliveredAt());
                }
                long readAt = ((long) messageIn.getReadAt()) * 1000;
                long j = this.lastReadId;
                if (readAt > 0 && j == messageIn.getId()) {
                    outgoingViewHolder.setRead(messageIn.getReadAt());
                }
            }
        }
        String str = null;
        switch (i) {
            case 0:
                IncomingText incomingText = (IncomingText) messageViewHolder;
                i = messageIn.getBody();
                if (i == 0) {
                    i = "";
                }
                incomingText.bind(i);
                incomingText.setWhiteBubble(isStateChanged);
                return;
            case 1:
                OutgoingText outgoingText = (OutgoingText) messageViewHolder;
                i = messageIn.getBody();
                if (i == 0) {
                    i = "";
                }
                outgoingText.bind(i, messageIn);
                outgoingText.showOrangeBubble(isStateChanged);
                return;
            case 10:
                IncomingImage incomingImage = (IncomingImage) messageViewHolder;
                ImageAttachment imageAttachment = (ImageAttachment) messageIn.getAttachment();
                if (imageAttachment != null) {
                    str = imageAttachment.getImageThumb();
                }
                if (str != null) {
                    incomingImage.bind(imageAttachment);
                    return;
                }
                break;
            case 11:
            case 21:
                ((OutgoingImage) messageViewHolder).bind(messageIn);
                return;
            case 20:
                IncomingDocument incomingDocument = (IncomingDocument) messageViewHolder;
                DocumentAttachment documentAttachment = (DocumentAttachment) messageIn.getAttachment();
                if (documentAttachment != null) {
                    str = documentAttachment.getDocumentThumb();
                }
                incomingDocument.bind(str, messageIn);
                incomingDocument.setDocumengGray(isStateChanged);
                return;
            case 30:
                IncomingOperation incomingOperation = (IncomingOperation) messageViewHolder;
                incomingOperation.setOperation((OperationAttachment) messageIn.getAttachment());
                incomingOperation.setWhiteBubble(isStateChanged);
                return;
            case 31:
                OutgoingOperation outgoingOperation = (OutgoingOperation) messageViewHolder;
                outgoingOperation.setOperation(messageIn);
                outgoingOperation.showGrayBubble(isStateChanged);
                return;
            case 40:
                Rating rating;
                RatingAttachment ratingAttachment = (RatingAttachment) messageIn.getAttachment();
                IncomingRating incomingRating = (IncomingRating) messageViewHolder;
                if (ratingAttachment != null) {
                    rating = ratingAttachment.getRating();
                }
                incomingRating.bind(rating, this.chatFragment.getOnRatingBarChangeListener());
                return;
            case 41:
                return;
            case 50:
                ((IncomingSticker) messageViewHolder).bind((StickerAttachment) messageIn.getAttachment());
                return;
            case 51:
                ((OutgoingSticker) messageViewHolder).bind(messageIn);
                return;
            case ChatFragment.TYPE_MESSAGE_TYPING /*65535*/:
                TypingMessage typingMessage = (TypingMessage) messageViewHolder;
                i = this.typingAdmin;
                if (i != 0) {
                    typingMessage.binding(i);
                    return;
                }
                break;
            default:
                break;
        }
    }

    private final boolean isStateChanged(int i) {
        int i2 = i + 1;
        if (i2 >= this.messages.size()) {
            return true;
        }
        i = this.messages.get(i);
        MessageIn messageIn = this.messages.get(i2);
        if (i.getGroupTime() != messageIn.getGroupTime()) {
            return true;
        }
        if (messageIn == i) {
            return false;
        }
        if (i == 0 || messageIn == null) {
            return true;
        }
        if (i.getAuthor() == messageIn.getAuthor()) {
            return false;
        }
        if (i.getAuthor() == null || Intrinsics.areEqual(i.getAuthor(), messageIn.getAuthor()) == 0) {
            return true;
        }
        return false;
    }

    public final int getItemCount() {
        return this.messages.size();
    }

    public final void activateTyping() {
        this.messages.setTypingActive(true);
        notifyItemInsertedItem(0);
    }

    public final void deactivateTyping() {
        if (this.messages.getTypingActive()) {
            this.messages.setTypingActive(false);
            notifyItemRemoved(0);
            this.typingAdmin = null;
        }
    }

    public final void showTyping(TypingEvent typingEvent) {
        Intrinsics.checkParameterIsNotNull(typingEvent, "typingEvent");
        typingEvent = typingEvent.getTypingNotification();
        if (typingEvent.getTyping()) {
            this.handler.removeCallbacks(this.typingEndRunnable);
            if (!this.messages.getTypingActive()) {
                typingEvent = typingEvent.getUser();
                typingEvent = typingEvent != null ? typingEvent.getInfo() : null;
                if (typingEvent != null) {
                    activateTyping();
                }
                this.typingAdmin = typingEvent;
            }
        } else if (this.messages.getTypingActive() != null) {
            this.handler.postDelayed(this.typingEndRunnable, 500);
        }
    }

    public final void updateData(MessageEvent messageEvent) {
        Intrinsics.checkParameterIsNotNull(messageEvent, ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        Log.v(TAG, "----------------------");
        this.messages.debugOutState();
        long j = this.lastRead;
        Long queryLastRead = queryLastRead(messageEvent);
        long j2 = 0;
        this.lastRead = Math.max(j, queryLastRead != null ? queryLastRead.longValue() : 0);
        j = this.lastDelivered;
        queryLastRead = queryLastDelivered(messageEvent);
        this.lastDelivered = Math.max(j, queryLastRead != null ? queryLastRead.longValue() : 0);
        j = this.lastReadId;
        queryLastRead = queryLastMaxId(messageEvent, this.lastReadId);
        if (queryLastRead != null) {
            j2 = queryLastRead.longValue();
        }
        this.lastReadId = Math.max(j, j2);
        Integer updateSize = updateSize(messageEvent);
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder("Update size ");
        stringBuilder.append(updateSize);
        stringBuilder.append(' ');
        stringBuilder.append(this.lastRead);
        stringBuilder.append(' ');
        stringBuilder.append(this.lastDelivered);
        stringBuilder.append(' ');
        stringBuilder.append(this.lastReadId);
        Log.v(str, stringBuilder.toString());
        applyUpdate(messageEvent);
        this.messages.debugOutState();
        Log.v(TAG, "----------------------");
    }

    public final Boolean applyUpdate(MessageEvent messageEvent) {
        return (Boolean) cataEvent(messageEvent, new ChatAdapter$applyUpdate$1(this), new ChatAdapter$applyUpdate$2(this), new ChatAdapter$applyUpdate$3(this), new ChatAdapter$applyUpdate$5(this), new ChatAdapter$applyUpdate$4(this), new ChatAdapter$applyUpdate$6(this), new ChatAdapter$applyUpdate$7(this), ChatAdapter$applyUpdate$8.INSTANCE);
    }

    public final Long queryLastMaxId(MessageEvent messageEvent, long j) {
        return (Long) cataEvent(messageEvent, new ChatAdapter$queryLastMaxId$1(j), ChatAdapter$queryLastMaxId$2.INSTANCE, new ChatAdapter$queryLastMaxId$3(j), new ChatAdapter$queryLastMaxId$6(j), new ChatAdapter$queryLastMaxId$5(j), (Function2) ChatAdapter$queryLastMaxId$8.INSTANCE, (Function2) ChatAdapter$queryLastMaxId$7.INSTANCE, ChatAdapter$queryLastMaxId$4.INSTANCE);
    }

    public final Long queryLastRead(MessageEvent messageEvent) {
        return (Long) cataEvent(messageEvent, ChatAdapter$queryLastRead$1.INSTANCE, ChatAdapter$queryLastRead$2.INSTANCE, ChatAdapter$queryLastRead$3.INSTANCE, ChatAdapter$queryLastRead$6.INSTANCE, ChatAdapter$queryLastRead$5.INSTANCE, ChatAdapter$queryLastRead$8.INSTANCE, ChatAdapter$queryLastRead$7.INSTANCE, ChatAdapter$queryLastRead$4.INSTANCE);
    }

    public final Long queryLastDelivered(MessageEvent messageEvent) {
        return (Long) cataEvent(messageEvent, ChatAdapter$queryLastDelivered$1.INSTANCE, ChatAdapter$queryLastDelivered$2.INSTANCE, ChatAdapter$queryLastDelivered$3.INSTANCE, ChatAdapter$queryLastDelivered$6.INSTANCE, ChatAdapter$queryLastDelivered$5.INSTANCE, ChatAdapter$queryLastDelivered$8.INSTANCE, ChatAdapter$queryLastDelivered$7.INSTANCE, ChatAdapter$queryLastDelivered$4.INSTANCE);
    }

    public final Integer updateSize(MessageEvent messageEvent) {
        return (Integer) cataEvent(messageEvent, ChatAdapter$updateSize$1.INSTANCE, ChatAdapter$updateSize$2.INSTANCE, ChatAdapter$updateSize$3.INSTANCE, ChatAdapter$updateSize$6.INSTANCE, ChatAdapter$updateSize$5.INSTANCE, ChatAdapter$updateSize$8.INSTANCE, ChatAdapter$updateSize$7.INSTANCE, ChatAdapter$updateSize$4.INSTANCE);
    }

    public final <T> T cataEvent(MessageEvent messageEvent, Function2<? super T, ? super HeadMessagesEvent, ? extends T> function2, Function2<? super T, ? super PendingMessagesEvent, ? extends T> function22, Function2<? super T, ? super TailMessagesEvent, ? extends T> function23, Function2<? super T, ? super PublishedMessageEvent, ? extends T> function24, Function2<? super T, ? super PublishedMessageErrorEvent, ? extends T> function25, Function2<? super T, ? super TypingEvent, ? extends T> function26, Function2<? super T, ? super ReadEvent, ? extends T> function27, Function2<? super T, ? super ProgressEvent, ? extends T> function28) {
        MessageEvent messageEvent2 = messageEvent;
        Function2<? super T, ? super HeadMessagesEvent, ? extends T> function29 = function2;
        Function2<? super T, ? super PendingMessagesEvent, ? extends T> function210 = function22;
        Function2<? super T, ? super TailMessagesEvent, ? extends T> function211 = function23;
        Function2<? super T, ? super PublishedMessageEvent, ? extends T> function212 = function24;
        Function2<? super T, ? super PublishedMessageErrorEvent, ? extends T> function213 = function25;
        Function2<? super T, ? super TypingEvent, ? extends T> function214 = function26;
        Function2<? super T, ? super ReadEvent, ? extends T> function215 = function27;
        Function2<? super T, ? super ProgressEvent, ? extends T> function216 = function28;
        Intrinsics.checkParameterIsNotNull(function29, "headUpdate");
        Intrinsics.checkParameterIsNotNull(function210, "pendingUpdate");
        Intrinsics.checkParameterIsNotNull(function211, "tailUpdate");
        Intrinsics.checkParameterIsNotNull(function212, "publishEvent");
        Intrinsics.checkParameterIsNotNull(function213, "publishErrorEvent");
        Intrinsics.checkParameterIsNotNull(function214, "typingMessage");
        Intrinsics.checkParameterIsNotNull(function215, "readEvent");
        Intrinsics.checkParameterIsNotNull(function216, "progressUpdate");
        Function2<? super T, ? super PublishedMessageEvent, ? extends T> function217 = function212;
        ChatAdapter$cataEvent$1 chatAdapter$cataEvent$1 = r1;
        ChatAdapter$cataEvent$1 chatAdapter$cataEvent$12 = new ChatAdapter$cataEvent$1(this, function29, function210, function211, function217, function213, function214, function215, function28);
        MessageEvent parent = messageEvent2 != null ? messageEvent.getParent() : null;
        if (messageEvent2 instanceof HeadMessagesEvent) {
            return function29.invoke(chatAdapter$cataEvent$1.invoke(parent), messageEvent2);
        }
        if (messageEvent2 instanceof PendingMessagesEvent) {
            return function210.invoke(chatAdapter$cataEvent$1.invoke(parent), messageEvent2);
        }
        if (messageEvent2 instanceof TailMessagesEvent) {
            return function211.invoke(chatAdapter$cataEvent$1.invoke(parent), messageEvent2);
        }
        if (messageEvent2 instanceof ProgressEvent) {
            return function28.invoke(chatAdapter$cataEvent$1.invoke(parent), messageEvent2);
        } else if (messageEvent2 instanceof PublishedMessageEvent) {
            return function24.invoke(chatAdapter$cataEvent$1.invoke(parent), messageEvent2);
        } else {
            ChatAdapter$cataEvent$1 chatAdapter$cataEvent$13 = chatAdapter$cataEvent$1;
            if (messageEvent2 instanceof PublishedMessageErrorEvent) {
                return function213.invoke(chatAdapter$cataEvent$13.invoke(parent), messageEvent2);
            }
            if (messageEvent2 instanceof ReadEvent) {
                return function27.invoke(chatAdapter$cataEvent$13.invoke(parent), messageEvent2);
            } else if (!(messageEvent2 instanceof TypingEvent)) {
                return null;
            } else {
                return function26.invoke(chatAdapter$cataEvent$13.invoke(parent), messageEvent2);
            }
        }
    }
}
