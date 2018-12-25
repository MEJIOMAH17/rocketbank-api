.class Lme/philio/pinentry/PinEntryView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "PinEntryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/philio/pinentry/PinEntryView;
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
            "Lme/philio/pinentry/PinEntryView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field editTextValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 375
    new-instance v0, Lme/philio/pinentry/PinEntryView$SavedState$1;

    invoke-direct {v0}, Lme/philio/pinentry/PinEntryView$SavedState$1;-><init>()V

    sput-object v0, Lme/philio/pinentry/PinEntryView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 394
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lme/philio/pinentry/PinEntryView$SavedState;->editTextValue:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lme/philio/pinentry/PinEntryView$1;)V
    .locals 0

    .line 373
    invoke-direct {p0, p1}, Lme/philio/pinentry/PinEntryView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 390
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 400
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 401
    iget-object p2, p0, Lme/philio/pinentry/PinEntryView$SavedState;->editTextValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
