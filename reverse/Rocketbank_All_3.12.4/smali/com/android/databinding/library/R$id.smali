.class public final Lcom/android/databinding/library/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/databinding/library/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# instance fields
.field public final collectAnalytics:Z

.field public final collectLoggedException:Z

.field public final collectReports:Z

.field public final firebaseCrashlyticsEnabled:Z

.field public final promptEnabled:Z


# direct methods
.method public constructor <init>(ZZZZZ)V
    .locals 0

    .line 1031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    iput-boolean p1, p0, Lcom/android/databinding/library/R$id;->promptEnabled:Z

    .line 1033
    iput-boolean p2, p0, Lcom/android/databinding/library/R$id;->collectLoggedException:Z

    .line 1034
    iput-boolean p3, p0, Lcom/android/databinding/library/R$id;->collectReports:Z

    .line 1035
    iput-boolean p4, p0, Lcom/android/databinding/library/R$id;->collectAnalytics:Z

    .line 1036
    iput-boolean p5, p0, Lcom/android/databinding/library/R$id;->firebaseCrashlyticsEnabled:Z

    return-void
.end method
