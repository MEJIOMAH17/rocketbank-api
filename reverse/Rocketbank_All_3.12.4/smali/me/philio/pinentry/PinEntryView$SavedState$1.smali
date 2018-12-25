.class final Lme/philio/pinentry/PinEntryView$SavedState$1;
.super Ljava/lang/Object;
.source "PinEntryView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/philio/pinentry/PinEntryView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lme/philio/pinentry/PinEntryView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .line 2379
    new-instance v0, Lme/philio/pinentry/PinEntryView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lme/philio/pinentry/PinEntryView$SavedState;-><init>(Landroid/os/Parcel;Lme/philio/pinentry/PinEntryView$1;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1384
    new-array p1, p1, [Lme/philio/pinentry/PinEntryView$SavedState;

    return-object p1
.end method
