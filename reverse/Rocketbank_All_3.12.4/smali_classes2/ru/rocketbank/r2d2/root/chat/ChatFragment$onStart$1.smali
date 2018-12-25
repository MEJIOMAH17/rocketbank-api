.class final Lru/rocketbank/r2d2/root/chat/ChatFragment$onStart$1;
.super Ljava/lang/Object;
.source "ChatFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/ChatFragment;->onStart()V
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
        "Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatFragment.kt\nru/rocketbank/r2d2/root/chat/ChatFragment$onStart$1\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,714:1\n60#2:715\n31#2,23:716\n*E\n*S KotlinDebug\n*F\n+ 1 ChatFragment.kt\nru/rocketbank/r2d2/root/chat/ChatFragment$onStart$1\n*L\n388#1:715\n388#1,23:716\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/ChatFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onStart$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;)V
    .locals 7

    .line 388
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onStart$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

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

    .line 389
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onStart$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$getSendView$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v3, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onStart$1;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-static {v3}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->access$getAttachedOperation$p(Lru/rocketbank/r2d2/root/chat/ChatFragment;)Lru/rocketbank/core/model/dto/operations/Operation;

    move-result-object v3

    if-nez v3, :cond_7

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_5

    move p1, v1

    goto :goto_3

    :cond_5
    move p1, v2

    :goto_3
    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :cond_7
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/ChatFragment$onStart$1;->call(Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;)V

    return-void
.end method
