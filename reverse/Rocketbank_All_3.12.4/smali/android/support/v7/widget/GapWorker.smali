.class final Landroid/support/v7/widget/GapWorker;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;,
        Landroid/support/v7/widget/GapWorker$Task;
    }
.end annotation


# static fields
.field static final sGapWorker:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/support/v7/widget/GapWorker;",
            ">;"
        }
    .end annotation
.end field

.field static sTaskComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/support/v7/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFrameIntervalNs:J

.field mPostTimeNs:J

.field mRecyclerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    .line 187
    new-instance v0, Landroid/support/v7/widget/GapWorker$1;

    invoke-direct {v0}, Landroid/support/v7/widget/GapWorker$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    return-void
.end method

.method private buildTaskList()V
    .locals 12

    .line 214
    iget-object v0, p0, Landroid/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 217
    iget-object v4, p0, Landroid/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    .line 218
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 219
    iget-object v5, v4, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v5, v4, v1}, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Landroid/support/v7/widget/RecyclerView;Z)V

    .line 220
    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v4, v4, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v2, v1

    move v3, v2

    :goto_1
    if-ge v2, v0, :cond_6

    .line 228
    iget-object v4, p0, Landroid/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    .line 229
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v5

    if-nez v5, :cond_5

    .line 234
    iget-object v5, v4, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 235
    iget v6, v5, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, v5, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    .line 236
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    move v7, v3

    move v3, v1

    .line 237
    :goto_2
    iget v8, v5, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    const/4 v9, 0x1

    shl-int/2addr v8, v9

    if-ge v3, v8, :cond_4

    .line 239
    iget-object v8, p0, Landroid/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_2

    .line 240
    new-instance v8, Landroid/support/v7/widget/GapWorker$Task;

    invoke-direct {v8}, Landroid/support/v7/widget/GapWorker$Task;-><init>()V

    .line 241
    iget-object v10, p0, Landroid/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 243
    :cond_2
    iget-object v8, p0, Landroid/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/GapWorker$Task;

    .line 245
    :goto_3
    iget-object v10, v5, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    add-int/lit8 v11, v3, 0x1

    aget v10, v10, v11

    if-gt v10, v6, :cond_3

    goto :goto_4

    :cond_3
    move v9, v1

    .line 247
    :goto_4
    iput-boolean v9, v8, Landroid/support/v7/widget/GapWorker$Task;->immediate:Z

    .line 248
    iput v6, v8, Landroid/support/v7/widget/GapWorker$Task;->viewVelocity:I

    .line 249
    iput v10, v8, Landroid/support/v7/widget/GapWorker$Task;->distanceToItem:I

    .line 250
    iput-object v4, v8, Landroid/support/v7/widget/GapWorker$Task;->view:Landroid/support/v7/widget/RecyclerView;

    .line 251
    iget-object v9, v5, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v9, v9, v3

    iput v9, v8, Landroid/support/v7/widget/GapWorker$Task;->position:I

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    :cond_4
    move v3, v7

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 258
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    sget-object v1, Landroid/support/v7/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private flushTaskWithDeadline(Landroid/support/v7/widget/GapWorker$Task;J)V
    .locals 3

    .line 341
    iget-boolean v0, p1, Landroid/support/v7/widget/GapWorker$Task;->immediate:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    move-wide v0, p2

    .line 342
    :goto_0
    iget-object v2, p1, Landroid/support/v7/widget/GapWorker$Task;->view:Landroid/support/v7/widget/RecyclerView;

    iget p1, p1, Landroid/support/v7/widget/GapWorker$Task;->position:I

    invoke-direct {p0, v2, p1, v0, v1}, Landroid/support/v7/widget/GapWorker;->prefetchPositionWithDeadline(Landroid/support/v7/widget/RecyclerView;IJ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 344
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/GapWorker;->prefetchInnerRecyclerViewWithDeadline(Landroid/support/v7/widget/RecyclerView;J)V

    :cond_1
    return-void
.end method

.method private flushTasksWithDeadline(J)V
    .locals 3

    const/4 v0, 0x0

    .line 353
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 354
    iget-object v1, p0, Landroid/support/v7/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GapWorker$Task;

    .line 355
    iget-object v2, v1, Landroid/support/v7/widget/GapWorker$Task;->view:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 358
    invoke-direct {p0, v1, p1, p2}, Landroid/support/v7/widget/GapWorker;->flushTaskWithDeadline(Landroid/support/v7/widget/GapWorker$Task;J)V

    .line 359
    invoke-virtual {v1}, Landroid/support/v7/widget/GapWorker$Task;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static isPrefetchPositionAttached(Landroid/support/v7/widget/RecyclerView;I)Z
    .locals 5

    .line 262
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 264
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 265
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 267
    iget v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private prefetchInnerRecyclerViewWithDeadline(Landroid/support/v7/widget/RecyclerView;J)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 313
    :cond_0
    iget-boolean v0, p1, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    .line 314
    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->removeAndRecycleViews()V

    .line 321
    :cond_1
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    const/4 v1, 0x1

    .line 322
    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Landroid/support/v7/widget/RecyclerView;Z)V

    .line 324
    iget v2, v0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    if-eqz v2, :cond_6

    const/16 v2, 0x12

    :try_start_0
    const-string v3, "RV Nested Prefetch"

    .line 1044
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_2

    .line 1045
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 327
    :cond_2
    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, p1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$State;->prepareForNestedPrefetch(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const/4 v3, 0x0

    .line 328
    :goto_0
    iget v4, v0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    shl-int/2addr v4, v1

    if-ge v3, v4, :cond_3

    .line 331
    iget-object v4, v0, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v4, v4, v3

    .line 332
    invoke-direct {p0, p1, v4, p2, p3}, Landroid/support/v7/widget/GapWorker;->prefetchPositionWithDeadline(Landroid/support/v7/widget/RecyclerView;IJ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 1057
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_4

    .line 1058
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 2057
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v2, :cond_5

    .line 2058
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 335
    :cond_5
    throw p1

    :cond_6
    return-void
.end method

.method private prefetchPositionWithDeadline(Landroid/support/v7/widget/RecyclerView;IJ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 276
    invoke-static {p1, p2}, Landroid/support/v7/widget/GapWorker;->isPrefetchPositionAttached(Landroid/support/v7/widget/RecyclerView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 281
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    const/4 v1, 0x0

    .line 284
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 285
    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/support/v7/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 289
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result p3

    if-nez p3, :cond_1

    .line 292
    iget-object p3, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {v0, p2, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    throw p2
.end method


# virtual methods
.method public final add(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 160
    iget-object v0, p0, Landroid/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final postFromTraversal(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 5

    .line 174
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-wide v0, p0, Landroid/support/v7/widget/GapWorker;->mPostTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 179
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/widget/GapWorker;->mPostTimeNs:J

    .line 180
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 184
    :cond_0
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->setPrefetchVector(II)V

    return-void
.end method

.method final prefetch(J)V
    .locals 0

    .line 364
    invoke-direct {p0}, Landroid/support/v7/widget/GapWorker;->buildTaskList()V

    .line 365
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GapWorker;->flushTasksWithDeadline(J)V

    return-void
.end method

.method public final remove(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 164
    iget-object v0, p0, Landroid/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final run()V
    .locals 9

    const/16 v0, 0x12

    const-wide/16 v1, 0x0

    :try_start_0
    const-string v3, "RV Prefetch"

    .line 3044
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v0, :cond_0

    .line 3045
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 373
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 400
    iput-wide v1, p0, Landroid/support/v7/widget/GapWorker;->mPostTimeNs:J

    .line 3057
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_1

    .line 3058
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_1
    return-void

    .line 380
    :cond_2
    :try_start_1
    iget-object v3, p0, Landroid/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move-wide v5, v1

    :goto_0
    if-ge v4, v3, :cond_4

    .line 383
    iget-object v7, p0, Landroid/support/v7/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView;

    .line 384
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v8

    if-nez v8, :cond_3

    .line 385
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    cmp-long v3, v5, v1

    if-nez v3, :cond_6

    .line 400
    iput-wide v1, p0, Landroid/support/v7/widget/GapWorker;->mPostTimeNs:J

    .line 4057
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_5

    .line 4058
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_5
    return-void

    .line 394
    :cond_6
    :try_start_2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    iget-wide v5, p0, Landroid/support/v7/widget/GapWorker;->mFrameIntervalNs:J

    add-long v7, v3, v5

    .line 396
    invoke-virtual {p0, v7, v8}, Landroid/support/v7/widget/GapWorker;->prefetch(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    iput-wide v1, p0, Landroid/support/v7/widget/GapWorker;->mPostTimeNs:J

    .line 5057
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_7

    .line 5058
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_7
    return-void

    :catchall_0
    move-exception v3

    .line 400
    iput-wide v1, p0, Landroid/support/v7/widget/GapWorker;->mPostTimeNs:J

    .line 6057
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_8

    .line 6058
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 401
    :cond_8
    throw v3
.end method
