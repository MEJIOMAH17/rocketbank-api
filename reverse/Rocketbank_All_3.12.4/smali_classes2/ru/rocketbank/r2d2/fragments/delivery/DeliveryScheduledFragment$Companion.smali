.class public final Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment$Companion;
.super Ljava/lang/Object;
.source "DeliveryScheduledFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic KEY_TOOLBAR_HEIGHT$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getKEY_TOOLBAR_HEIGHT()Ljava/lang/String;
    .locals 1

    .line 71
    invoke-static {}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;->access$getKEY_TOOLBAR_HEIGHT$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final newInstance(Ljava/lang/String;I)Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;
    .locals 3

    const-string v0, "deliveryToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment;-><init>()V

    .line 76
    sget-object v1, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->Companion:Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment$Companion;

    move-object v2, v0

    check-cast v2, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;

    invoke-virtual {v1, v2, p1}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment$Companion;->setArguments(Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryScheduledFragment$Companion;->getKEY_TOOLBAR_HEIGHT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
