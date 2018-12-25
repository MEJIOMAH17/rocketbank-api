.class final Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$4;
.super Ljava/lang/Object;
.source "ChatFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/ChatFragment;->initClicks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatFragment.kt\nru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$4\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,714:1\n60#2:715\n31#2,23:716\n*E\n*S KotlinDebug\n*F\n+ 1 ChatFragment.kt\nru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$4\n*L\n291#1:715\n291#1,23:716\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/ChatFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$4;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$4;->call(Ljava/lang/Void;)V

    return-void
.end method

.method public final call(Ljava/lang/Void;)V
    .locals 7

    .line 291
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$4;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$getMessageView$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Lru/rocketbank/core/widgets/RocketEditText;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 715
    check-cast p1, Ljava/lang/CharSequence;

    .line 717
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    move v4, v0

    :goto_0
    if-gt v0, v3, :cond_4

    if-nez v4, :cond_0

    move v5, v0

    goto :goto_1

    :cond_0
    move v5, v3

    .line 722
    :goto_1
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-gt v5, v6, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_4
    add-int/2addr v3, v1

    .line 738
    invoke-interface {p1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 715
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 293
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    const/4 v3, 0x0

    if-nez v0, :cond_7

    .line 294
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$4;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getMessageManager()Lru/rocketbank/r2d2/root/chat/MessageManager;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/chat/MessageManager;->send(Ljava/lang/String;)V

    .line 295
    :cond_6
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$4;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {p1, v2, v1, v3}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->onSendPostActions$default(Lru/rocketbank/r2d2/root/chat/ChatFragment;ZILjava/lang/Object;)V

    .line 298
    :cond_7
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$4;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$getAttachedOperation$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Lru/rocketbank/core/model/dto/operations/Operation;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 299
    instance-of v0, p1, Lru/rocketbank/core/model/dto/operations/Operation;

    if-eqz v0, :cond_8

    .line 300
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$4;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->getMessageManager()Lru/rocketbank/r2d2/root/chat/MessageManager;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/chat/MessageManager;->send(Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 302
    :cond_8
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$4;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {p1, v2, v1, v3}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->onSendPostActions$default(Lru/rocketbank/r2d2/root/chat/ChatFragment;ZILjava/lang/Object;)V

    .line 303
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$4;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {p1, v3}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$setAttachedOperation$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;Lru/rocketbank/core/model/dto/operations/Operation;)V

    .line 304
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$4;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$updateOperation(Lru/rocketbank/r2d2/root/chat/ChatFragment;)V

    .line 307
    :cond_9
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$4;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$getDelimiterMenu$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
