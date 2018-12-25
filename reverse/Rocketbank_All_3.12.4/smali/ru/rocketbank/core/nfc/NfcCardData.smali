.class public final Lru/rocketbank/core/nfc/NfcCardData;
.super Ljava/lang/Object;
.source "NfcCardData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/nfc/NfcCardData$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNfcCardData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NfcCardData.kt\nru/rocketbank/core/nfc/NfcCardData\n*L\n1#1,383:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/nfc/NfcCardData$Companion;

.field private static final TAG:Ljava/lang/String; = "NfcCardData"


# instance fields
.field private final isoDep:Landroid/nfc/tech/IsoDep;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/nfc/NfcCardData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/nfc/NfcCardData$Companion;-><init>(B)V

    sput-object v0, Lru/rocketbank/core/nfc/NfcCardData;->Companion:Lru/rocketbank/core/nfc/NfcCardData$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/nfc/tech/IsoDep;)V
    .locals 1

    const-string v0, "isoDep"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/nfc/NfcCardData;->isoDep:Landroid/nfc/tech/IsoDep;

    return-void
.end method

.method private static parseCardData(Lru/rocketbank/core/nfc/CardDataRaw;[B)V
    .locals 10

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 202
    array-length v2, p1

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    if-eqz v2, :cond_1

    return-void

    .line 206
    :cond_1
    aget-byte v2, p1, v0

    .line 207
    aget-byte v3, p1, v1

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_4

    const/16 v4, 0x5f

    if-eq v2, v4, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x24

    if-eq v3, v2, :cond_3

    :goto_2
    return-void

    :cond_3
    const/4 v2, 0x3

    .line 227
    aget-byte v2, p1, v2

    const/4 v3, 0x4

    .line 228
    aget-byte v3, p1, v3

    .line 230
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v4, "%02X"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lru/rocketbank/core/nfc/CardDataRaw;->setMonth(I)V

    .line 231
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v3, "%02X"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lru/rocketbank/core/nfc/CardDataRaw;->setYear(I)V

    .line 233
    new-instance v0, Lkotlin/ranges/IntRange;

    const/4 v1, 0x7

    array-length v2, p1

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object p1

    goto :goto_0

    .line 211
    :cond_4
    new-instance v2, Lkotlin/ranges/IntRange;

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x2

    invoke-direct {v2, v5, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {p1, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v2

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    array-length v5, v2

    move v6, v0

    :goto_3
    if-ge v6, v5, :cond_5

    aget-byte v7, v2, v6

    .line 215
    sget-object v8, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v8, "%02X"

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v9, v0

    invoke-static {v9, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "java.lang.String.format(format, *args)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 218
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/rocketbank/core/nfc/CardDataRaw;->setPan(Ljava/lang/String;)V

    .line 220
    new-instance v0, Lkotlin/ranges/IntRange;

    array-length v1, p1

    invoke-direct {v0, v3, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object p1

    goto/16 :goto_0
.end method

.method private static printHex([B)V
    .locals 8

    const-string v0, "byteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 375
    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, p0, v3

    .line 376
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v7, v1

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "java.lang.String.format(format, *args)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " "

    .line 377
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 380
    :cond_0
    sget-object p0, Lru/rocketbank/core/nfc/NfcCardData;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static readTrack1Data([BILru/rocketbank/core/nfc/CardDataRaw;)Z
    .locals 7

    add-int/lit8 v0, p1, 0x2

    .line 242
    aget-byte v1, p0, v0

    const/4 v2, 0x0

    const/16 v3, 0x42

    if-eq v1, v3, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 250
    aget-byte v3, p0, v0

    const/16 v4, 0x5e

    .line 251
    array-length v5, p0

    sub-int/2addr v5, v1

    if-ge v0, v5, :cond_1

    if-ne v3, v4, :cond_0

    :cond_1
    add-int/lit8 v3, v0, 0x1

    :cond_2
    add-int/2addr v3, v1

    .line 257
    aget-byte v5, p0, v3

    .line 258
    array-length v6, p0

    sub-int/2addr v6, v1

    if-ge v3, v6, :cond_3

    if-ne v5, v4, :cond_2

    .line 260
    :cond_3
    new-instance v4, Lkotlin/ranges/IntRange;

    add-int/lit8 p1, p1, 0x3

    sub-int/2addr v0, v1

    invoke-direct {v4, p1, v0}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {p0, v4}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object p1

    const-string v0, "ISO-8859-1"

    .line 261
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v4, "Charset.forName(\"ISO-8859-1\")"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2, v4}, Lru/rocketbank/core/nfc/CardDataRaw;->setPan(Ljava/lang/String;)V

    .line 262
    new-instance p1, Lkotlin/ranges/IntRange;

    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v3, v3, 0x5

    invoke-direct {p1, v0, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object p0

    const-string p1, "ISO-8859-1"

    .line 263
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    const-string v0, "Charset.forName(\"ISO-8859-1\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 p0, 0x2

    .line 265
    :try_start_0
    invoke-virtual {v0, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lru/rocketbank/core/nfc/CardDataRaw;->setYear(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x4

    .line 270
    :try_start_1
    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, p0}, Lru/rocketbank/core/nfc/CardDataRaw;->setMonth(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return v1
.end method

.method private final sendGetProcessingOptions([B)B
    .locals 6

    const/4 v0, 0x4

    .line 87
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 89
    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([B)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x69

    .line 90
    array-length v4, p1

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([B)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object p1

    .line 95
    invoke-static {p1}, Lru/rocketbank/core/nfc/NfcCardData;->printHex([B)V

    .line 96
    iget-object v1, p0, Lru/rocketbank/core/nfc/NfcCardData;->isoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v1, p1}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object p1

    const-string v1, "result"

    .line 97
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lru/rocketbank/core/nfc/NfcCardData;->printHex([B)V

    .line 99
    aget-byte v1, p1, v2

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    const/16 v2, 0x77

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    .line 136
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    move v3, v1

    .line 138
    :cond_1
    aget-byte v4, p1, v3

    add-int/2addr v3, v1

    const/16 v5, -0x6c

    if-eq v4, v5, :cond_2

    if-lt v3, v2, :cond_1

    :cond_2
    if-eq v3, v2, :cond_3

    add-int/2addr v3, v1

    .line 152
    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0xf8

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    return p1

    :cond_3
    const/16 p1, 0xc

    return p1

    nop

    :array_0
    .array-data 1
        -0x80t
        -0x58t
        0x0t
        0x0t
    .end array-data
.end method

.method private final sendReadRecords(BB)Lru/rocketbank/core/nfc/CardDataRaw;
    .locals 7

    .line 163
    sget-object v0, Lru/rocketbank/core/nfc/NfcCardData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send read record "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v2, "%02X"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v2, "%02X"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 164
    new-array v0, v0, [B

    aput-byte v6, v0, v6

    const/16 v1, -0x4e

    aput-byte v1, v0, v3

    const/4 v1, 0x2

    aput-byte p1, v0, v1

    const/4 p1, 0x3

    aput-byte p2, v0, p1

    const/4 p2, 0x4

    aput-byte v6, v0, p2

    .line 167
    invoke-static {v0}, Lru/rocketbank/core/nfc/NfcCardData;->printHex([B)V

    .line 168
    iget-object p2, p0, Lru/rocketbank/core/nfc/NfcCardData;->isoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {p2, v0}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object p2

    const-string v0, "result"

    .line 169
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lru/rocketbank/core/nfc/NfcCardData;->printHex([B)V

    .line 172
    aget-byte v0, p2, v6

    const/4 v2, 0x0

    const/16 v4, 0x69

    if-ne v0, v4, :cond_0

    return-object v2

    .line 176
    :cond_0
    aget-byte v0, p2, v6

    const/16 v4, 0x70

    if-eq v0, v4, :cond_1

    return-object v2

    .line 180
    :cond_1
    new-instance v0, Lru/rocketbank/core/nfc/CardDataRaw;

    invoke-direct {v0}, Lru/rocketbank/core/nfc/CardDataRaw;-><init>()V

    .line 181
    new-instance v4, Lkotlin/ranges/IntRange;

    array-length v5, p2

    invoke-direct {v4, v1, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {p2, v4}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lru/rocketbank/core/nfc/NfcCardData;->parseCardData(Lru/rocketbank/core/nfc/CardDataRaw;[B)V

    .line 183
    invoke-virtual {v0}, Lru/rocketbank/core/nfc/CardDataRaw;->getPan()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v3

    :cond_2
    add-int/2addr v1, v3

    .line 187
    aget-byte v4, p2, v1

    add-int/lit8 v5, v1, 0x2

    .line 188
    aget-byte v5, p2, v5

    .line 189
    array-length v6, p2

    sub-int/2addr v6, p1

    if-ge v1, v6, :cond_3

    const/16 v6, 0x56

    if-ne v4, v6, :cond_2

    const/16 v4, 0x42

    if-ne v5, v4, :cond_2

    .line 191
    :cond_3
    array-length v3, p2

    sub-int/2addr v3, p1

    if-ne v1, v3, :cond_4

    return-object v2

    .line 195
    :cond_4
    invoke-static {p2, v1, v0}, Lru/rocketbank/core/nfc/NfcCardData;->readTrack1Data([BILru/rocketbank/core/nfc/CardDataRaw;)Z

    :cond_5
    return-object v0
.end method


# virtual methods
.method public final readCard()Lru/rocketbank/core/nfc/CardDataRaw;
    .locals 13

    const/4 v0, 0x0

    .line 14
    :try_start_0
    iget-object v1, p0, Lru/rocketbank/core/nfc/NfcCardData;->isoDep:Landroid/nfc/tech/IsoDep;

    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    :try_start_1
    iget-object v2, p0, Lru/rocketbank/core/nfc/NfcCardData;->isoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v2}, Landroid/nfc/tech/IsoDep;->connect()V

    const/16 v2, 0x14

    .line 1287
    new-array v2, v2, [B

    fill-array-data v2, :array_0

    .line 1295
    iget-object v3, p0, Lru/rocketbank/core/nfc/NfcCardData;->isoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v3, v2}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    .line 1296
    array-length v6, v2

    if-nez v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    if-eqz v6, :cond_1

    goto/16 :goto_1

    .line 1300
    :cond_1
    invoke-static {v2}, Lru/rocketbank/core/nfc/NfcCardData;->printHex([B)V

    .line 1302
    aget-byte v6, v2, v4

    const/16 v7, 0x6f

    if-eq v6, v7, :cond_2

    .line 1303
    sget-object v2, Lru/rocketbank/core/nfc/NfcCardData;->TAG:Ljava/lang/String;

    const-string v6, "Not 0x6F"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    const/16 v6, 0x17

    .line 1335
    aget-byte v6, v2, v6

    const/16 v7, 0x61

    if-eq v6, v7, :cond_3

    .line 1337
    sget-object v2, Lru/rocketbank/core/nfc/NfcCardData;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Not 0x61 -> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v8, "%02X"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v9, v4

    invoke-static {v9, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "java.lang.String.format(format, *args)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    const/16 v6, 0x19

    .line 1341
    aget-byte v6, v2, v6

    const/16 v7, 0x4f

    if-eq v6, v7, :cond_4

    .line 1343
    sget-object v2, Lru/rocketbank/core/nfc/NfcCardData;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Not 0x4f -> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v8, "%02X"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v9, v4

    invoke-static {v9, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "java.lang.String.format(format, *args)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const/16 v6, 0x1a

    .line 1347
    aget-byte v6, v2, v6

    .line 1349
    sget-object v7, Lru/rocketbank/core/nfc/NfcCardData;->TAG:Ljava/lang/String;

    const-string v8, "Aid len = "

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    new-instance v7, Lkotlin/ranges/IntRange;

    const/16 v8, 0x1b

    add-int/2addr v6, v8

    add-int/lit8 v9, v6, -0x1

    invoke-direct {v7, v8, v9}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v2, v7}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v7

    .line 1353
    invoke-static {v7}, Lru/rocketbank/core/nfc/NfcCardData;->printHex([B)V

    .line 1356
    aget-byte v8, v2, v6

    const/16 v9, 0x50

    if-ne v8, v9, :cond_6

    add-int/lit8 v8, v6, 0x1

    .line 1358
    aget-byte v8, v2, v8

    add-int/2addr v6, v3

    .line 1361
    sget-object v9, Lru/rocketbank/core/nfc/NfcCardData;->TAG:Ljava/lang/String;

    const-string v10, "Label len = "

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    new-instance v9, Lkotlin/ranges/IntRange;

    add-int/2addr v8, v6

    sub-int/2addr v8, v5

    invoke-direct {v9, v6, v8}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v2, v9}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v2

    .line 1364
    invoke-static {v2}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([B)Ljava/util/List;

    move-result-object v2

    .line 1366
    sget-object v6, Lru/rocketbank/core/nfc/NfcCardData;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Got card label: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v2

    const-string v9, "ISO-8859-1"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    const-string v10, "Charset.forName(\"ISO-8859-1\")"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    :goto_1
    move-object v7, v0

    :cond_6
    :goto_2
    if-eqz v7, :cond_e

    const/4 v2, 0x4

    .line 2060
    new-array v6, v2, [B

    fill-array-data v6, :array_1

    .line 2061
    array-length v8, v7

    .line 2063
    invoke-static {v6}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([B)Ljava/util/List;

    move-result-object v6

    int-to-byte v8, v8

    .line 2064
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2065
    invoke-static {v7}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([B)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2066
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2068
    sget-object v7, Lru/rocketbank/core/nfc/NfcCardData;->TAG:Ljava/lang/String;

    const-string v8, "Selecting with aid"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    move-object v7, v6

    check-cast v7, Ljava/util/Collection;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v7

    invoke-static {v7}, Lru/rocketbank/core/nfc/NfcCardData;->printHex([B)V

    .line 2071
    iget-object v7, p0, Lru/rocketbank/core/nfc/NfcCardData;->isoDep:Landroid/nfc/tech/IsoDep;

    check-cast v6, Ljava/util/Collection;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object v6

    const-string v7, "result"

    .line 2072
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lru/rocketbank/core/nfc/NfcCardData;->printHex([B)V

    .line 2074
    new-instance v7, Lru/rocketbank/core/nfc/NfcCardSelectResponse;

    invoke-direct {v7}, Lru/rocketbank/core/nfc/NfcCardSelectResponse;-><init>()V

    .line 2075
    invoke-virtual {v7, v6}, Lru/rocketbank/core/nfc/NfcCardSelectResponse;->read([B)V

    .line 2077
    invoke-virtual {v7}, Lru/rocketbank/core/nfc/NfcCardSelectResponse;->getPdolTag()Lru/rocketbank/core/nfc/NfcPdolTag;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 3013
    invoke-virtual {v6}, Lru/rocketbank/core/nfc/NfcPdolTag;->pdolTags()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 3016
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/List;

    const/16 v8, -0x7d

    .line 3018
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3019
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    int-to-byte v8, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3020
    check-cast v6, Ljava/util/Collection;

    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3022
    check-cast v7, Ljava/util/Collection;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v6

    goto :goto_3

    .line 3025
    :cond_7
    new-array v6, v3, [B

    fill-array-data v6, :array_2

    goto :goto_3

    .line 2082
    :cond_8
    new-array v6, v3, [B

    fill-array-data v6, :array_3

    .line 19
    :goto_3
    invoke-direct {p0, v6}, Lru/rocketbank/core/nfc/NfcCardData;->sendGetProcessingOptions([B)B

    move-result v6

    .line 21
    sget-object v7, Lru/rocketbank/core/nfc/NfcCardData;->TAG:Ljava/lang/String;

    const-string v8, "Start read records"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-direct {p0, v4, v6}, Lru/rocketbank/core/nfc/NfcCardData;->sendReadRecords(BB)Lru/rocketbank/core/nfc/CardDataRaw;

    move-result-object v4

    .line 23
    invoke-direct {p0, v5, v6}, Lru/rocketbank/core/nfc/NfcCardData;->sendReadRecords(BB)Lru/rocketbank/core/nfc/CardDataRaw;

    move-result-object v5

    .line 24
    invoke-direct {p0, v3, v6}, Lru/rocketbank/core/nfc/NfcCardData;->sendReadRecords(BB)Lru/rocketbank/core/nfc/CardDataRaw;

    move-result-object v3

    const/4 v7, 0x3

    .line 25
    invoke-direct {p0, v7, v6}, Lru/rocketbank/core/nfc/NfcCardData;->sendReadRecords(BB)Lru/rocketbank/core/nfc/CardDataRaw;

    move-result-object v7

    .line 26
    invoke-direct {p0, v2, v6}, Lru/rocketbank/core/nfc/NfcCardData;->sendReadRecords(BB)Lru/rocketbank/core/nfc/CardDataRaw;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_9

    .line 29
    :try_start_2
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    :cond_9
    if-eqz v5, :cond_a

    .line 33
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v5

    :cond_a
    if-eqz v3, :cond_b

    .line 37
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v3

    :cond_b
    if-eqz v7, :cond_c

    .line 41
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v7

    :cond_c
    if-eqz v2, :cond_d

    .line 45
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    .line 48
    :cond_d
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    .line 50
    :cond_e
    :try_start_3
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :try_start_4
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catchall_0
    move-exception v2

    move-object v3, v0

    goto :goto_4

    :catch_0
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    :goto_4
    :try_start_6
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v1

    .line 53
    sget-object v2, Lru/rocketbank/core/nfc/NfcCardData;->TAG:Ljava/lang/String;

    const-string v3, "Ooops"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-object v0

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0xet
        0x32t
        0x50t
        0x41t
        0x59t
        0x2et
        0x53t
        0x59t
        0x53t
        0x2et
        0x44t
        0x44t
        0x46t
        0x30t
        0x31t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        -0x7dt
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x7dt
        0x0t
    .end array-data
.end method
