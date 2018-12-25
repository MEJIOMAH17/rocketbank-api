.class public final Lru/rocketbank/core/model/charge/ChargeModel$Companion;
.super Ljava/lang/Object;
.source "ChargeModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/charge/ChargeModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lru/rocketbank/core/model/charge/ChargeModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDATE_FORMAT()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 26
    invoke-static {}, Lru/rocketbank/core/model/charge/ChargeModel;->access$getDATE_FORMAT$cp()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method
