.class public final Lru/rocketbank/core/nfc/CardDataRaw;
.super Ljava/lang/Object;
.source "CardDataRaw.kt"


# instance fields
.field private month:I

.field private pan:Ljava/lang/String;

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMonth()I
    .locals 1

    .line 5
    iget v0, p0, Lru/rocketbank/core/nfc/CardDataRaw;->month:I

    return v0
.end method

.method public final getPan()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lru/rocketbank/core/nfc/CardDataRaw;->pan:Ljava/lang/String;

    return-object v0
.end method

.method public final getYear()I
    .locals 1

    .line 6
    iget v0, p0, Lru/rocketbank/core/nfc/CardDataRaw;->year:I

    return v0
.end method

.method public final setMonth(I)V
    .locals 0

    .line 5
    iput p1, p0, Lru/rocketbank/core/nfc/CardDataRaw;->month:I

    return-void
.end method

.method public final setPan(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lru/rocketbank/core/nfc/CardDataRaw;->pan:Ljava/lang/String;

    return-void
.end method

.method public final setYear(I)V
    .locals 0

    .line 6
    iput p1, p0, Lru/rocketbank/core/nfc/CardDataRaw;->year:I

    return-void
.end method
