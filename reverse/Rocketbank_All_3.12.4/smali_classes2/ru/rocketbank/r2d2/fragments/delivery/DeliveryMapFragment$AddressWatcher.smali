.class public final Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$AddressWatcher;
.super Ljava/lang/Object;
.source "DeliveryMapFragment.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AddressWatcher"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeliveryMapFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeliveryMapFragment.kt\nru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$AddressWatcher\n*L\n1#1,287:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$AddressWatcher;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final resetTimer()V
    .locals 4

    .line 86
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$AddressWatcher;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 88
    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 90
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$AddressWatcher;->timer:Ljava/util/Timer;

    .line 91
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$AddressWatcher;->timer:Ljava/util/Timer;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    new-instance v1, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$FindAddressTask;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$AddressWatcher;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;

    invoke-direct {v1, v2}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$FindAddressTask;-><init>(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;)V

    check-cast v1, Ljava/util/TimerTask;

    invoke-static {}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->access$getINPUT_TIMEOUT$cp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const-string v0, "edit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$AddressWatcher;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->access$setAddressTextForRequest$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$AddressWatcher;->resetTimer()V

    .line 73
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$AddressWatcher;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->access$getAddressView$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;)Lru/rocketbank/core/widgets/RocketAddressView;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketAddressView;->isError()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$AddressWatcher;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->access$getAddressView$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;)Lru/rocketbank/core/widgets/RocketAddressView;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketAddressView;->reset()V

    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "text"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "text"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
