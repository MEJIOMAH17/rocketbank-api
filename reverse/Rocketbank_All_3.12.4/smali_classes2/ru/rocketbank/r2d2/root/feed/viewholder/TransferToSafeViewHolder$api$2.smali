.class final Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder$api$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TransferToSafeViewHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;-><init>(Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lru/rocketbank/core/network/api/OperationApi;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder$api$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder$api$2;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder$api$2;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder$api$2;->INSTANCE:Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder$api$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder$api$2;->invoke()Lru/rocketbank/core/network/api/OperationApi;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lru/rocketbank/core/network/api/OperationApi;
    .locals 1

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getOperationApi()Lru/rocketbank/core/network/api/OperationApi;

    move-result-object v0

    return-object v0
.end method
