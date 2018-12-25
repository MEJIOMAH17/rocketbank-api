.class public final Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SectionedRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;,
        Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$SectionViewHolder;
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
.field private mBaseAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mSectionResourceId:I

.field private mSections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;",
            ">;"
        }
    .end annotation
.end field

.field private mTextResourceId:I

.field private mValid:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mValid:Z

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mSections:Landroid/util/SparseArray;

    const v0, 0x7f0c010a

    .line 28
    iput v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mSectionResourceId:I

    const v0, 0x7f09038f

    .line 29
    iput v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mTextResourceId:I

    .line 30
    iput-object p1, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mBaseAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 32
    iget-object p1, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mBaseAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    new-instance v0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$1;-><init>(Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method static synthetic access$002(Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mValid:Z

    return p1
.end method

.method static synthetic access$100(Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 0

    .line 14
    iget-object p0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mBaseAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method private sectionedPositionToPosition(I)I
    .locals 3

    .line 3171
    iget-object v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    move v0, v1

    .line 161
    :goto_1
    iget-object v2, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 162
    iget-object v2, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;

    iget v2, v2, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;->sectionedPosition:I

    if-gt v2, p1, :cond_2

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public final getItemCount()I
    .locals 2

    .line 184
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mBaseAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    .line 4171
    iget-object v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x7fffffff

    .line 177
    iget-object v1, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mSections:Landroid/util/SparseArray;

    .line 178
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    sub-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mBaseAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 179
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->sectionedPositionToPosition(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 3

    .line 2171
    iget-object v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return v1

    .line 92
    :cond_1
    iget-object v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mBaseAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 94
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->sectionedPositionToPosition(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    add-int/2addr p1, v2

    return p1
.end method

.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1171
    iget-object v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 83
    check-cast p1, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$SectionViewHolder;

    iget-object p1, p1, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$SectionViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;

    iget-object p2, p2, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mBaseAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-direct {p0, p2}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->sectionedPositionToPosition(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    if-nez p2, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mSectionResourceId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 74
    new-instance p2, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$SectionViewHolder;

    iget v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mTextResourceId:I

    invoke-direct {p2, p1, v0}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$SectionViewHolder;-><init>(Landroid/view/View;I)V

    return-object p2

    .line 76
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mBaseAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final setSections([Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;)V
    .locals 6

    .line 119
    iget-object v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 121
    new-instance v0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$2;

    invoke-direct {v0, p0}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$2;-><init>(Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 131
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, p1, v0

    .line 132
    iget v4, v3, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;->firstPosition:I

    add-int/2addr v4, v2

    iput v4, v3, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;->sectionedPosition:I

    .line 133
    iget-object v4, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->mSections:Landroid/util/SparseArray;

    iget v5, v3, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;->sectionedPosition:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
