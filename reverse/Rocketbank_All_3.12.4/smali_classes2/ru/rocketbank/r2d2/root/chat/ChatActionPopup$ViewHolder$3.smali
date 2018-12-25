.class final Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder$3;
.super Ljava/lang/Object;
.source "ChatActionPopup.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;-><init>(Lru/rocketbank/r2d2/root/chat/ChatActionPopup;Landroid/view/View;)V
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder$3;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder$3;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder$3;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder$3;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 74
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder$3;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final call(Ljava/lang/Throwable;)V
    .locals 0

    .line 91
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-void
.end method
