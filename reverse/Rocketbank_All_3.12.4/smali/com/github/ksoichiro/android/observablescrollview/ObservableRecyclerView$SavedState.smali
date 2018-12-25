.class Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;
.super Ljava/lang/Object;
.source "ObservableRecyclerView.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_STATE:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;


# instance fields
.field childrenHeights:Landroid/util/SparseIntArray;

.field prevFirstVisibleChildHeight:I

.field prevFirstVisiblePosition:I

.field prevScrollY:I

.field prevScrolledChildrenHeight:I

.field scrollY:I

.field superState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 354
    new-instance v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState$1;

    invoke-direct {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState$1;-><init>()V

    sput-object v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->EMPTY_STATE:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;

    .line 434
    new-instance v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState$2;

    invoke-direct {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState$2;-><init>()V

    sput-object v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 358
    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->prevFirstVisibleChildHeight:I

    const/4 v0, 0x0

    .line 371
    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->superState:Landroid/os/Parcelable;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 358
    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->prevFirstVisibleChildHeight:I

    .line 387
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    sget-object v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->EMPTY_STATE:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;

    :goto_0
    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->superState:Landroid/os/Parcelable;

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->prevFirstVisiblePosition:I

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->prevFirstVisibleChildHeight:I

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->prevScrolledChildrenHeight:I

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->prevScrollY:I

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->scrollY:I

    .line 395
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->childrenHeights:Landroid/util/SparseIntArray;

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 401
    iget-object v4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->childrenHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$1;)V
    .locals 0

    .line 353
    invoke-direct {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 358
    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->prevFirstVisibleChildHeight:I

    .line 378
    sget-object v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->EMPTY_STATE:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->superState:Landroid/os/Parcelable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$1;)V
    .locals 0

    .line 353
    invoke-direct {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSuperState()Landroid/os/Parcelable;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->superState:Landroid/os/Parcelable;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->superState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 415
    iget p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->prevFirstVisiblePosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->prevFirstVisibleChildHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    iget p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->prevScrolledChildrenHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    iget p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->prevScrollY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    iget p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->scrollY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    iget-object p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->childrenHeights:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->childrenHeights:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    .line 421
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-lez p2, :cond_1

    :goto_1
    if-ge v0, p2, :cond_1

    .line 424
    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->childrenHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->childrenHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
