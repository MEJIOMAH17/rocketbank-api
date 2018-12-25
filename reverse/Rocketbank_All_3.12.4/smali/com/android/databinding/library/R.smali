.class public final Lcom/android/databinding/library/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/databinding/library/R$id;
    }
.end annotation


# instance fields
.field public final updateSuspendDurationSeconds:I

.field public final updateUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    iput-object p1, p0, Lcom/android/databinding/library/R;->updateUrl:Ljava/lang/String;

    .line 1026
    iput p2, p0, Lcom/android/databinding/library/R;->updateSuspendDurationSeconds:I

    return-void
.end method
