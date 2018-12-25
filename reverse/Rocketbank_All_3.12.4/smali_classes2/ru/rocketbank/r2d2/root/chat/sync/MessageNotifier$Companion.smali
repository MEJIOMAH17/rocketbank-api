.class public final Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;
.super Ljava/lang/Object;
.source "MessageNotifier.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCONNECT()I
    .locals 1

    .line 183
    invoke-static {}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->access$getCONNECT$cp()I

    move-result v0

    return v0
.end method

.method public final getCREATED()I
    .locals 1

    .line 181
    invoke-static {}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->access$getCREATED$cp()I

    move-result v0

    return v0
.end method

.method public final getNONE()I
    .locals 1

    .line 180
    invoke-static {}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->access$getNONE$cp()I

    move-result v0

    return v0
.end method

.method public final getSTOPPED()I
    .locals 1

    .line 182
    invoke-static {}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->access$getSTOPPED$cp()I

    move-result v0

    return v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 174
    invoke-static {}, Lru/rocketbank/r2d2/root/chat/sync/MessageNotifier;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
