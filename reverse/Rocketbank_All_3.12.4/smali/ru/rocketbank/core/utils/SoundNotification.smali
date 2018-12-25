.class public final Lru/rocketbank/core/utils/SoundNotification;
.super Ljava/lang/Object;
.source "SoundNotification.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/utils/SoundNotification$NotificationSound;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSoundNotification.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SoundNotification.kt\nru/rocketbank/core/utils/SoundNotification\n*L\n1#1,196:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final GNOM:I = 0x3

.field public static final HUMAN:I = 0x2

.field public static final INSTANCE:Lru/rocketbank/core/utils/SoundNotification;

.field public static final LEJEBOKER:I = 0x4

.field public static final NOT_READY:I = -0x1

.field public static final ORC:I = 0x1

.field public static final RICKMORTY:I = 0x5

.field public static final SYSTEM:I = 0x0

.field public static final TYPE_BUY:I = 0x0

.field public static final TYPE_CASH:I = 0x1

.field public static final TYPE_COMISSION_MONTH:I = 0x2

.field public static final TYPE_COMISSION_TRANSFER:I = 0x3

.field public static final TYPE_DEPOSIT_OPEN:I = 0x4

.field public static final TYPE_FRIENDS_COME:I = 0x5

.field public static final TYPE_FRIENDS_TRANSFER:I = 0x6

.field public static final TYPE_MODE_ON:I = 0x7

.field public static final TYPE_PERCENT:I = 0x8

.field public static final TYPE_PLACES:I = 0x9

.field public static final TYPE_REFILL:I = 0xa

.field public static final TYPE_ROCKET_ROUBLE:I = 0xb

.field public static final TYPE_SUPPORT:I = 0xc

.field private static final cycles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static list:Landroid/util/SparseIntArray; = null

.field private static final notification$delegate:Lkotlin/Lazy;

