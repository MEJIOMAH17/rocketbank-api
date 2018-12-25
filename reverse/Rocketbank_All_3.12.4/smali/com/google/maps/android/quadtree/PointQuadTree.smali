.class public final Lcom/google/maps/android/quadtree/PointQuadTree;
.super Ljava/lang/Object;
.source "PointQuadTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/maps/android/quadtree/PointQuadTree$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/maps/android/quadtree/PointQuadTree$Item;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/maps/android/quadtree/PointQuadTree<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mDepth:I

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 74
    new-instance v9, Landroid/support/v7/appcompat/R$bool;

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/support/v7/appcompat/R$bool;-><init>(DDDD)V

    invoke-direct {p0, v9}, Lcom/google/maps/android/quadtree/PointQuadTree;-><init>(Landroid/support/v7/appcompat/R$bool;)V

    return-void
.end method

.method private constructor <init>(DDDDI)V
    .locals 10

    .line 82
    new-instance v9, Landroid/support/v7/appcompat/R$bool;

    move-object v0, v9

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/support/v7/appcompat/R$bool;-><init>(DDDD)V

    move-object v0, p0

    move/from16 v1, p9

    invoke-direct {v0, v9, v1}, Lcom/google/maps/android/quadtree/PointQuadTree;-><init>(Landroid/support/v7/appcompat/R$bool;I)V

    return-void
.end method

.method private constructor <init>(Landroid/support/v7/appcompat/R$bool;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/google/maps/android/quadtree/PointQuadTree;-><init>(Landroid/support/v7/appcompat/R$bool;I)V

    return-void
.end method

.method private constructor <init>(Landroid/support/v7/appcompat/R$bool;I)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    .line 86
    iput-object p1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

    .line 87
    iput p2, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mDepth:I

    return-void
.end method

.method private insert(DDLcom/google/maps/android/quadtree/PointQuadTree$Item;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDTT;)V"
        }
    .end annotation

    move-object v0, p0

    .line 101
    :goto_0
    iget-object v1, v0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 102
    iget-object v1, v0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

    iget-wide v1, v1, Landroid/support/v7/appcompat/R$bool;->midY:D

    cmpg-double v3, p3, v1

    if-gez v3, :cond_1

    .line 103
    iget-object v1, v0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

    iget-wide v1, v1, Landroid/support/v7/appcompat/R$bool;->midX:D

    cmpg-double v3, p1, v1

    if-gez v3, :cond_0

    .line 104
    iget-object v0, v0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/quadtree/PointQuadTree;

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, v0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/quadtree/PointQuadTree;

    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, v0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

    iget-wide v1, v1, Landroid/support/v7/appcompat/R$bool;->midX:D

    cmpg-double v3, p1, v1

    if-gez v3, :cond_2

    .line 110
    iget-object v0, v0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/quadtree/PointQuadTree;

    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, v0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/quadtree/PointQuadTree;

    goto :goto_0

    .line 117
    :cond_3
    iget-object p1, v0, Lcom/google/maps/android/quadtree/PointQuadTree;->mItems:Ljava/util/List;

    if-nez p1, :cond_4

    .line 118
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lcom/google/maps/android/quadtree/PointQuadTree;->mItems:Ljava/util/List;

    .line 120
    :cond_4
    iget-object p1, v0, Lcom/google/maps/android/quadtree/PointQuadTree;->mItems:Ljava/util/List;

    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object p1, v0, Lcom/google/maps/android/quadtree/PointQuadTree;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x32

    if-le p1, p2, :cond_5

    iget p1, v0, Lcom/google/maps/android/quadtree/PointQuadTree;->mDepth:I

    const/16 p2, 0x28

    if-ge p1, p2, :cond_5

    .line 122
    invoke-direct {v0}, Lcom/google/maps/android/quadtree/PointQuadTree;->split()V

    :cond_5
    return-void
.end method

