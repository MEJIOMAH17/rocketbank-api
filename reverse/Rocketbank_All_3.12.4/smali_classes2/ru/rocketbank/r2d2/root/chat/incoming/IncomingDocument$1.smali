.class final Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument$1;
.super Ljava/lang/Object;
.source "IncomingDocument.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument;-><init>(Landroid/content/Context;Landroid/view/View;)V
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
    value = "SMAP\nIncomingDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IncomingDocument.kt\nru/rocketbank/r2d2/root/chat/incoming/IncomingDocument$1\n*L\n1#1,41:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument$1;->this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument$1;->call(Ljava/lang/Void;)V

    return-void
.end method

.method public final call(Ljava/lang/Void;)V
    .locals 2

    .line 23
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument$1;->this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument;->access$getChatMessage$p(Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument;)Lru/rocketbank/core/model/message/MessageIn;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lru/rocketbank/core/model/message/MessageIn;->getAttachment()Lru/rocketbank/core/model/message/Attachment;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Lru/rocketbank/core/model/message/DocumentAttachment;

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1}, Lru/rocketbank/core/model/message/DocumentAttachment;->getDocument()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/activities/DownloadActivity;->Companion:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument$1;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion;->startDownload(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    return-void
.end method
