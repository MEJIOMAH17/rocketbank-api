.class public final Lru/rocketbank/r2d2/root/chat/sync/MessageSync$Companion;
.super Ljava/lang/Object;
.source "MessageSync.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/chat/sync/MessageSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 191
    invoke-static {}, Lru/rocketbank/r2d2/root/chat/sync/MessageSync;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
