.class public abstract Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaseDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$OnLongClickListener;,
        Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$OnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDrawerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFooterDrawerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDrawerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$OnClickListener;

.field private mOnLongClickListener:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$OnLongClickListener;

.field private mTypeIds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeInstances:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private previousSelection:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mHeaderDrawerItems:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mDrawerItems:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mFooterDrawerItems:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mTypeIds:Ljava/util/LinkedList;

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mTypeInstances:Ljava/util/LinkedHashMap;

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->previousSelection:I

    return-void
.end method

.method static synthetic access$000(Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;)Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$OnClickListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mOnClickListener:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;)Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$OnLongClickListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mOnLongClickListener:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$OnLongClickListener;

    return-object p0
.end method

.method private mapPossibleType(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mTypeInstances:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mTypeIds:Ljava/util/LinkedList;

    invoke-interface {p1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mTypeInstances:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private mapPossibleTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 179
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    .line 180
    invoke-direct {p0, v0}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mapPossibleType(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final varargs addDrawerItems([Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mDrawerItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mDrawerItems:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 64
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mDrawerItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mapPossibleTypes(Ljava/util/List;)V

    .line 65
    array-length p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->notifyItemRangeInserted(II)V

    :cond_0
    return-void
.end method

.method public final varargs addHeaderDrawerItems([Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mHeaderDrawerItems:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 151
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->notifyItemRangeInserted(II)V

    .line 153
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mHeaderDrawerItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mapPossibleTypes(Ljava/util/List;)V

    return-void
.end method

.method public final getDrawerItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mDrawerItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getItem(I)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
    .locals 3

    if-ltz p1, :cond_9

    .line 311
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto/16 :goto_6

    .line 3349
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mHeaderDrawerItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mHeaderDrawerItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mHeaderDrawerItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    return-object p1

    .line 4349
    :cond_2
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mHeaderDrawerItems:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mHeaderDrawerItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4353
    :goto_1
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mDrawerItems:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mDrawerItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    if-ge p1, v0, :cond_6

    .line 318
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mDrawerItems:Ljava/util/ArrayList;

    .line 5349
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mHeaderDrawerItems:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mHeaderDrawerItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    sub-int/2addr p1, v1

    .line 318
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    return-object p1

    .line 320
    :cond_6
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mFooterDrawerItems:Ljava/util/ArrayList;

    .line 6349
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mHeaderDrawerItems:Ljava/util/ArrayList;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_4

    :cond_7
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mHeaderDrawerItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_4
    sub-int/2addr p1, v2

    .line 6353
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mDrawerItems:Ljava/util/ArrayList;

    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mDrawerItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_5
    sub-int/2addr p1, v1

    .line 320
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    return-object p1

    :cond_9
    :goto_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 3

    .line 7349
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mHeaderDrawerItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mHeaderDrawerItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 7353
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mDrawerItems:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mDrawerItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 7357
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mFooterDrawerItems:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mFooterDrawerItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 3

    .line 326
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->getItem(I)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    invoke-interface {v0}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->getIdentifier()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 328
    invoke-interface {v0}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->getIdentifier()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 330
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mTypeIds:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->getItem(I)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final handleSelection(Landroid/view/View;I)V
    .locals 3

    .line 267
    iget v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->previousSelection:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 268
    iget v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->previousSelection:I

    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->getItem(I)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    invoke-interface {v0, v1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->withSetSelected(Z)Ljava/lang/Object;

    .line 272
    :cond_0
    iget v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->previousSelection:I

    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_1
    move v0, v1

    .line 275
    :goto_0
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 276
    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->getItem(I)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 277
    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->getItem(I)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->withSetSelected(Z)Ljava/lang/Object;

    .line 278
    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ltz p2, :cond_5

    .line 286
    invoke-virtual {p0, p2}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->getItem(I)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 288
    invoke-interface {v0, v1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->withSetSelected(Z)Ljava/lang/Object;

    .line 290
    :cond_4
    invoke-virtual {p0, p2}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->notifyItemChanged(I)V

    if-eqz p1, :cond_5

    .line 293
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 297
    :cond_5
    iput p2, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->previousSelection:I

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 213
    invoke-virtual {p0, p2}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->getItem(I)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 215
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$1;-><init>(Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$2;-><init>(Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 203
    invoke-static {}, Lcom/mikepenz/materialdrawer/util/RecyclerViewCacheUtil;->getInstance()Lcom/mikepenz/materialdrawer/util/RecyclerViewCacheUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mTypeIds:Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/util/RecyclerViewCacheUtil;->obtain(Ljava/lang/String;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mTypeInstances:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mTypeIds:Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    invoke-interface {p2, p1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->getViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final setDrawerItem(ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mDrawerItems:Ljava/util/ArrayList;

    .line 2349
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mHeaderDrawerItems:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mHeaderDrawerItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    sub-int v1, p1, v1

    .line 83
    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-direct {p0, p2}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mapPossibleType(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final setDrawerItems(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mDrawerItems:Ljava/util/ArrayList;

    .line 56
    invoke-direct {p0, p1}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mapPossibleTypes(Ljava/util/List;)V

    .line 1349
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mHeaderDrawerItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mHeaderDrawerItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1353
    :goto_0
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mDrawerItems:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mDrawerItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 57
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final setOnClickListener(Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$OnClickListener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mOnClickListener:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$OnClickListener;

    return-void
.end method

.method public final setOnLongClickListener(Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$OnLongClickListener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter;->mOnLongClickListener:Lcom/mikepenz/materialdrawer/adapter/BaseDrawerAdapter$OnLongClickListener;

    return-void
.end method
