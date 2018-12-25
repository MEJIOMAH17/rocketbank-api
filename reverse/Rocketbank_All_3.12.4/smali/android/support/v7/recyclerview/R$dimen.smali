.class public final Landroid/support/v7/recyclerview/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# instance fields
.field public final analyticsURL:Ljava/lang/String;

.field public final flushIntervalSeconds:I

.field public final flushOnBackground:Z

.field public final forwardToFirebaseAnalytics:Z

.field public final includePurchaseEventsInForwardedEvents:Z

.field public final maxByteSizePerFile:I

.field public final maxFileCountPerSend:I

.field public final maxPendingSendFileCount:I

.field public final samplingRate:I

.field public final trackCustomEvents:Z

.field public final trackPredefinedEvents:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIZZZZIZ)V
    .locals 0

    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    iput-object p1, p0, Landroid/support/v7/recyclerview/R$dimen;->analyticsURL:Ljava/lang/String;

    .line 1052
    iput p2, p0, Landroid/support/v7/recyclerview/R$dimen;->flushIntervalSeconds:I

    .line 1053
    iput p3, p0, Landroid/support/v7/recyclerview/R$dimen;->maxByteSizePerFile:I

    .line 1054
    iput p4, p0, Landroid/support/v7/recyclerview/R$dimen;->maxFileCountPerSend:I

    .line 1055
    iput p5, p0, Landroid/support/v7/recyclerview/R$dimen;->maxPendingSendFileCount:I

    .line 1056
    iput-boolean p6, p0, Landroid/support/v7/recyclerview/R$dimen;->forwardToFirebaseAnalytics:Z

    .line 1057
    iput-boolean p7, p0, Landroid/support/v7/recyclerview/R$dimen;->includePurchaseEventsInForwardedEvents:Z

    .line 1058
    iput-boolean p8, p0, Landroid/support/v7/recyclerview/R$dimen;->trackCustomEvents:Z

    .line 1059
    iput-boolean p9, p0, Landroid/support/v7/recyclerview/R$dimen;->trackPredefinedEvents:Z

    .line 1060
    iput p10, p0, Landroid/support/v7/recyclerview/R$dimen;->samplingRate:I

    .line 1061
    iput-boolean p11, p0, Landroid/support/v7/recyclerview/R$dimen;->flushOnBackground:Z

    return-void
.end method
