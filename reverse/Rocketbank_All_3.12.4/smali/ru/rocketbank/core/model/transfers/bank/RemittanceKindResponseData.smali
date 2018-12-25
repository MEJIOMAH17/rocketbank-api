.class public final Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;
.super Ljava/lang/Object;
.source "RemittanceKindResponseData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;,
        Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemittanceKindResponseData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemittanceKindResponseData.kt\nru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData\n*L\n1#1,35:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Companion;

.field public static final EXTRA_MATERIAL_ASSISTANCE:Ljava/lang/String; = "material_assistance"

.field public static final EXTRA_NEED_CARD_NUMBER:Ljava/lang/String; = "need_card_number"


# instance fields
.field private final errors:Ljava/lang/String;

.field private final extra:Ljava/lang/String;

.field private final kind:Ljava/lang/String;

.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->Companion:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "kind"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->errors:Ljava/lang/String;

    iput-object p2, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->kind:Ljava/lang/String;

    iput-object p3, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->message:Ljava/lang/String;

    iput-object p4, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->extra:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic copy$default(Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->errors:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->kind:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->message:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->extra:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->errors:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;
    .locals 1

    const-string v0, "kind"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;

    invoke-direct {v0, p1, p2, p3, p4}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;

    if-eqz v0, :cond_0

    check-cast p1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->errors:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->errors:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->kind:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->kind:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->message:Ljava/lang/String;

    iget-object v1, p1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->extra:Ljava/lang/String;

    iget-object p1, p1, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->extra:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getErrors()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->errors:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtra()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getRemittanceKind()Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;
    .locals 2

    .line 15
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->kind:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->valueOf(Ljava/lang/String;)Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 17
    :catch_0
    sget-object v0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;->unknown:Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData$Kind;

    :goto_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->errors:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->kind:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->message:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->extra:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemittanceKindResponseData(errors="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->errors:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->kind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/transfers/bank/RemittanceKindResponseData;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
