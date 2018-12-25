.class public final Lru/rocketbank/core/model/ResetShortCodeRespone$ResetShortCode;
.super Ljava/lang/Object;
.source "ResetShortCodeRespone.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/ResetShortCodeRespone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResetShortCode"
.end annotation


# instance fields
.field private final checkCard:Lru/rocketbank/core/model/dto/CheckCardData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "check_card"
    .end annotation
.end field

.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCheckCard()Lru/rocketbank/core/model/dto/CheckCardData;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/core/model/ResetShortCodeRespone$ResetShortCode;->checkCard:Lru/rocketbank/core/model/dto/CheckCardData;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/core/model/ResetShortCodeRespone$ResetShortCode;->token:Ljava/lang/String;

    return-object v0
.end method
