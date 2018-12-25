.class public final Lru/rocketbank/r2d2/widgets/OperationsUtils;
.super Ljava/lang/Object;
.source "OperationsUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperationsUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperationsUtils.kt\nru/rocketbank/r2d2/widgets/OperationsUtils\n*L\n1#1,55:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final INSTANCE:Lru/rocketbank/r2d2/widgets/OperationsUtils;

.field private static final STATUS_IN:I = 0x1b5

.field private static final STATUS_NONE:I = 0x0

.field private static final STATUS_OUT:I = 0x170

.field private static final colorDrawables:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Landroid/graphics/drawable/ColorDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final cropCircleTransformation$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/widgets/OperationsUtils;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "cropCircleTransformation"

    const-string v4, "getCropCircleTransformation()Ljp/wasabeef/glide/transformations/CropCircleTransformation;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/widgets/OperationsUtils;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 15
    new-instance v0, Lru/rocketbank/r2d2/widgets/OperationsUtils;

    invoke-direct {v0}, Lru/rocketbank/r2d2/widgets/OperationsUtils;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/widgets/OperationsUtils;->INSTANCE:Lru/rocketbank/r2d2/widgets/OperationsUtils;

    .line 16
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/widgets/OperationsUtils;->colorDrawables:Landroid/support/v4/util/SparseArrayCompat;

    .line 39
    sget-object v0, Lru/rocketbank/r2d2/widgets/OperationsUtils$cropCircleTransformation$2;->INSTANCE:Lru/rocketbank/r2d2/widgets/OperationsUtils$cropCircleTransformation$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lru/rocketbank/r2d2/widgets/OperationsUtils;->cropCircleTransformation$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final colorFromCurrency(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencyCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RUB"

    .line 30
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p2, 0x7f06022e

    .line 31
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const-string v0, "EUR"

    .line 32
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f060090

    .line 33
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_1
    const p2, 0x7f06024c

    .line 35
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public final getColorDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->Companion:Lru/rocketbank/r2d2/root/feed/FeedPresenter$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/FeedPresenter$Companion;->getColorDrawables()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 22
    sget-object v1, Lru/rocketbank/r2d2/root/feed/FeedPresenter;->Companion:Lru/rocketbank/r2d2/root/feed/FeedPresenter$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/feed/FeedPresenter$Companion;->getColorDrawables()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 25
    :cond_0
    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getColorDrawables()Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Landroid/graphics/drawable/ColorDrawable;",
            ">;"
        }
    .end annotation

    .line 16
    sget-object v0, Lru/rocketbank/r2d2/widgets/OperationsUtils;->colorDrawables:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method public final getCropCircleTransformation()Ljp/wasabeef/glide/transformations/CropCircleTransformation;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/widgets/OperationsUtils;->cropCircleTransformation$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    return-object v0
.end method

.method public final getSTATUS_IN()I
    .locals 1

    .line 53
    sget v0, Lru/rocketbank/r2d2/widgets/OperationsUtils;->STATUS_IN:I

    return v0
.end method

.method public final getSTATUS_NONE()I
    .locals 1

    .line 51
    sget v0, Lru/rocketbank/r2d2/widgets/OperationsUtils;->STATUS_NONE:I

    return v0
.end method

.method public final getSTATUS_OUT()I
    .locals 1

    .line 52
    sget v0, Lru/rocketbank/r2d2/widgets/OperationsUtils;->STATUS_OUT:I

    return v0
.end method

.method public final isIncoming(Lru/rocketbank/core/network/model/operation/FriendRequestType;)Z
    .locals 1

    const-string v0, "transferType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lru/rocketbank/core/network/model/operation/FriendRequestType;->ExternalIn:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    if-eq v0, p1, :cond_1

    sget-object v0, Lru/rocketbank/core/network/model/operation/FriendRequestType;->InternalIn:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final isOutgoing(Lru/rocketbank/core/network/model/operation/FriendRequestType;)Z
    .locals 1

    const-string v0, "transferType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lru/rocketbank/core/network/model/operation/FriendRequestType;->InternalOut:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    if-eq v0, p1, :cond_1

    sget-object v0, Lru/rocketbank/core/network/model/operation/FriendRequestType;->ExternalOut:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
