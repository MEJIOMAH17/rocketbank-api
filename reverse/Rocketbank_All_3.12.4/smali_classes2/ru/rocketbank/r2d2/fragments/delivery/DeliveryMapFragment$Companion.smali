.class public final Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$Companion;
.super Ljava/lang/Object;
.source "DeliveryMapFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 273
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$Companion;-><init>()V

    return-void
.end method

.method private static synthetic INPUT_TIMEOUT$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic LOCATION_REQUEST$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;
    .locals 3

    const-string v0, "deliveryToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    new-instance v0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;-><init>()V

    .line 281
    sget-object v1, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->Companion:Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment$Companion;

    move-object v2, v0

    check-cast v2, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;

    invoke-virtual {v1, v2, p1}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment$Companion;->setArguments(Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;Ljava/lang/String;)Landroid/os/Bundle;

    return-object v0
.end method
