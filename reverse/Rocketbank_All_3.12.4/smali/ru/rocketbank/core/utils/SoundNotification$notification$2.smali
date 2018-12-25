.class final Lru/rocketbank/core/utils/SoundNotification$notification$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SoundNotification.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/utils/SoundNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "+",
        "Lru/rocketbank/core/utils/SoundNotification$NotificationSound;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/core/utils/SoundNotification$notification$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/core/utils/SoundNotification$notification$2;

    invoke-direct {v0}, Lru/rocketbank/core/utils/SoundNotification$notification$2;-><init>()V

    sput-object v0, Lru/rocketbank/core/utils/SoundNotification$notification$2;->INSTANCE:Lru/rocketbank/core/utils/SoundNotification$notification$2;

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

    .line 11
    invoke-virtual {p0}, Lru/rocketbank/core/utils/SoundNotification$notification$2;->invoke()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lru/rocketbank/core/utils/SoundNotification$NotificationSound;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xd

    .line 57
    new-array v0, v0, [Lkotlin/Pair;

    .line 58
    new-instance v1, Lkotlin/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v11, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

    const/4 v12, 0x2

    new-array v4, v12, [Ljava/lang/Integer;

    const v5, 0x7f100017

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const v5, 0x7f100016

    .line 59
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v13, 0x1

    aput-object v5, v4, v13

    .line 58
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v14, 0x3

    .line 59
    new-array v4, v14, [Ljava/lang/Integer;

    const v5, 0x7f10001a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const v5, 0x7f10001b

    .line 60
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v13

    const v5, 0x7f100019

    .line 61
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    .line 59
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    const v5, 0x7f110425

    const v6, 0x7f100014

    const v7, 0x7f100015

    const v8, 0x7f100018

    move-object v4, v11

    .line 58
    invoke-direct/range {v4 .. v10}, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;-><init>(IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v1, v3, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v2

    .line 62
    new-instance v1, Lkotlin/Pair;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v11, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

    new-array v4, v12, [Ljava/lang/Integer;

    const v5, 0x7f10001f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const v5, 0x7f10001e

    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v13

    .line 62
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    .line 63
    new-array v4, v12, [Ljava/lang/Integer;

    const v5, 0x7f100022

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const v5, 0x7f100021

    .line 64
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v13

    .line 63
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    const v5, 0x7f110426

    const v6, 0x7f10001c

    const v7, 0x7f10001d

    const v8, 0x7f100020

    move-object v4, v11

    .line 62
    invoke-direct/range {v4 .. v10}, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;-><init>(IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v1, v3, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v13

    .line 65
    new-instance v1, Lkotlin/Pair;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v11, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

    new-array v4, v13, [Ljava/lang/Integer;

    const v5, 0x7f100025

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    new-array v4, v13, [Ljava/lang/Integer;

    const v5, 0x7f100027

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    const v5, 0x7f110427

    const v6, 0x7f100023

    const v7, 0x7f100024

    const v8, 0x7f100026

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;-><init>(IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v1, v3, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v12

    .line 66
    new-instance v1, Lkotlin/Pair;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v11, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

    new-array v4, v13, [Ljava/lang/Integer;

    const v5, 0x7f10002c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    new-array v4, v12, [Ljava/lang/Integer;

    const v5, 0x7f100029

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const v5, 0x7f100028

    .line 67
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v13

    .line 66
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    const v5, 0x7f110428

    const v6, 0x7f10002a

    const v7, 0x7f10002b

    const v8, 0x7f10002d

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;-><init>(IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v1, v3, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v14

    .line 68
    new-instance v1, Lkotlin/Pair;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v15, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

    new-array v5, v13, [Ljava/lang/Integer;

    const v6, 0x7f100031

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    new-array v5, v14, [Ljava/lang/Integer;

    const v6, 0x7f100034

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const v6, 0x7f100035

    .line 69
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    const v6, 0x7f100033

    .line 70
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    .line 68
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    const v6, 0x7f110429

    const v7, 0x7f10002f

    const v8, 0x7f100030

    const v9, 0x7f100032

    move-object v5, v15

    invoke-direct/range {v5 .. v11}, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;-><init>(IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v1, v4, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    .line 71
    new-instance v1, Lkotlin/Pair;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v15, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

    new-array v5, v13, [Ljava/lang/Integer;

    const v6, 0x7f100038

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    new-array v5, v12, [Ljava/lang/Integer;

    const v6, 0x7f10003b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const v6, 0x7f10003a

    .line 72
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    .line 71
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    const v6, 0x7f11042a

    const v7, 0x7f100036

    const v8, 0x7f100037

    const v9, 0x7f100039

    move-object v5, v15

    invoke-direct/range {v5 .. v11}, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;-><init>(IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v1, v4, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    .line 73
    new-instance v1, Lkotlin/Pair;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v15, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

    new-array v5, v14, [Ljava/lang/Integer;

    const v6, 0x7f10003f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const v6, 0x7f100040

    .line 74
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    const v6, 0x7f10003e

    .line 75
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    .line 73
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    .line 75
    new-array v5, v12, [Ljava/lang/Integer;

    const v6, 0x7f100043

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const v6, 0x7f100042

    .line 76
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    .line 75
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    const v6, 0x7f11042b

    const v7, 0x7f10003c

    const v8, 0x7f10003d

    const v9, 0x7f100041

    move-object v5, v15

    .line 73
    invoke-direct/range {v5 .. v11}, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;-><init>(IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v1, v4, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    .line 77
    new-instance v1, Lkotlin/Pair;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v15, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

    new-array v5, v13, [Ljava/lang/Integer;

    const v6, 0x7f100047

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    new-array v5, v14, [Ljava/lang/Integer;

    const v6, 0x7f10004a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const v6, 0x7f10004b

    .line 78
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    const v6, 0x7f100049

    .line 79
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    .line 77
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    const v6, 0x7f11042c

    const v7, 0x7f100045

    const v8, 0x7f100046

    const v9, 0x7f100048

    move-object v5, v15

    invoke-direct/range {v5 .. v11}, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;-><init>(IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v1, v4, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    .line 80
    new-instance v1, Lkotlin/Pair;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v15, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

    new-array v5, v12, [Ljava/lang/Integer;

    const v6, 0x7f100051

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const v6, 0x7f100050

    .line 81
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    .line 80
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    .line 81
    new-array v5, v12, [Ljava/lang/Integer;

    const v6, 0x7f100054

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const v6, 0x7f100053

    .line 82
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    .line 81
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    const v6, 0x7f11042d

    const v7, 0x7f10004e

    const v8, 0x7f10004f

    const v9, 0x7f100052

    move-object v5, v15

    .line 80
    invoke-direct/range {v5 .. v11}, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;-><init>(IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v1, v4, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    .line 83
    new-instance v1, Lkotlin/Pair;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v15, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

    new-array v5, v13, [Ljava/lang/Integer;

    const v6, 0x7f100057

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    new-array v5, v12, [Ljava/lang/Integer;

    const v6, 0x7f10005a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const v6, 0x7f100059

    .line 84
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    .line 83
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    const v6, 0x7f11042e

    const v7, 0x7f100055

    const v8, 0x7f100056

    const v9, 0x7f100058

    move-object v5, v15

    invoke-direct/range {v5 .. v11}, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;-><init>(IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v1, v4, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    .line 85
    new-instance v1, Lkotlin/Pair;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v15, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

    new-array v5, v12, [Ljava/lang/Integer;

    const v6, 0x7f10005e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const v6, 0x7f10005d

    .line 86
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    .line 85
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    .line 86
    new-array v5, v14, [Ljava/lang/Integer;

    const v6, 0x7f100061

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const v6, 0x7f100062

    .line 87
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    const v6, 0x7f100060

    .line 88
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    .line 86
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    const v6, 0x7f11042f

    const v7, 0x7f10005b

    const v8, 0x7f10005c

    const v9, 0x7f10005f

    move-object v5, v15

    .line 85
    invoke-direct/range {v5 .. v11}, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;-><init>(IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v1, v4, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    .line 89
    new-instance v1, Lkotlin/Pair;

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v15, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

    new-array v5, v12, [Ljava/lang/Integer;

    const v6, 0x7f100066

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const v6, 0x7f100065

    .line 90
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    .line 89
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    .line 90
    new-array v5, v14, [Ljava/lang/Integer;

    const v6, 0x7f100069

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const v6, 0x7f10006a

    .line 91
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    const v6, 0x7f100068

    .line 92
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    .line 90
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    const v6, 0x7f110430

    const v7, 0x7f100063

    const v8, 0x7f100064

    const v9, 0x7f100067

    move-object v5, v15

    .line 89
    invoke-direct/range {v5 .. v11}, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;-><init>(IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v1, v4, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    .line 93
    new-instance v1, Lkotlin/Pair;

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v14, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

    new-array v5, v12, [Ljava/lang/Integer;

    const v6, 0x7f100070

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const v6, 0x7f10006f

    .line 94
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    .line 93
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    .line 94
    new-array v5, v12, [Ljava/lang/Integer;

    const v6, 0x7f100073

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const v2, 0x7f100072

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v13

    .line 94
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    const v6, 0x7f110431

    const v7, 0x7f10006d

    const v8, 0x7f10006e

    const v9, 0x7f100071

    move-object v5, v14

    .line 93
    invoke-direct/range {v5 .. v11}, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;-><init>(IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v1, v4, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    .line 57
    invoke-static {v0}, Lkotlin/collections/AbstractList$Companion;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
