.class public final Lru/rocketbank/core/nfc/NfcCardSelectResponse;
.super Ljava/lang/Object;
.source "NfcCardSelectResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/nfc/NfcCardSelectResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNfcCardSelectResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NfcCardSelectResponse.kt\nru/rocketbank/core/nfc/NfcCardSelectResponse\n*L\n1#1,195:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/nfc/NfcCardSelectResponse$Companion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "NFCSelectResp"

.field private static final sourceCharset:Ljava/nio/charset/Charset;


# instance fields
.field private dfName:[B

.field private errorCode:I

.field private pdolTag:Lru/rocketbank/core/nfc/NfcPdolTag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/nfc/NfcCardSelectResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/nfc/NfcCardSelectResponse$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/nfc/NfcCardSelectResponse;->Companion:Lru/rocketbank/core/nfc/NfcCardSelectResponse$Companion;

    const-string v0, "ISO-8859-1"

    .line 193
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lru/rocketbank/core/nfc/NfcCardSelectResponse;->sourceCharset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final readTags(I[B)V
    .locals 10

    .line 85
    :cond_0
    aget-byte v0, p2, p1

    add-int/lit8 v1, p1, 0x1

    .line 86
    aget-byte v2, p2, v1

    .line 88
    sget-object v3, Lru/rocketbank/core/nfc/NfcCardSelectResponse;->TAG:Ljava/lang/String;

    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v4, "read %02X%02X"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "java.lang.String.format(format, *args)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0x41

    if-ne v0, v3, :cond_1

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    move v8, v9

    :cond_1
    const/4 v3, 0x3

    if-nez v8, :cond_9

    const/16 v4, -0x79

    const/4 v5, 0x0

    if-eq v0, v4, :cond_6

    const/16 v4, -0x61

    if-eq v0, v4, :cond_4

    const/16 v4, 0x42

    if-eq v0, v4, :cond_3

    const/16 v4, 0x5f

    if-eq v0, v4, :cond_2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 3114
    :pswitch_0
    aget-byte v1, p2, v1

    .line 3115
    new-instance v5, Lru/rocketbank/core/nfc/NfcTag;

    add-int/lit8 v2, v1, 0x2

    new-instance v4, Lkotlin/ranges/IntRange;

    add-int/lit8 v6, p1, 0x2

    add-int/2addr v1, p1

    sub-int/2addr v1, v9

    invoke-direct {v4, v6, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {p2, v4}, Lkotlin/collections/ArraysKt___ArraysKt;->slice([BLkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v1

    invoke-direct {v5, v0, v2, v1}, Lru/rocketbank/core/nfc/NfcTag;-><init>(II[B)V

    goto/16 :goto_0

    .line 3109
    :pswitch_1
    aget-byte v1, p2, v1

    .line 3110
    new-instance v5, Lru/rocketbank/core/nfc/NfcTag;

    add-int/lit8 v2, v1, 0x2

    new-instance v4, Lkotlin/ranges/IntRange;

    add-int/lit8 v6, p1, 0x2

    add-int/2addr v1, p1

    sub-int/2addr v1, v9

    invoke-direct {v4, v6, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {p2, v4}, Lkotlin/collections/ArraysKt___ArraysKt;->slice([BLkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v1

    invoke-direct {v5, v0, v2, v1}, Lru/rocketbank/core/nfc/NfcTag;-><init>(II[B)V

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x2d

    if-ne v2, v1, :cond_7

    .line 3120
    aget-byte v1, p2, v3

    .line 3121
    new-instance v5, Lru/rocketbank/core/nfc/NfcTag;

    add-int/lit8 v2, v1, 0x2

    new-instance v4, Lkotlin/ranges/IntRange;

    add-int/lit8 v6, p1, 0x2

    add-int/2addr v1, p1

    sub-int/2addr v1, v9

    invoke-direct {v4, v6, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {p2, v4}, Lkotlin/collections/ArraysKt___ArraysKt;->slice([BLkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v1

    invoke-direct {v5, v0, v2, v1}, Lru/rocketbank/core/nfc/NfcTag;-><init>(II[B)V

    goto :goto_0

    .line 3105
    :cond_3
    new-instance v5, Lru/rocketbank/core/nfc/NfcTag;

    new-instance v2, Lkotlin/ranges/IntRange;

    add-int/lit8 v4, p1, 0x4

    invoke-direct {v2, v1, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {p2, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->slice([BLkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v5, v0, v2, v1}, Lru/rocketbank/core/nfc/NfcTag;-><init>(II[B)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x38

    if-eq v2, v0, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v0, p1, 0x2

    .line 3151
    aget-byte v0, p2, v0

    .line 3152
    new-instance v1, Lkotlin/ranges/IntRange;

    add-int/lit8 v2, p1, 0x3

    add-int/2addr v0, v2

    sub-int/2addr v0, v9

    invoke-direct {v1, v2, v0}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {p2, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->slice([BLkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v0

    .line 3154
    new-instance v1, Lru/rocketbank/core/nfc/NfcPdolTag;

    invoke-direct {v1, v0}, Lru/rocketbank/core/nfc/NfcPdolTag;-><init>([B)V

    iput-object v1, p0, Lru/rocketbank/core/nfc/NfcCardSelectResponse;->pdolTag:Lru/rocketbank/core/nfc/NfcPdolTag;

    .line 3155
    iget-object v0, p0, Lru/rocketbank/core/nfc/NfcCardSelectResponse;->pdolTag:Lru/rocketbank/core/nfc/NfcPdolTag;

    move-object v5, v0

    check-cast v5, Lru/rocketbank/core/nfc/NfcTag;

    goto :goto_0

    .line 3126
    :cond_6
    new-instance v5, Lru/rocketbank/core/nfc/NfcTag;

    new-instance v2, Lkotlin/ranges/IntRange;

    add-int/lit8 v4, p1, 0x2

    invoke-direct {v2, v1, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {p2, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->slice([BLkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v1

    invoke-direct {v5, v0, v3, v1}, Lru/rocketbank/core/nfc/NfcTag;-><init>(II[B)V

    :cond_7
    :goto_0
    if-eqz v5, :cond_8

    .line 94
    invoke-virtual {v5}, Lru/rocketbank/core/nfc/NfcTag;->getSize()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_1

    :cond_8
    return-void

    .line 99
    :cond_9
    :goto_1
    array-length v0, p2

    sub-int/2addr v0, v3

    if-ge p1, v0, :cond_a

    if-eqz v8, :cond_0

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getPdolTag()Lru/rocketbank/core/nfc/NfcPdolTag;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/nfc/NfcCardSelectResponse;->pdolTag:Lru/rocketbank/core/nfc/NfcPdolTag;

    return-object v0
.end method

.method public final read([B)V
    .locals 8

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 12
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    .line 13
    aget-byte v3, p1, v2

    const/16 v4, 0x6f

    if-eq v1, v4, :cond_0

    .line 1187
    iput v1, p0, Lru/rocketbank/core/nfc/NfcCardSelectResponse;->errorCode:I

    .line 1188
    iget p1, p0, Lru/rocketbank/core/nfc/NfcCardSelectResponse;->errorCode:I

    add-int/lit8 v3, v3, 0x8

    shl-int/2addr p1, v3

    iput p1, p0, Lru/rocketbank/core/nfc/NfcCardSelectResponse;->errorCode:I

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 2171
    aget-byte v3, p1, v1

    const/16 v4, -0x7c

    const/4 v5, -0x1

    if-eq v3, v4, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    .line 2176
    aget-byte v3, p1, v3

    .line 2177
    new-instance v4, Lkotlin/ranges/IntRange;

    const/4 v6, 0x4

    add-int/2addr v3, v6

    add-int/lit8 v7, v3, -0x1

    invoke-direct {v4, v6, v7}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {p1, v4}, Lkotlin/collections/ArraysKt___ArraysKt;->slice([BLkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v4

    iput-object v4, p0, Lru/rocketbank/core/nfc/NfcCardSelectResponse;->dfName:[B

    :goto_0
    if-eq v3, v5, :cond_3

    .line 2065
    aget-byte v4, p1, v3

    const/16 v5, -0x5b

    if-eq v4, v5, :cond_2

    .line 2069
    sget-object p1, Lru/rocketbank/core/nfc/NfcCardSelectResponse;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "validate A5 != "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v3, "%02X"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v0

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    add-int/2addr v3, v1

    .line 2076
    invoke-direct {p0, v3, p1}, Lru/rocketbank/core/nfc/NfcCardSelectResponse;->readTags(I[B)V

    :cond_3
    return-void
.end method
