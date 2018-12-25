.class Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ObservableWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView;
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
            "Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field prevScrollY:I

.field scrollY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 237
    new-instance v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState$1;

    invoke-direct {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState$1;-><init>()V

    sput-object v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 225
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState;->prevScrollY:I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState;->scrollY:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$1;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 232
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 233
    iget p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState;->prevScrollY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget p2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState;->scrollY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
