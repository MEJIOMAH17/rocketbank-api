.class public final Lru/rocketbank/core/model/shop/CartStorage$Companion;
.super Ljava/lang/Object;
.source "CartStorage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/shop/CartStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lru/rocketbank/core/model/shop/CartStorage$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 69
    invoke-static {}, Lru/rocketbank/core/model/shop/CartStorage;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
