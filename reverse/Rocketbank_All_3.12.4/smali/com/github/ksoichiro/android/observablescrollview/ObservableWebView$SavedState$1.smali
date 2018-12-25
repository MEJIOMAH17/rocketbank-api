.class final Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState$1;
.super Ljava/lang/Object;
.source "ObservableWebView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .line 2241
    new-instance v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState;-><init>(Landroid/os/Parcel;Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$1;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1246
    new-array p1, p1, [Lcom/github/ksoichiro/android/observablescrollview/ObservableWebView$SavedState;

    return-object p1
.end method
