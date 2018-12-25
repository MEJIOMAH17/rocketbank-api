.class public Landroid/databinding/ObservableArrayMap;
.super Landroid/support/v4/util/ArrayMap;
.source "ObservableArrayMap.java"

# interfaces
.implements Landroid/databinding/ObservableMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/util/ArrayMap<",
        "TK;TV;>;",
        "Landroid/databinding/ObservableMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private transient mListeners:Landroid/databinding/MapChangeRegistry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    return-void
.end method

.method private notifyChange(Ljava/lang/Object;)V
    .locals 2

    .line 103
    iget-object v0, p0, Landroid/databinding/ObservableArrayMap;->mListeners:Landroid/databinding/MapChangeRegistry;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Landroid/databinding/ObservableArrayMap;->mListeners:Landroid/databinding/MapChangeRegistry;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/databinding/MapChangeRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnMapChangedCallback(Landroid/databinding/ObservableMap$OnMapChangedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableMap$OnMapChangedCallback<",
            "+",
            "Landroid/databinding/ObservableMap<",
            "TK;TV;>;TK;TV;>;)V"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Landroid/databinding/ObservableArrayMap;->mListeners:Landroid/databinding/MapChangeRegistry;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Landroid/databinding/MapChangeRegistry;

    invoke-direct {v0}, Landroid/databinding/MapChangeRegistry;-><init>()V

    iput-object v0, p0, Landroid/databinding/ObservableArrayMap;->mListeners:Landroid/databinding/MapChangeRegistry;

    .line 32
    :cond_0
    iget-object v0, p0, Landroid/databinding/ObservableArrayMap;->mListeners:Landroid/databinding/MapChangeRegistry;

    invoke-virtual {v0, p1}, Landroid/databinding/MapChangeRegistry;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 45
    invoke-virtual {p0}, Landroid/databinding/ObservableArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-super {p0}, Landroid/support/v4/util/ArrayMap;->clear()V

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0}, Landroid/databinding/ObservableArrayMap;->notifyChange(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 53
    invoke-super {p0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-direct {p0, p1}, Landroid/databinding/ObservableArrayMap;->notifyChange(Ljava/lang/Object;)V

    return-object p2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 61
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 62
    invoke-virtual {p0, v1}, Landroid/databinding/ObservableArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p0, v1}, Landroid/databinding/ObservableArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1}, Landroid/databinding/ObservableArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 87
    invoke-super {p0, p1}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    invoke-direct {p0, v0}, Landroid/databinding/ObservableArrayMap;->notifyChange(Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public removeOnMapChangedCallback(Landroid/databinding/ObservableMap$OnMapChangedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableMap$OnMapChangedCallback<",
            "+",
            "Landroid/databinding/ObservableMap<",
            "TK;TV;>;TK;TV;>;)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Landroid/databinding/ObservableArrayMap;->mListeners:Landroid/databinding/MapChangeRegistry;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Landroid/databinding/ObservableArrayMap;->mListeners:Landroid/databinding/MapChangeRegistry;

    invoke-virtual {v0, p1}, Landroid/databinding/MapChangeRegistry;->remove(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Landroid/databinding/ObservableArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 75
    invoke-virtual {p0, v0}, Landroid/databinding/ObservableArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 76
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    invoke-virtual {p0, v0}, Landroid/databinding/ObservableArrayMap;->removeAt(I)Ljava/lang/Object;

    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 96
    invoke-virtual {p0, p1}, Landroid/databinding/ObservableArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 97
    invoke-super {p0, p1, p2}, Landroid/support/v4/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 98
    invoke-direct {p0, v0}, Landroid/databinding/ObservableArrayMap;->notifyChange(Ljava/lang/Object;)V

    return-object p1
.end method
