.class public final Lru/rocketbank/core/utils/SoundNotification$NotificationSound;
.super Ljava/lang/Object;
.source "SoundNotification.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/utils/SoundNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotificationSound"
.end annotation


# instance fields
.field private final gnom:I

.field private final human:I

.field private final lejeboker:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final name:I

.field private final orc:I

.field private final rickmorty:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lejeboker"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rickmorty"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->name:I

    iput p2, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->gnom:I

    iput p3, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->human:I

    iput p4, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->orc:I

    iput-object p5, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->lejeboker:Ljava/util/ArrayList;

    iput-object p6, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->rickmorty:Ljava/util/ArrayList;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/utils/SoundNotification$NotificationSound;IIIILjava/util/ArrayList;Ljava/util/ArrayList;ILjava/lang/Object;)Lru/rocketbank/core/utils/SoundNotification$NotificationSound;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->name:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->gnom:I

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->human:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->orc:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->lejeboker:Ljava/util/ArrayList;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->rickmorty:Ljava/util/ArrayList;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->copy(IIIILjava/util/ArrayList;Ljava/util/ArrayList;)Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->name:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->gnom:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->human:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->orc:I

    return v0
.end method

.method public final component5()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->lejeboker:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final component6()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->rickmorty:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final copy(IIIILjava/util/ArrayList;Ljava/util/ArrayList;)Lru/rocketbank/core/utils/SoundNotification$NotificationSound;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lru/rocketbank/core/utils/SoundNotification$NotificationSound;"
        }
    .end annotation

    const-string v0, "lejeboker"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rickmorty"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;-><init>(IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_5

    instance-of v1, p1, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;

    iget v1, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->name:I

    iget v3, p1, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->name:I

    if-ne v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_4

    iget v1, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->gnom:I

    iget v3, p1, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->gnom:I

    if-ne v1, v3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    iget v1, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->human:I

    iget v3, p1, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->human:I

    if-ne v1, v3, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v1, :cond_4

    iget v1, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->orc:I

    iget v3, p1, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->orc:I

    if-ne v1, v3, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-eqz v1, :cond_4

    iget-object v1, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->lejeboker:Ljava/util/ArrayList;

    iget-object v3, p1, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->lejeboker:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->rickmorty:Ljava/util/ArrayList;

    iget-object p1, p1, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->rickmorty:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    return v2

    :cond_5
    return v0
.end method

.method public final getGnom()I
    .locals 1

    .line 153
    iget v0, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->gnom:I

    return v0
.end method

.method public final getHuman()I
    .locals 1

    .line 154
    iget v0, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->human:I

    return v0
.end method

.method public final getLejeboker()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->lejeboker:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getName()I
    .locals 1

    .line 152
    iget v0, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->name:I

    return v0
.end method

.method public final getOrc()I
    .locals 1

    .line 155
    iget v0, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->orc:I

    return v0
.end method

.method public final getRickmorty()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->rickmorty:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->name:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->gnom:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->human:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->orc:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->lejeboker:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->rickmorty:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationSound(name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->name:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gnom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->gnom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", human="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->human:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", orc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->orc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lejeboker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->lejeboker:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rickmorty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/utils/SoundNotification$NotificationSound;->rickmorty:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
