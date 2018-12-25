.class public Lru/rocketbank/core/network/model/ProvidersResponse;
.super Ljava/lang/Object;
.source "ProvidersResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/model/ProvidersResponse$Category;
    }
.end annotation


# instance fields
.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/ProvidersResponse$Category;",
            ">;"
        }
    .end annotation
.end field

.field private providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/provider/Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mapProviderResponse(Lru/rocketbank/core/network/model/ProvidersResponse;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/network/model/ProvidersResponse;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/provider/Provider;",
            ">;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 28
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 29
    invoke-virtual {p0}, Lru/rocketbank/core/network/model/ProvidersResponse;->getCategories()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/network/model/ProvidersResponse$Category;

    .line 30
    invoke-virtual {v3}, Lru/rocketbank/core/network/model/ProvidersResponse$Category;->getId()I

    move-result v4

    invoke-virtual {v3}, Lru/rocketbank/core/network/model/ProvidersResponse$Category;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    invoke-virtual {v3}, Lru/rocketbank/core/network/model/ProvidersResponse$Category;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 34
    :cond_1
    iget-object p0, p0, Lru/rocketbank/core/network/model/ProvidersResponse;->providers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/model/provider/Provider;

    .line 35
    invoke-virtual {v2}, Lru/rocketbank/core/model/provider/Provider;->getCategory_ids()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 36
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 38
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 43
    :cond_4
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 44
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 46
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v1, Lru/rocketbank/core/network/model/ProvidersResponse$1;

    invoke-direct {v1}, Lru/rocketbank/core/network/model/ProvidersResponse$1;-><init>()V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    :cond_6
    return-object p0
.end method


# virtual methods
.method public filter(Ljava/lang/String;)Lru/rocketbank/core/network/model/ProvidersResponse;
    .locals 5

    .line 118
    new-instance v0, Lru/rocketbank/core/network/model/ProvidersResponse;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/ProvidersResponse;-><init>()V

    .line 119
    invoke-virtual {p0}, Lru/rocketbank/core/network/model/ProvidersResponse;->getCategories()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/network/model/ProvidersResponse;->setCategories(Ljava/util/List;)V

    if-eqz p1, :cond_2

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    iget-object v2, p0, Lru/rocketbank/core/network/model/ProvidersResponse;->providers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/model/provider/Provider;

    .line 126
    invoke-virtual {v3, p1}, Lru/rocketbank/core/model/provider/Provider;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_2
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object p1, p0, Lru/rocketbank/core/network/model/ProvidersResponse;->providers:Ljava/util/List;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 131
    :cond_3
    invoke-virtual {v0, v1}, Lru/rocketbank/core/network/model/ProvidersResponse;->setProviders(Ljava/util/List;)V

    return-object v0
.end method

.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/ProvidersResponse$Category;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lru/rocketbank/core/network/model/ProvidersResponse;->categories:Ljava/util/List;

    return-object v0
.end method

.method public getProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/provider/Provider;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lru/rocketbank/core/network/model/ProvidersResponse;->providers:Ljava/util/List;

    return-object v0
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/network/model/ProvidersResponse$Category;",
            ">;)V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lru/rocketbank/core/network/model/ProvidersResponse;->categories:Ljava/util/List;

    return-void
.end method

.method public setProviders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/provider/Provider;",
            ">;)V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lru/rocketbank/core/network/model/ProvidersResponse;->providers:Ljava/util/List;

    return-void
.end method