.method private search$670f335b(Landroid/support/v7/appcompat/R$bool;Ljava/util/Collection;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/appcompat/R$bool;",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

    .line 1055
    iget-wide v1, p1, Landroid/support/v7/appcompat/R$bool;->minX:D

    iget-wide v3, p1, Landroid/support/v7/appcompat/R$bool;->maxX:D

    iget-wide v5, p1, Landroid/support/v7/appcompat/R$bool;->minY:D

    iget-wide v7, p1, Landroid/support/v7/appcompat/R$bool;->maxY:D

    .line 2051
    iget-wide v9, v0, Landroid/support/v7/appcompat/R$bool;->maxX:D

    cmpg-double v11, v1, v9

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v11, :cond_0

    iget-wide v9, v0, Landroid/support/v7/appcompat/R$bool;->minX:D

    cmpg-double v11, v9, v3

    if-gez v11, :cond_0

    iget-wide v3, v0, Landroid/support/v7/appcompat/R$bool;->maxY:D

    cmpg-double v9, v5, v3

    if-gez v9, :cond_0

    iget-wide v3, v0, Landroid/support/v7/appcompat/R$bool;->minY:D

    cmpg-double v0, v3, v7

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/quadtree/PointQuadTree;

    .line 206
    invoke-direct {v1, p1, p2}, Lcom/google/maps/android/quadtree/PointQuadTree;->search$670f335b(Landroid/support/v7/appcompat/R$bool;Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    return-void

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mItems:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 209
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

    .line 2059
    iget-wide v3, v0, Landroid/support/v7/appcompat/R$bool;->minX:D

    iget-wide v5, p1, Landroid/support/v7/appcompat/R$bool;->minX:D

    cmpl-double v7, v3, v5

    if-ltz v7, :cond_4

    iget-wide v3, v0, Landroid/support/v7/appcompat/R$bool;->maxX:D

    iget-wide v5, p1, Landroid/support/v7/appcompat/R$bool;->maxX:D

    cmpg-double v7, v3, v5

    if-gtz v7, :cond_4

    iget-wide v3, v0, Landroid/support/v7/appcompat/R$bool;->minY:D

    iget-wide v5, p1, Landroid/support/v7/appcompat/R$bool;->minY:D

    cmpl-double v7, v3, v5

    if-ltz v7, :cond_4

    iget-wide v3, v0, Landroid/support/v7/appcompat/R$bool;->maxY:D

    iget-wide v5, p1, Landroid/support/v7/appcompat/R$bool;->maxY:D

    cmpg-double v0, v3, v5

    if-gtz v0, :cond_4

    move v1, v2

    :cond_4
    if-eqz v1, :cond_5

    .line 210
    iget-object p1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mItems:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 212
    :cond_5
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/quadtree/PointQuadTree$Item;

    .line 213
    invoke-interface {v1}, Lcom/google/maps/android/quadtree/PointQuadTree$Item;->getPoint$4cf92aad()Landroid/support/v7/appcompat/R$color;

    move-result-object v2

    .line 3047
    iget-wide v3, v2, Landroid/support/v7/appcompat/R$color;->x:D

    iget-wide v5, v2, Landroid/support/v7/appcompat/R$color;->y:D

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/support/v7/appcompat/R$bool;->contains(DD)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 214
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    return-void
.end method

.method private split()V
    .locals 12

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    .line 131
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    new-instance v11, Lcom/google/maps/android/quadtree/PointQuadTree;

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

    iget-wide v2, v1, Landroid/support/v7/appcompat/R$bool;->minX:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

    iget-wide v4, v1, Landroid/support/v7/appcompat/R$bool;->midX:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

    iget-wide v6, v1, Landroid/support/v7/appcompat/R$bool;->minY:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

    iget-wide v8, v1, Landroid/support/v7/appcompat/R$bool;->midY:D

    iget v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mDepth:I

    add-int/lit8 v10, v1, 0x1

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/google/maps/android/quadtree/PointQuadTree;-><init>(DDDDI)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    new-instance v11, Lcom/google/maps/android/quadtree/PointQuadTree;

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

    iget-wide v2, v1, Landroid/support/v7/appcompat/R$bool;->midX:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

    iget-wide v4, v1, Landroid/support/v7/appcompat/R$bool;->maxX:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

    iget-wide v6, v1, Landroid/support/v7/appcompat/R$bool;->minY:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

    iget-wide v8, v1, Landroid/support/v7/appcompat/R$bool;->midY:D

    iget v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mDepth:I

    add-int/lit8 v10, v1, 0x1

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/google/maps/android/quadtree/PointQuadTree;-><init>(DDDDI)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    new-instance v11, Lcom/google/maps/android/quadtree/PointQuadTree;

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

    iget-wide v2, v1, Landroid/support/v7/appcompat/R$bool;->minX:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

    iget-wide v4, v1, Landroid/support/v7/appcompat/R$bool;->midX:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

    iget-wide v6, v1, Landroid/support/v7/appcompat/R$bool;->midY:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

    iget-wide v8, v1, Landroid/support/v7/appcompat/R$bool;->maxY:D

    iget v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mDepth:I

    add-int/lit8 v10, v1, 0x1

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/google/maps/android/quadtree/PointQuadTree;-><init>(DDDDI)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    new-instance v11, Lcom/google/maps/android/quadtree/PointQuadTree;

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

    iget-wide v2, v1, Landroid/support/v7/appcompat/R$bool;->midX:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

    iget-wide v4, v1, Landroid/support/v7/appcompat/R$bool;->maxX:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

    iget-wide v6, v1, Landroid/support/v7/appcompat/R$bool;->midY:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

    iget-wide v8, v1, Landroid/support/v7/appcompat/R$bool;->maxY:D

    iget v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mDepth:I

    add-int/lit8 v10, v1, 0x1

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/google/maps/android/quadtree/PointQuadTree;-><init>(DDDDI)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    .line 137
    iput-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mItems:Ljava/util/List;

    .line 139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/maps/android/quadtree/PointQuadTree$Item;

    .line 141
    invoke-interface {v7}, Lcom/google/maps/android/quadtree/PointQuadTree$Item;->getPoint$4cf92aad()Landroid/support/v7/appcompat/R$color;

    move-result-object v1

    iget-wide v3, v1, Landroid/support/v7/appcompat/R$color;->x:D

    invoke-interface {v7}, Lcom/google/maps/android/quadtree/PointQuadTree$Item;->getPoint$4cf92aad()Landroid/support/v7/appcompat/R$color;

    move-result-object v1

    iget-wide v5, v1, Landroid/support/v7/appcompat/R$color;->y:D

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/maps/android/quadtree/PointQuadTree;->insert(DDLcom/google/maps/android/quadtree/PointQuadTree$Item;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final add(Lcom/google/maps/android/quadtree/PointQuadTree$Item;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 94
    invoke-interface {p1}, Lcom/google/maps/android/quadtree/PointQuadTree$Item;->getPoint$4cf92aad()Landroid/support/v7/appcompat/R$color;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds$6ccf0245:Landroid/support/v7/appcompat/R$bool;

    iget-wide v2, v0, Landroid/support/v7/appcompat/R$color;->x:D

    iget-wide v4, v0, Landroid/support/v7/appcompat/R$color;->y:D

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/v7/appcompat/R$bool;->contains(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-wide v3, v0, Landroid/support/v7/appcompat/R$color;->x:D

    iget-wide v5, v0, Landroid/support/v7/appcompat/R$color;->y:D

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/maps/android/quadtree/PointQuadTree;->insert(DDLcom/google/maps/android/quadtree/PointQuadTree$Item;)V

    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    .line 185
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public final search$1e128623(Landroid/support/v7/appcompat/R$bool;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/appcompat/R$bool;",
            ")",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    invoke-direct {p0, p1, v0}, Lcom/google/maps/android/quadtree/PointQuadTree;->search$670f335b(Landroid/support/v7/appcompat/R$bool;Ljava/util/Collection;)V

    return-object v0
.end method