.field private static final notifications:[Ljava/lang/Integer;

.field private static selectedModeStorage:I = 0x0

.field private static soundPoolInitialized:Landroid/media/SoundPool; = null

.field private static soundPoolType:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v3, Lru/rocketbank/core/utils/SoundNotification;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v3

    const-string v4, "notification"

    const-string v5, "getNotification()Ljava/util/Map;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lru/rocketbank/core/utils/SoundNotification;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 11
    new-instance v1, Lru/rocketbank/core/utils/SoundNotification;

    invoke-direct {v1}, Lru/rocketbank/core/utils/SoundNotification;-><init>()V

    sput-object v1, Lru/rocketbank/core/utils/SoundNotification;->INSTANCE:Lru/rocketbank/core/utils/SoundNotification;

    const/16 v1, 0xd

    .line 42
    new-array v2, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v4, 0x2

    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v5, 0x3

    .line 45
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v6, 0x4

    .line 46
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v7, 0x5

    .line 47
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v8, 0x6

    .line 48
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v9, 0x7

    .line 49
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v9

    const/16 v10, 0x8

    .line 50
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v2, v10

    const/16 v11, 0x9

    .line 51
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    const/16 v12, 0xa

    .line 52
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v2, v12

    const/16 v13, 0xb

    .line 53
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v13

    const/16 v14, 0xc

    .line 54
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v2, v14

    .line 42
    sput-object v2, Lru/rocketbank/core/utils/SoundNotification;->notifications:[Ljava/lang/Integer;

    .line 56
    sget-object v2, Lru/rocketbank/core/utils/SoundNotification$notification$2;->INSTANCE:Lru/rocketbank/core/utils/SoundNotification$notification$2;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v2}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    sput-object v2, Lru/rocketbank/core/utils/SoundNotification;->notification$delegate:Lkotlin/Lazy;

    .line 100
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v2, Lru/rocketbank/core/utils/SoundNotification;->list:Landroid/util/SparseIntArray;

    .line 102
    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v14

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lru/rocketbank/core/utils/SoundNotification;->cycles:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createSoundPool(I)Landroid/media/SoundPool;
    .locals 9

    .line 171
    sget-object v0, Lru/rocketbank/core/utils/SoundNotification;->list:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 172
    sget-object v0, Lru/rocketbank/core/utils/SoundNotification;->soundPoolInitialized:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 177
    :cond_1
    new-instance v0, Landroid/media/SoundPool;

    sget-object v1, Lru/rocketbank/core/utils/SoundNotification;->notifications:[Ljava/lang/Integer;

    const/4 v2, 0x0

    array-length v1, v1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Landroid/media/SoundPool;-><init>(III)V

    .line 179
    sget-object v1, Lru/rocketbank/core/utils/SoundNotification;->notifications:[Ljava/lang/Integer;

    .line 180
    invoke-static {}, Lru/rocketbank/core/BaseRocketApplication;->getContext()Lru/rocketbank/core/BaseRocketApplication;

    move-result-object v3

    .line 181
    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 182
    sget-object v6, Lru/rocketbank/core/utils/SoundNotification;->INSTANCE:Lru/rocketbank/core/utils/SoundNotification;

    invoke-virtual {v6}, Lru/rocketbank/core/utils/SoundNotification;->getNotification()Ljava/util/Map;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

    if-eqz v6, :cond_2

    .line 184
    invoke-virtual {p0, v5}, Lru/rocketbank/core/utils/SoundNotification;->getSound(I)I

    move-result v6

    .line 186
    :try_start_0
    move-object v7, v3

    check-cast v7, Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    .line 187
    sget-object v7, Lru/rocketbank/core/utils/SoundNotification;->list:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 189
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Problem with "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private final getSoundPool()Landroid/media/SoundPool;
    .locals 2

    .line 162
    invoke-virtual {p0}, Lru/rocketbank/core/utils/SoundNotification;->getSelectedMode()I

    move-result v0

    sget v1, Lru/rocketbank/core/utils/SoundNotification;->soundPoolType:I

    if-eq v0, v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lru/rocketbank/core/utils/SoundNotification;->getSelectedMode()I

    move-result v0

    invoke-direct {p0, v0}, Lru/rocketbank/core/utils/SoundNotification;->createSoundPool(I)Landroid/media/SoundPool;

    move-result-object v0

    sput-object v0, Lru/rocketbank/core/utils/SoundNotification;->soundPoolInitialized:Landroid/media/SoundPool;

    .line 164
    invoke-virtual {p0}, Lru/rocketbank/core/utils/SoundNotification;->getSelectedMode()I

    move-result v0

    sput v0, Lru/rocketbank/core/utils/SoundNotification;->soundPoolType:I

    .line 167
    :cond_0
    sget-object v0, Lru/rocketbank/core/utils/SoundNotification;->soundPoolInitialized:Landroid/media/SoundPool;

    return-object v0
.end method


# virtual methods
.method public final getNotification()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lru/rocketbank/core/utils/SoundNotification$NotificationSound;",
            ">;"
        }
    .end annotation

    sget-object v0, Lru/rocketbank/core/utils/SoundNotification;->notification$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final getNotifications()[Ljava/lang/Integer;
    .locals 1

    .line 42
    sget-object v0, Lru/rocketbank/core/utils/SoundNotification;->notifications:[Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSelectedMode()I
    .locals 1

    .line 40
    sget v0, Lru/rocketbank/core/utils/SoundNotification;->selectedModeStorage:I

    return v0
.end method

.method public final getSound(I)I
    .locals 1

    .line 110
    invoke-virtual {p0}, Lru/rocketbank/core/utils/SoundNotification;->getSelectedMode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lru/rocketbank/core/utils/SoundNotification;->getSound(II)I

    move-result p1

    return p1
.end method

.method public final getSound(II)I
    .locals 4

    .line 113
    invoke-virtual {p0}, Lru/rocketbank/core/utils/SoundNotification;->getNotification()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    return v1

    .line 125
    :pswitch_0
    invoke-virtual {v0}, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->getRickmorty()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 126
    invoke-virtual {v0}, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->getRickmorty()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lru/rocketbank/core/utils/SoundNotification;->cycles:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    rem-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "noty.rickmorty[cycles[type]++ % size]"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    .line 121
    :pswitch_1
    invoke-virtual {v0}, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->getLejeboker()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 122
    invoke-virtual {v0}, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->getLejeboker()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lru/rocketbank/core/utils/SoundNotification;->cycles:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    rem-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "noty.lejeboker[cycles[type]++ % size]"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    .line 119
    :pswitch_2
    invoke-virtual {v0}, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->getGnom()I

    move-result p1

    return p1

    .line 117
    :pswitch_3
    invoke-virtual {v0}, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->getHuman()I

    move-result p1

    return p1

    .line 118
    :pswitch_4
    invoke-virtual {v0}, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->getOrc()I

    move-result p1

    return p1

    :cond_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final playSoundNotification(I)V
    .locals 7

    .line 145
    invoke-direct {p0}, Lru/rocketbank/core/utils/SoundNotification;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    .line 146
    sget-object v1, Lru/rocketbank/core/utils/SoundNotification;->list:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 148
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void

    :cond_0
    return-void
.end method

.method public final recreate()V
    .locals 2

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    sget v0, Lru/rocketbank/core/utils/SoundNotification;->selectedModeStorage:I

    sget v1, Lru/rocketbank/core/utils/SoundNotification;->soundPoolType:I

    if-eq v0, v1, :cond_0

    .line 138
    sget-object v0, Lru/rocketbank/core/utils/SoundNotification;->INSTANCE:Lru/rocketbank/core/utils/SoundNotification;

    invoke-virtual {v0}, Lru/rocketbank/core/utils/SoundNotification;->getSelectedMode()I

    move-result v1

    invoke-direct {v0, v1}, Lru/rocketbank/core/utils/SoundNotification;->createSoundPool(I)Landroid/media/SoundPool;

    move-result-object v0

    sput-object v0, Lru/rocketbank/core/utils/SoundNotification;->soundPoolInitialized:Landroid/media/SoundPool;

    .line 139
    sget-object v0, Lru/rocketbank/core/utils/SoundNotification;->INSTANCE:Lru/rocketbank/core/utils/SoundNotification;

    invoke-virtual {v0}, Lru/rocketbank/core/utils/SoundNotification;->getSelectedMode()I

    move-result v0

    sput v0, Lru/rocketbank/core/utils/SoundNotification;->soundPoolType:I

    .line 141
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final resetCycles()V
    .locals 5

    .line 105
    sget-object v0, Lru/rocketbank/core/utils/SoundNotification;->cycles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 106
    sget-object v3, Lru/rocketbank/core/utils/SoundNotification;->cycles:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setSelectedMode(I)V
    .locals 0

    .line 38
    sput p1, Lru/rocketbank/core/utils/SoundNotification;->selectedModeStorage:I

    return-void
.end method
