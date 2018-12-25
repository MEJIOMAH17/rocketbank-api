.class Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ObservableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;
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
            "Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field childrenHeights:Landroid/util/SparseIntArray;

.field prevFirstVisibleChildHeight:I

.field prevFirstVisiblePosition:I

.field prevScrollY:I

.field prevScrolledChildrenHeight:I

.field scrollY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 373
    new-instance v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState$1;

    invoke-direct {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState$1;-><init>()V

    sput-object v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 338
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    .line 321
    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->prevFirstVisibleChildHeight:I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->prevFirstVisiblePosition:I

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->prevFirstVisibleChildHeight:I

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->prevScrolledChildrenHeight:I

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->prevScrollY:I

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->scrollY:I

    .line 344
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->childrenHeights:Landroid/util/SparseIntArray;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 350
    iget-object v4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->childrenHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$1;)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 331
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, -0x1

    .line 321
    iput p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->prevFirstVisibleChildHeight:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 357
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 358
    iget p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->prevFirstVisiblePosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->prevFirstVisibleChildHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->prevScrolledChildrenHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->prevScrollY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->scrollY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget-object p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->childrenHeights:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->childrenHeights:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    .line 364
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-lez p2, :cond_1

    :goto_1
    if-ge v0, p2, :cond_1

    .line 367
    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->childrenHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget-object v1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->childrenHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
