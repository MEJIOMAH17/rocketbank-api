.class public final Lkotlin/coroutines/experimental/CombinedContext;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/CoroutineContext;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineContextImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContextImpl.kt\nkotlin/coroutines/experimental/CombinedContext\n*L\n1#1,100:1\n*E\n"
.end annotation


# instance fields
.field private final element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

.field private final left:Lkotlin/coroutines/experimental/CoroutineContext;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)V
    .locals 1

    const-string v0, "left"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    iput-object p2, p0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    return-void
.end method

.method private final size()I
    .locals 1

    .line 72
    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    instance-of v0, v0, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    check-cast v0, Lkotlin/coroutines/experimental/CombinedContext;

    invoke-direct {v0}, Lkotlin/coroutines/experimental/CombinedContext;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 91
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/experimental/CombinedContext;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_e

    instance-of v0, p1, Lkotlin/coroutines/experimental/CombinedContext;

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    check-cast p1, Lkotlin/coroutines/experimental/CombinedContext;

    .line 1072
    iget-object v0, p1, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    instance-of v0, v0, Lkotlin/coroutines/experimental/CombinedContext;

    const/4 v3, 0x2

    if-eqz v0, :cond_4

    iget-object v0, p1, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    check-cast v0, Lkotlin/coroutines/experimental/CombinedContext;

    .line 2072
    iget-object v4, v0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    instance-of v4, v4, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v4, :cond_3

    iget-object v0, v0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    check-cast v0, Lkotlin/coroutines/experimental/CombinedContext;

    .line 3072
    iget-object v4, v0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    instance-of v4, v4, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v4, :cond_2

    iget-object v0, v0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    check-cast v0, Lkotlin/coroutines/experimental/CombinedContext;

    .line 4072
    iget-object v4, v0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    instance-of v4, v4, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v4, :cond_1

    iget-object v0, v0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    check-cast v0, Lkotlin/coroutines/experimental/CombinedContext;

    .line 5072
    iget-object v4, v0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    instance-of v4, v4, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v4, :cond_0

    iget-object v0, v0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    check-cast v0, Lkotlin/coroutines/experimental/CombinedContext;

    invoke-direct {v0}, Lkotlin/coroutines/experimental/CombinedContext;->size()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    add-int/2addr v0, v1

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    add-int/2addr v0, v1

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    add-int/2addr v0, v1

    goto :goto_4

    :cond_4
    move v0, v3

    .line 6072
    :goto_4
    iget-object v4, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    instance-of v4, v4, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    check-cast v4, Lkotlin/coroutines/experimental/CombinedContext;

    .line 7072
    iget-object v5, v4, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    instance-of v5, v5, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v5, :cond_8

    iget-object v4, v4, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    check-cast v4, Lkotlin/coroutines/experimental/CombinedContext;

    .line 8072
    iget-object v5, v4, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    instance-of v5, v5, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v5, :cond_7

    iget-object v4, v4, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    check-cast v4, Lkotlin/coroutines/experimental/CombinedContext;

    .line 9072
    iget-object v5, v4, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    instance-of v5, v5, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v5, :cond_6

    iget-object v4, v4, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    check-cast v4, Lkotlin/coroutines/experimental/CombinedContext;

    .line 10072
    iget-object v5, v4, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    instance-of v5, v5, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v5, :cond_5

    iget-object v3, v4, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    check-cast v3, Lkotlin/coroutines/experimental/CombinedContext;

    invoke-direct {v3}, Lkotlin/coroutines/experimental/CombinedContext;->size()I

    move-result v3

    add-int/2addr v3, v1

    :cond_5
    add-int/2addr v3, v1

    :cond_6
    add-int/2addr v3, v1

    :cond_7
    add-int/2addr v3, v1

    :cond_8
    add-int/2addr v3, v1

    :cond_9
    if-ne v0, v3, :cond_d

    move-object v0, p0

    .line 10080
    :goto_5
    iget-object v3, v0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    .line 11075
    invoke-interface {v3}, Lkotlin/coroutines/experimental/CoroutineContext$Element;->getKey()Lkotlin/coroutines/experimental/CoroutineContext$Key;

    move-result-object v4

    invoke-virtual {p1, v4}, Lkotlin/coroutines/experimental/CombinedContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move p1, v2

    goto :goto_6

    .line 10081
    :cond_a
    iget-object v0, v0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    .line 10082
    instance-of v3, v0, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v3, :cond_b

    .line 10083
    check-cast v0, Lkotlin/coroutines/experimental/CombinedContext;

    goto :goto_5

    :cond_b
    if-nez v0, :cond_c

    .line 10085
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.experimental.CoroutineContext.Element"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext$Element;

    .line 12075
    invoke-interface {v0}, Lkotlin/coroutines/experimental/CoroutineContext$Element;->getKey()Lkotlin/coroutines/experimental/CoroutineContext$Key;

    move-result-object v3

    invoke-virtual {p1, v3}, Lkotlin/coroutines/experimental/CombinedContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_6
    if-eqz p1, :cond_d

    goto :goto_7

    :cond_d
    return v2

    :cond_e
    :goto_7
    return v1
.end method

.method public final fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-interface {v0, p1, p2}, Lkotlin/coroutines/experimental/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
            ">(",
            "Lkotlin/coroutines/experimental/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/experimental/CombinedContext;

    .line 48
    :goto_0
    iget-object v1, v0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-interface {v1, p1}, Lkotlin/coroutines/experimental/CoroutineContext$Element;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 49
    :cond_0
    iget-object v0, v0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    .line 50
    instance-of v1, v0, Lkotlin/coroutines/experimental/CombinedContext;

    if-eqz v1, :cond_1

    .line 51
    check-cast v0, Lkotlin/coroutines/experimental/CombinedContext;

    goto :goto_0

    .line 53
    :cond_1
    invoke-interface {v0, p1}, Lkotlin/coroutines/experimental/CoroutineContext;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 2

    .line 93
    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final minusKey(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/CoroutineContext$Key<",
            "*>;)",
            "Lkotlin/coroutines/experimental/CoroutineContext;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-interface {v0, p1}, Lkotlin/coroutines/experimental/CoroutineContext$Element;->get(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    return-object p1

    .line 63
    :cond_0
    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-interface {v0, p1}, Lkotlin/coroutines/experimental/CoroutineContext;->minusKey(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object p1

    .line 65
    iget-object v0, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    if-ne p1, v0, :cond_1

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/experimental/CoroutineContext;

    return-object p1

    .line 66
    :cond_1
    sget-object v0, Lkotlin/coroutines/experimental/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/experimental/EmptyCoroutineContext;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    check-cast p1, Lkotlin/coroutines/experimental/CoroutineContext;

    return-object p1

    .line 67
    :cond_2
    new-instance v0, Lkotlin/coroutines/experimental/CombinedContext;

    iget-object v1, p0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-direct {v0, p1, v1}, Lkotlin/coroutines/experimental/CombinedContext;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)V

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    sget-object v2, Lkotlin/coroutines/experimental/CombinedContext$toString$1;->INSTANCE:Lkotlin/coroutines/experimental/CombinedContext$toString$1;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const-string v3, "operation"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13059
    iget-object v3, p0, Lkotlin/coroutines/experimental/CombinedContext;->left:Lkotlin/coroutines/experimental/CoroutineContext;

    invoke-interface {v3, v1, v2}, Lkotlin/coroutines/experimental/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lkotlin/coroutines/experimental/CombinedContext;->element:Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-interface {v2, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 96
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
